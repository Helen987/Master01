USE [BI_DW]
GO

/****** Object:  StoredProcedure [dbo].[SP_END_SSAS_PROCESSING]    Script Date: 2019/02/04 11:31:45 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[SP_END_SSAS_PROCESSING]
 (@ssasDatabaseName NVARCHAR(20))
AS
BEGIN
    BEGIN TRY
        DECLARE @currentStatus NVARCHAR(20) = N''
              , @currentDbProcessingCount INT = 0;

        DECLARE @errorMessage NVARCHAR(200) = N'';

        DECLARE @toUpdStatus NVARCHAR(20) = N''
              , @toUpdDbProcessingCount INT = 0;
        
        BEGIN
            BEGIN TRAN
                SELECT @currentStatus = T.[STATUS]
                     , @currentDbProcessingCount = T.[DB_PROCESSING_COUNT]
                  FROM [dbo].[Z_SSAS_SYNC_EXCLUSION_CONTROL] T WITH(UPDLOCK)
                 WHERE T.[DB_NAME] = @ssasDatabaseName;

                IF @currentStatus != N'01_Processing' AND  @currentStatus != N'' AND  @currentStatus != N'99_SyncError'
                    BEGIN
                        SET @errorMessage = N'Z_SSAS_SYNC_EXCLUSION_CONTROLテーブルのステータスが不正です。DATABASE:' + @ssasDatabaseName + N'STATUS:' + @currentStatus + N' 実行更新の数:' + CONVERT(NVARCHAR(200), @currentDbProcessingCount);
                        THROW 50000, @errorMessage, 1;                   
                    END
                ELSE IF @currentDbProcessingCount = 0 AND @currentStatus = N'01_Processing'
                    BEGIN
                        SET @errorMessage = N'Z_SSAS_SYNC_EXCLUSION_CONTROLテーブルの実行更新の数が不正です。DATABASE:' + @ssasDatabaseName + N'STATUS:' + @currentStatus + N' 実行更新の数:' + CONVERT(NVARCHAR(200), @currentDbProcessingCount);
                        THROW 50000, @errorMessage, 1;  
                    END
                ELSE IF @currentStatus = N'01_Processing' AND @currentDbProcessingCount >= 2
                    BEGIN
                        SET @toUpdStatus = N'01_Processing';
                        SET @toUpdDbProcessingCount = @currentDbProcessingCount - 1; 
                    END
                ELSE IF @currentStatus = N'01_Processing' AND @currentDbProcessingCount = 1
                    BEGIN
                        SET @toUpdStatus = N'00_None';
                        SET @toUpdDbProcessingCount = 0;
                    END
                ELSE IF @currentStatus = N'99_SyncError' AND @currentDbProcessingCount >= 2
                    BEGIN
                        SET @toUpdStatus = N'99_SyncError';
                        SET @toUpdDbProcessingCount = @currentDbProcessingCount - 1; 
                    END
                ELSE IF @currentStatus = N'99_SyncError' AND @currentDbProcessingCount = 1
                    BEGIN
                        SET @toUpdStatus = N'99_SyncError';
                        SET @toUpdDbProcessingCount = 0;
                    END
                ELSE
                    BEGIN
                        SET @errorMessage = N'Z_SSAS_SYNC_EXCLUSION_CONTROLテーブルに該当データベースのレコードが存在しないか、ステータスの設定値が不正です。データを修正してください。ステータスの設定値は00_None/01_Processing/02_Synchronizingのいずれかです。DATABASE:' + @ssasDatabaseName + N' STATUS:' + @currentStatus + N' 更新処理数:' + CONVERT(NVARCHAR(200), @currentDbProcessingCount);
                        THROW 50000, @errorMessage, 1;
                    END

                BEGIN
                    UPDATE [dbo].[Z_SSAS_SYNC_EXCLUSION_CONTROL]
                       SET [STATUS] = @toUpdStatus
                         , [DB_PROCESSING_COUNT] = @toUpdDbProcessingCount
                         , [LAST_UPDATED_TIME] = GETDATE()
                     WHERE [DB_NAME] = @ssasDatabaseName;
                END
            COMMIT
        END
    END TRY
    BEGIN CATCH
        ROLLBACK;
        THROW;
    END CATCH
    
END

GO

