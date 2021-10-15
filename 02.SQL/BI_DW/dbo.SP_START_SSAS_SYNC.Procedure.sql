USE [BI_DW]
GO

/****** Object:  StoredProcedure [dbo].[SP_START_SSAS_SYNC]    Script Date: 2/15/2019 3:22:38 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SP_START_SSAS_SYNC]
 (@ssasDatabaseName NVARCHAR(15),
  @maxWaitMinute INT = 3600)
AS
BEGIN
    BEGIN TRY
        DECLARE @currentStatus NVARCHAR(20) = N'';

        DECLARE @currentSyncProcessCount int;

        DECLARE @startTime DATETIME = GETDATE();

        DECLARE @updflg BIT = 0;

        DECLARE @errorMessage NVARCHAR(200) = N'';

        DECLARE @toUpdStatus NVARCHAR(20) = N'';
        
        WHILE @currentStatus = N'02_Synchronizing' OR @currentStatus = N'01_Processing' OR @currentStatus = N'99_SyncError' OR @currentSyncProcessCount > 0 OR @currentStatus = N''
        BEGIN
            BEGIN TRAN
                IF DATEDIFF(minute, @startTime, GETDATE()) >= @maxWaitMinute
                    BEGIN
                        SET @errorMessage = CONVERT(NVARCHAR(200), @maxWaitMinute) + N'分間SSAS同期処理状態が解除されなかったため処理を中止します。';
                        THROW 50000, @errorMessage , 1;
                    END

                SELECT @currentSyncProcessCount = COUNT(*)
                  FROM [dbo].[Z_SSAS_SYNC_EXCLUSION_CONTROL] T WITH(UPDLOCK)
                 WHERE T.[STATUS] = N'02_Synchronizing';

                SELECT @currentStatus = T.[STATUS]
                  FROM [dbo].[Z_SSAS_SYNC_EXCLUSION_CONTROL] T WITH(UPDLOCK)
                 WHERE T.[DB_NAME] = @ssasDatabaseName;

                IF @currentStatus = N'02_Synchronizing' OR @currentStatus = N'01_Processing' OR @currentStatus = N'99_SyncError' OR @currentSyncProcessCount > 0
                    BEGIN
                        SET @updflg = 0;
                    END
                ELSE IF @currentStatus = N'00_None'
                    BEGIN
                        SET @updflg = 1;
                        SET @toUpdStatus = N'02_Synchronizing';
                    END
                ELSE
                    BEGIN
                        SET @errorMessage = N'Z_SSAS_SYNC_EXCLUSION_CONTROLテーブルに該当データベースのレコードが存在しないか、ステータスの設定値が不正です。データを修正してください。ステータスの設定値は00_None/01_Processing/02_Synchronizingのいずれかです。DATABASE:' + @ssasDatabaseName + N' STATUS:' + @currentStatus;
                        THROW 50000, @errorMessage, 1;
                    END

                IF @updflg = 1
                BEGIN
                    UPDATE [dbo].[Z_SSAS_SYNC_EXCLUSION_CONTROL]
                       SET [STATUS] = @toUpdStatus
                         , [LAST_UPDATED_TIME] = GETDATE()
                     WHERE [DB_NAME] = @ssasDatabaseName;
                     
                    INSERT INTO [dbo].[Z_SSAS_SYNC_LOG] VALUES (@ssasDatabaseName, GETDATE(), NULL);
                END
            COMMIT
            IF @updflg = 0
                BEGIN
                    WAITFOR DELAY '00:01:00';
                END
        END
    END TRY
    BEGIN CATCH
        ROLLBACK;
        THROW;
    END CATCH
    
END

GO


