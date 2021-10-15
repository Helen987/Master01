USE [BI_DW]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[SP_START_SSAS_PROCESSING]
 (@ssasDatabaseName NVARCHAR(20),
  @maxWaitMinute INT = 3600)
AS
BEGIN
    BEGIN TRY
        DECLARE @currentStatus NVARCHAR(20) = N''
              , @currentDbProcessingCount INT = 0;

        DECLARE @startTime DATETIME = GETDATE();

        DECLARE @updflg BIT = 0;

        DECLARE @errorMessage NVARCHAR(200) = N'';

        DECLARE @toUpdStatus NVARCHAR(20) = N''
              , @toUpdDbProcessingCount INT = 0;
        
        WHILE @currentStatus = N'02_Synchronizing' OR @currentStatus = N''
        BEGIN
            BEGIN TRAN
                IF DATEDIFF(minute, @startTime, GETDATE()) >= @maxWaitMinute
                    BEGIN
                        SET @errorMessage = CONVERT(NVARCHAR(200), @maxWaitMinute) + N'����SSAS����������Ԃ���������Ȃ��������ߏ����𒆎~���܂��B';
                        THROW 50000, @errorMessage , 1;
                    END

                SELECT @currentStatus = T.[STATUS]
                     , @currentDbProcessingCount = T.[DB_PROCESSING_COUNT]
                  FROM [dbo].[Z_SSAS_SYNC_EXCLUSION_CONTROL] T WITH(UPDLOCK)
                 WHERE T.[DB_NAME] = @ssasDatabaseName;

                IF @currentStatus = N'02_Synchronizing' AND @currentDbProcessingCount = 0
                    BEGIN
                        SET @updflg = 0;
                    END
                ELSE IF @currentStatus = N'00_None' AND @currentDbProcessingCount = 0
                    BEGIN
                        SET @updflg = 1;
                        SET @toUpdStatus = N'01_Processing';
                        SET @toUpdDbProcessingCount = 1;
                    END
                ELSE IF @currentStatus = N'01_Processing' AND @currentDbProcessingCount != 0
                    BEGIN
                        SET @updflg = 1;
                        SET @toUpdStatus = N'01_Processing';
                        SET @toUpdDbProcessingCount = @currentDbProcessingCount + 1;                    
                    END
                ELSE IF @currentStatus = N'99_SyncError'
                    BEGIN
                        SET @updflg = 1;
                        SET @toUpdStatus = N'99_SyncError';
                        SET @toUpdDbProcessingCount = @currentDbProcessingCount + 1;                    
                    END
                ELSE IF (@currentStatus = N'01_Processing' AND @currentDbProcessingCount = 0)
                     OR (@currentStatus != N'01_Processing' AND @currentDbProcessingCount != 0)
                    BEGIN
                        SET @errorMessage = CONVERT(NVARCHAR(200), @maxWaitMinute) + N'Z_SSAS_SYNC_EXCLUSION_CONTROL�e�[�u���̃X�e�[�^�X�ƍX�V�������ɕs�����������Ă��܂��B�C�����Ă��������BDATABASE:' + @ssasDatabaseName + N'STATUS:' + @currentStatus + N' �X�V������:' + CONVERT(NVARCHAR(200), @currentDbProcessingCount);
                        THROW 50000, @errorMessage, 1;
                    END
                ELSE
                    BEGIN
                        SET @errorMessage = N'Z_SSAS_SYNC_EXCLUSION_CONTROL�e�[�u���ɊY���f�[�^�x�[�X�̃��R�[�h�����݂��Ȃ����A�X�e�[�^�X�̐ݒ�l���s���ł��B�f�[�^���C�����Ă��������B�X�e�[�^�X�̐ݒ�l��00_None/01_Processing/02_Synchronizing�̂����ꂩ�ł��BDATABASE:' + @ssasDatabaseName + N' STATUS:' + @currentStatus + N' �X�V������:' + CONVERT(NVARCHAR(200), @currentDbProcessingCount);
                        THROW 50000, @errorMessage, 1;
                    END

                IF @updflg = 1
                BEGIN
                    UPDATE [dbo].[Z_SSAS_SYNC_EXCLUSION_CONTROL]
                       SET [STATUS] = @toUpdStatus
                         , [DB_PROCESSING_COUNT] = @toUpdDbProcessingCount
                         , [LAST_UPDATED_TIME] = GETDATE()
                     WHERE [DB_NAME] = @ssasDatabaseName;
                END
            COMMIT
            IF @updflg = 0
                BEGIN
                    WAITFOR DELAY '00:03:00';
                END
        END
    END TRY
    BEGIN CATCH
        ROLLBACK;
        THROW;
    END CATCH
    
END

GO
