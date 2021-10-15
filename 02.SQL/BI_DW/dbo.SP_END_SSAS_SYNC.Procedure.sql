USE [BI_DW]
GO

/****** Object:  StoredProcedure [dbo].[SP_END_SSAS_SYNC]    Script Date: 2019/02/4 17:18:11 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[SP_END_SSAS_SYNC]
 (@ssasDatabaseName NVARCHAR(15))
AS
BEGIN
    BEGIN TRY
        DECLARE @currentStatus NVARCHAR(20) = N'';

        DECLARE @errorMessage NVARCHAR(200) = N'';

        DECLARE @toUpdStatus NVARCHAR(20) = N'';
        
        BEGIN
            BEGIN TRAN
                SELECT @currentStatus = T.[STATUS]
                  FROM [dbo].[Z_SSAS_SYNC_EXCLUSION_CONTROL] T WITH(UPDLOCK)
                 WHERE T.[DB_NAME] = @ssasDatabaseName;

                IF @currentStatus = N'02_Synchronizing'
                    BEGIN
                        SET @toUpdStatus = N'00_None';                   
                    END
                ELSE IF @currentStatus = N'00_None' or @currentStatus = N'01_Processing' or @currentStatus = N'99_SyncError'
                    BEGIN
                        SET @errorMessage = N'Z_SSAS_SYNC_EXCLUSION_CONTROLテーブルのステータスが不正です。DATABASE:' + @ssasDatabaseName + N'STATUS:' + @currentStatus;
                        THROW 50000, @errorMessage, 1;
                    END
                ELSE
                    BEGIN
                        SET @errorMessage = N'Z_SSAS_SYNC_EXCLUSION_CONTROLテーブルに該当データベースのレコードが存在しないか、ステータスの設定値が不正です。データを修正してください。ステータスの設定値は00_None/01_Processing/02_Synchronizingのいずれかです。DATABASE:' + @ssasDatabaseName + N' STATUS:' + @currentStatus;
                        THROW 50000, @errorMessage, 1;
                    END

                BEGIN
                    UPDATE [dbo].[Z_SSAS_SYNC_EXCLUSION_CONTROL]
                       SET [STATUS] = @toUpdStatus
                         , [LAST_UPDATED_TIME] = GETDATE()
                     WHERE [DB_NAME] = @ssasDatabaseName;
                    
                    UPDATE [dbo].[Z_SSAS_SYNC_LOG]
                       SET [END_TIME] = GETDATE()
                     WHERE [END_TIME] IS NULL
                       AND [DB_NAME] = @ssasDatabaseName
                       AND [START_TIME] = (SELECT MAX(T.START_TIME)
                                             FROM [dbo].[Z_SSAS_SYNC_LOG] T
                                            WHERE T.[END_TIME] IS NULL
                                              AND T.[DB_NAME] = @ssasDatabaseName);
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


