USE [BI_DM]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO





CREATE VIEW [dbo].[VF_SAL_BILL_DIN] AS
SELECT
   [SCM_CUSTOMER_CD]
  ,[B_WIN_SCM_CUSTOMER_CD]
  ,[ORDER_PART_NO_CD]
  ,[SEG_CD]
  ,[CURRENCY]
  ,[RECORD_DATE]
  ,[ORDER_DATE]
  ,[RDLV_DATE]
  ,[SHIPTO_DATE]
  ,[CURRENCY_EXCH]
  ,[ACTUAL_UNMANAGED_FLG]
  ,SUM([TO_AMT])                 AS [TO_AMT]
  ,SUM([TO_ANP_AMT])             AS [TO_ANP_AMT]
  ,SUM([TO_AMT_STD])             AS [TO_AMT_STD]
  ,SUM([TO_AMT_TP1])             AS [TO_AMT_TP1]
  ,SUM([TO_AMT_TP2])             AS [TO_AMT_TP2]
  ,SUM([TO_AMT_SRP])             AS [TO_AMT_SRP]
  ,SUM([GO_AMT])                 AS [GO_AMT]
  ,SUM([GO_ANP_AMT])             AS [GO_ANP_AMT]
  ,SUM([GO_AMT_STD])             AS [GO_AMT_STD]
  ,SUM([GO_AMT_TP1])             AS [GO_AMT_TP1]
  ,SUM([GO_AMT_TP2])             AS [GO_AMT_TP2]
  ,SUM([GO_AMT_SRP])             AS [GO_AMT_SRP]
  ,SUM([SO_AMT])                 AS [SO_AMT]
  ,SUM([SO_AMT_STD])             AS [SO_AMT_STD]
  ,SUM([SO_AMT_TP1])             AS [SO_AMT_TP1]
  ,SUM([SO_AMT_TP2])             AS [SO_AMT_TP2]
  ,SUM([SO_AMT_SRP])             AS [SO_AMT_SRP]
  ,SUM([OSC_MoveAve_Cst])        AS [OSC_MoveAve_Cst]
  ,SUM([OSC_MoveAve_GP_Amt])     AS [OSC_MoveAve_GP_Amt]
  ,SUM([GO_QTY])                 AS [GO_QTY]
  ,SUM([GO_Bill_Amt_NB_Bwin])    AS [GO_Bill_Amt_NB_Bwin]
  ,SUM([GO_Bill_Amt_NB_Din])     AS [GO_Bill_Amt_NB_Din]
--20180410  D-in CUBEÇ…QtyçÄñ⁄ÇÃí«â¡ëŒâû CDC  Start
  ,SUM([TO_QTY])                 AS [TO_QTY]
  ,SUM([SO_QTY])                 AS [SO_QTY]
--20180410  D-in CUBEÇ…QtyçÄñ⁄ÇÃí«â¡ëŒâû CDC  End
FROM [BI_DM].[dbo].[T_SAL_BILL_DIN]

GROUP BY
   [SCM_CUSTOMER_CD]
  ,[B_WIN_SCM_CUSTOMER_CD]
  ,[ORDER_PART_NO_CD]
  ,[SEG_CD]
  ,[CURRENCY]
  ,[RECORD_DATE]
  ,[ORDER_DATE]
  ,[RDLV_DATE]
  ,[SHIPTO_DATE]
  ,[CURRENCY_EXCH]
  ,[ACTUAL_UNMANAGED_FLG]


GO
