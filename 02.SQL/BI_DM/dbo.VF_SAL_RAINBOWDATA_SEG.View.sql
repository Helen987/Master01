USE [BI_DM]
GO
/****** Object:  View [dbo].[VF_SAL_RAINBOWDATA_SEG]    Script Date: 2017/10/05 14:33:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [dbo].[VF_SAL_RAINBOWDATA_SEG] AS	
SELECT										
	    [OPPSEQ]										
	   ,[SCM_CUSTOMER_CD]										
	   ,[ORDER_PART_NO_CD]										
	   ,[SEG_CD]										
	   ,[BUSINESS_SITE]										
	   ,[CALENDAR_YM]										
	   ,[UPDATE_DATE]										
	   ,[DINPLANDATE]										
	   ,[STAGEDIV]										
	   ,[MTFRATE]										
	   ,[CURRENCY]										
	   ,[CURRENCY_EXCH]										
	   ,[QTY]										
	   ,[AMT]										
	   ,[AMT_EXCH]										
	   ,[AMT_EXCH_MLR]										
	   ,ISNULL([STDCST_AMT_EXCH],0) AS [STDCSTAMT_EXCH]										
	   ,ISNULL([STDCST_AMT_EXCH_MLR],0) AS [STDCSTAMT_EXCH_MLR]
	   ,[PROBABILITY]										
	   ,[LTVACCURACY]
	   ,[FTCUSTOMERCD]
FROM [BI_DM].[dbo].[F_RBW_MTF_L_EXCH_MLR]
WHERE DUPLILTVDIV  IN ('1','4') 







GO
