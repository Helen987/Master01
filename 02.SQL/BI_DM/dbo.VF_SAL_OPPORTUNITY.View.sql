USE [BI_DM]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[VF_SAL_OPPORTUNITY] AS
SELECT [SCM_CUSTOMER_CD]
      ,[ORDER_PART_NO_CD]
      ,[SEG_CD]
      ,[CALENDAR_YM]
      ,[CURRENCY]
      ,[CURRENCY_EXCH]
      ,[DATATYPE]
      ,[S1_AMT]
      ,[S1_STD]
      ,[S1_QTY]
      ,[S2_AMT]
      ,[S2_STD]
      ,[S2_QTY]
      ,[S3_AMT]
      ,[S3_STD]
      ,[S3_QTY]
      ,[S4_AMT]
      ,[S4_STD]
      ,[S4_QTY]
  FROM [BI_DM].[dbo].[F_SAL_OPPORTUNITY]



GO
