USE [BI_DM]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author:		Tetsuo Asahi
-- Create date: 2015/04/16
-- Description:	スケジュール線票の日程ラベル出力位置計算関数
-- =============================================
CREATE FUNCTION [dbo].[DCP_Schedule_DateLabel_Point] 
(
	 @prevDate date -- 前回日付
	,@currDate date -- 今回日付
)
RETURNS float
AS
BEGIN
	DECLARE @Result float

	IF @currDate IS NULL RETURN NULL

	IF @prevDate IS NULL
		--前回日付がないときは 一律 -1.0 を返す
		SET @Result = -1.0
	ELSE
		--前回日付と今回日付の日差が15日未満の場合、-2になるように関数を調整。
		--日差が大きい場合は、-1.0に収束するように 2^-x の関数を選択。
		SELECT @Result = -1.0-POWER(2.00,DATEDIFF(DAY, @currDate, @prevDate)/15)  

	RETURN @Result

END



GO
