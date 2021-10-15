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
CREATE FUNCTION [dbo].[SAP_ZZZ_GetQueryParameterValue]
(@strQueryParameter varchar(50), @strGetColumn varchar(30))  
RETURNS varchar(50) AS
BEGIN 
	DECLARE @strLOWVALUE VARCHAR(50)
	DECLARE @strHIGHVALUE VARCHAR(50)
	DECLARE @strCDLASTCHANGENR VARCHAR(10)
	DECLARE @strRetrunValue VARCHAR(4)

	-- calculate fiscal year/period
	SELECT	@strLOWVALUE = LOWVALUE,
			@strHIGHVALUE = HIGHVALUE,
			@strCDLASTCHANGENR = CDLASTCHANGENR
	FROM	PSL_SYS_QUERYPARAM
	WHERE	PARAMID = @strQueryParameter
	
	-- control return value according to parameters
	IF @strGetColumn = 'LOWVALUE' 
		SET @strRetrunValue = @strLOWVALUE
	ELSE IF @strGetColumn = 'HIGHVALUE'
		SET @strRetrunValue = @strHIGHVALUE
	ELSE IF @strGetColumn = 'CDLASTCHANGENR'
		SET @strRetrunValue = @strCDLASTCHANGENR

	RETURN @strRetrunValue
END


GO
