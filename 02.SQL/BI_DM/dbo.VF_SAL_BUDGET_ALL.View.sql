USE [BI_DM]
GO

/****** Object:  View [dbo].[VF_SAL_BUDGET_ALL]    Script Date: 2018/03/16 20:00:07 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO



CREATE VIEW [dbo].[VF_SAL_BUDGET_ALL]
AS
SELECT [SCM_CUSTOMER_CD]
      ,[ORDER_PART_NO_CD]
      ,[SEG_CD]
      ,[BUSINESS_SITE]
      ,[CALENDAR_YM]
      ,[CURRENCY]
      ,[VERSION_RESULT]
      ,[CURRENCY_EXCH]
      ,[TO_AMT]
      ,[TO_AMT_JPY]
      ,[TO_STD]
      ,[TO_QTY]
      ,[GO_AMT]
      ,[GO_AMT_JPY]
      ,[GO_STD]
      ,[GO_QTY]
      ,[SO_AMT]
      ,[SO_AMT_JPY]
      ,[SO_STD]
      ,[SO_QTY]
  FROM [BI_DM].[dbo].[F_SAL_BUDGET_FIXED]
 WHERE ([VERSION_RESULT] NOT IN (N'0', N'H')) --N'1', N'2', N'3', N'O'
 UNION ALL
SELECT [SCM_CUSTOMER_CD]
      ,[ORDER_PART_NO_CD]
      ,[SEG_CD]
      ,[BUSINESS_SITE]
      ,[CALENDAR_YM]
      ,[CURRENCY]
      ,N'L' AS [VERSION_RESULT]
      ,[CURRENCY_EXCH]
      ,[TO_AMT]
      ,[TO_AMT_JPY]
      ,[TO_STD]
      ,[TO_QTY]
      ,[GO_AMT]
      ,[GO_AMT_JPY]
      ,[GO_STD]
      ,[GO_QTY]
      ,[SO_AMT]
      ,[SO_AMT_JPY]
      ,[SO_STD]
      ,[SO_QTY]
  FROM [BI_DM].[dbo].[F_SAL_BUDGET_FIXED]
 WHERE ([VERSION_RESULT] IN (N'0', N'H'))
 UNION ALL
SELECT [SCM_CUSTOMER_CD]
      ,[ORDER_PART_NO_CD]
      ,[SEG_CD]
      ,[BUSINESS_SITE]
      ,[CALENDAR_YM]
      ,[CURRENCY]
      ,N'L' AS [VERSION_RESULT]
      ,[CURRENCY_EXCH]
      ,[TO_AMT]
      ,[TO_AMT_JPY]
      ,[TO_STD]
      ,[TO_QTY]
      ,[GO_AMT]
      ,[GO_AMT_JPY]
      ,[GO_STD]
      ,[GO_QTY]
      ,[SO_AMT]
      ,[SO_AMT_JPY]
      ,[SO_STD]
      ,[SO_QTY]
  FROM [BI_DM].[dbo].[F_SAL_BUDGET_FIXED]
 WHERE ([VERSION_RESULT] IN
(
SELECT MAX([VERSION_RESULT])
  FROM [BI_DM].[dbo].[F_SAL_BUDGET_FIXED]
 WHERE ([VERSION_RESULT] NOT IN (N'0', N'H', N'O')) ---N'1', N'2', N'3'
)
       )
 UNION ALL
SELECT [SCM_CUSTOMER_CD]
      ,[ORDER_PART_NO_CD]
      ,[SEG_CD]
      ,[BUSINESS_SITE]
      ,[CALENDAR_YM]
      ,[CURRENCY]
      ,N'D' AS [VERSION_RESULT]
      ,[CURRENCY_EXCH]
      ,[TO_AMT]
      ,[TO_AMT_JPY]
      ,[TO_STD]
      ,[TO_QTY]
      ,[GO_AMT]
      ,[GO_AMT_JPY]
      ,[GO_STD]
      ,[GO_QTY]
      ,[SO_AMT]
      ,[SO_AMT_JPY]
      ,[SO_STD]
      ,[SO_QTY]
  FROM [BI_DM].[dbo].[F_SAL_BUDGET_DAILY]

--INXS‘Î‰ž
UNION ALL
SELECT [SCM_CUSTOMER_CD]
      ,[ORDER_PART_NO_CD]
      ,[SEG_CD]
      ,[BUSINESS_SITE]
      ,[CALENDAR_YM]
      ,[CURRENCY]
      ,N'L' AS [VERSION_RESULT]
      ,[CURRENCY_EXCH]
      ,[TO_AMT]
      ,[TO_AMT_JPY]
      ,[TO_STD]
      ,[TO_QTY]
      ,[GO_AMT]
      ,[GO_AMT_JPY]
      ,[GO_STD]
      ,[GO_QTY]
      ,[SO_AMT]
      ,[SO_AMT_JPY]
      ,[SO_STD]
      ,[SO_QTY]
  FROM [DM_SALES].[dbo].[TPRC_T_NREL_BUDGET]
;




GO


