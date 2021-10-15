USE [BI_DW]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date, ,>
-- Description:	<Description, ,>
-- =============================================
CREATE FUNCTION [dbo].[SAP_ZZZ_GetFiscalYearMonth]
(@strMode varchar(5),@lngOffsetMonth bigint)  
RETURNS varchar(4) AS
BEGIN 
	DECLARE @strWorkFiscalYear VARCHAR(4)
	DECLARE @strWorkFiscalMonth VARCHAR(2)
	DECLARE @strRetrunValue VARCHAR(4)

	-- calculate fiscal year/period
	SELECT	@strWorkFiscalYear = FISCAL_YEAR,
			@strWorkFiscalMonth = RIGHT('0' + CONVERT(varchar,MONTH_IN_FY),2)
	FROM	[PSL_DWH].[dbo].PSL_ZZM_DATE
	WHERE	CALENDAR_DATE = DATEADD(MONTH,@lngOffsetMonth,CONVERT(varchar,GETDATE(),111))

	-- control return value according to MODE
	IF UPPER(@strMode) = 'YEAR'
		SET @strRetrunValue = @strWorkFiscalYear
	ELSE IF UPPER(@strMode) = 'MONTH'
		SET @strRetrunValue = @strWorkFiscalMonth
	ELSE	
		SET @strRetrunValue = NULL

	RETURN @strRetrunValue
END
GO
