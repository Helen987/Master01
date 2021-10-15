USE [BI_DW]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [dbo].[V_SAL_STOCK] AS
SELECT
 [STK_BASEMONTH]
,[ZZKUNNR01]
,[MATERIAL_CD_KEY_A1]
,[ZZWAERS]
,SUM([STOCK_AMT])      AS [STOCK_AMT]
,SUM([ALL_STOCK_QTY])  AS [ALL_STOCK_QTY]
,(CASE WHEN SUM([ALL_STOCK_QTY])  = 0
         THEN 0
       ELSE
       SUM([STOCK_AMT]) / SUM([ALL_STOCK_QTY])  
  END
 ) AS [COST_PRCE_AVE]

FROM [dbo].[T_SAL_STOCK]
WHERE W_DS_TB_NAME in ('3','4')
GROUP BY 
 [STK_BASEMONTH]
,[ZZKUNNR01]
,[MATERIAL_CD_KEY_A1]
,[ZZWAERS]




GO