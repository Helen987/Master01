USE [BI_DW]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



-- =============================================
-- Author:		Asahi
-- Create date: 2015/08/19
-- Description:	レートグループを判別する関数
-- Author:		Niki
-- Create date: 2015/10/7
-- Description:	UATで出た修正依頼項目を反映
-- =============================================
CREATE FUNCTION [dbo].[SF_Set_RateGrpCD] 
(
	-- Add the parameters for the function here
	@GO_AMT			money,
	@GO_STDCST_AMT	money
)
RETURNS varchar(2)
AS
BEGIN
	-- Declare the return variable here
	DECLARE @Result		varchar(2)
	DECLARE @GP_Rato	decimal(21,5)

	
	IF (@GO_AMT IS NULL or @GO_AMT =0) RETURN '01' 
	
	SET @GP_Rato = (CAST(@GO_AMT AS decimal(21,5)) - CAST(@GO_STDCST_AMT  AS decimal(21,5)))/CAST(@GO_AMT AS decimal(21,5)) 

	SELECT @Result =
	CASE 
	--    WHEN 0.0	>  @GO_AMT 						THEN '00'  --売上マイナスの場合もGP計算対象に含める(2015/2H対応)
		WHEN 0.0	>  @GP_Rato						THEN '00'
		WHEN 0.0	<= @GP_Rato AND @GP_Rato <0.05  THEN '01'
		WHEN 0.05	<= @GP_Rato AND @GP_Rato <0.1   THEN '02'
		WHEN 0.1	<= @GP_Rato AND @GP_Rato <0.15  THEN '03'
		WHEN 0.15	<= @GP_Rato AND @GP_Rato <0.2   THEN '04'
		WHEN 0.2	<= @GP_Rato AND @GP_Rato <0.25  THEN '05'
		WHEN 0.25   <= @GP_Rato AND @GP_Rato <0.3   THEN '06'
		WHEN 0.3	<= @GP_Rato AND @GP_Rato <0.35  THEN '07'
		WHEN 0.35   <= @GP_Rato AND @GP_Rato <0.4   THEN '08'
		WHEN 0.4	<= @GP_Rato AND @GP_Rato <0.45  THEN '09'
		WHEN 0.45   <= @GP_Rato AND @GP_Rato <0.5   THEN '10'
		WHEN 0.5	<= @GP_Rato AND @GP_Rato <0.55  THEN '11'
		WHEN 0.55	<= @GP_Rato AND @GP_Rato <0.6   THEN '12'
		WHEN 0.6	<= @GP_Rato AND @GP_Rato <0.65  THEN '13'
		WHEN 0.65   <= @GP_Rato AND @GP_Rato <0.7   THEN '14'
		WHEN 0.7	<= @GP_Rato AND @GP_Rato <0.75  THEN '15'
		WHEN 0.75   <= @GP_Rato AND @GP_Rato <0.8   THEN '16'
		WHEN 0.8	<= @GP_Rato AND @GP_Rato <0.85  THEN '17'
		WHEN 0.85   <= @GP_Rato AND @GP_Rato <0.9   THEN '18'
		WHEN 0.9    <= @GP_Rato AND @GP_Rato <0.95  THEN '19'
		WHEN 0.95   <= @GP_Rato AND @GP_Rato <1		THEN '20'
		WHEN 1		<= @GP_Rato						THEN '21'
		ELSE 'x' 
	END 

	-- Return the result of the function
	RETURN @Result

END






GO
