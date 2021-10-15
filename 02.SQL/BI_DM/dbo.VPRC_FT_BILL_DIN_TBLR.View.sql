USE [BI_DM]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[VPRC_FT_BILL_DIN_TBLR] AS
WITH   CUR_RATE
AS     (SELECT * FROM [DM_MST].[dbo].[VPRC_FSDM_OSC_CUR_RATE]),

BILL_DIN AS (
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
  ,SUM([TO_AMT_STD])             AS [TO_AMT_STD]
  ,SUM([TO_AMT_TP1])             AS [TO_AMT_TP1]
  ,SUM([TO_AMT_TP2])             AS [TO_AMT_TP2]
  ,SUM([TO_AMT_SRP])             AS [TO_AMT_SRP]
  ,SUM([GO_AMT])                 AS [GO_AMT]
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
--20180410  D-in CUBE��Qty���ڂ̒ǉ��Ή� CDC  Start
  ,SUM([TO_QTY])                 AS [TO_QTY]
  ,SUM([SO_QTY])                 AS [SO_QTY]
--20180410  D-in CUBE��Qty���ڂ̒ǉ��Ή� CDC  End
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
  ),

  BILL_DIN_BM AS (
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
  ,CUR_RATE.[CURR_CD_TO] AS [CURRENCY_EXCH]
  ,[ACTUAL_UNMANAGED_FLG]
  ,CONVERT(money,[TO_AMT] * CUR_RATE.B_RATE) AS [TO_AMT_B]
  ,CONVERT(money,[TO_AMT] * CUR_RATE.M_RATE) AS [TO_AMT_M]
  ,CONVERT(money,[TO_AMT_STD] * CUR_RATE_STD.B_RATE) AS [TO_AMT_STD_B]
  ,CONVERT(money,[TO_AMT_STD] * CUR_RATE_STD.M_RATE) AS [TO_AMT_STD_M]
  ,CONVERT(money,[GO_AMT] * CUR_RATE.B_RATE) AS [GO_AMT_B]
  ,CONVERT(money,[GO_AMT] * CUR_RATE.M_RATE) AS [GO_AMT_M]
  ,CONVERT(money,[GO_AMT_STD] * CUR_RATE_STD.B_RATE) AS [GO_AMT_STD_B]
  ,CONVERT(money,[GO_AMT_STD] * CUR_RATE_STD.M_RATE) AS [GO_AMT_STD_M]
  ,CONVERT(money,[SO_AMT] * CUR_RATE.B_RATE) AS [SO_AMT_B]
  ,CONVERT(money,[SO_AMT] * CUR_RATE.M_RATE) AS [SO_AMT_M]
  ,CONVERT(money,[SO_AMT_STD] * CUR_RATE_STD.B_RATE) AS [SO_AMT_STD_B]
  ,CONVERT(money,[SO_AMT_STD] * CUR_RATE_STD.M_RATE) AS [SO_AMT_STD_M]
  ,CONVERT(money,[GO_Bill_Amt_NB_Bwin] * CUR_RATE.B_RATE) AS [GO_Bill_Amt_NB_Bwin_B]
  ,CONVERT(money,[GO_Bill_Amt_NB_Bwin] * CUR_RATE.M_RATE) AS [GO_Bill_Amt_NB_Bwin_M]
  ,CONVERT(money,[GO_Bill_Amt_NB_Din] * CUR_RATE.B_RATE) AS [GO_Bill_Amt_NB_Din_B]
  ,CONVERT(money,[GO_Bill_Amt_NB_Din] * CUR_RATE.M_RATE) AS [GO_Bill_Amt_NB_Din_M]
FROM BILL_DIN
LEFT OUTER JOIN CUR_RATE
          ON BILL_DIN.[CURRENCY] = CUR_RATE.[CURR_CD_FROM]
         AND BILL_DIN.[RECORD_DATE] = CUR_RATE.[VALID_FROM_YMD]
LEFT OUTER JOIN CUR_RATE CUR_RATE_STD
  ON CUR_RATE_STD.[CURR_CD_FROM] = 'JPY'
 AND CUR_RATE.[CURR_CD_TO]= CUR_RATE_STD.[CURR_CD_TO]
 AND BILL_DIN.[RECORD_DATE] = CUR_RATE_STD.[VALID_FROM_YMD]
WHERE [CURRENCY_EXCH] = 'Input Currency'
  )
 
 SELECT
   BILL_DIN.[SCM_CUSTOMER_CD]
  ,BILL_DIN.[B_WIN_SCM_CUSTOMER_CD]
  ,BILL_DIN.[ORDER_PART_NO_CD]
  ,BILL_DIN.[SEG_CD]
  ,BILL_DIN.[CURRENCY]
  ,BILL_DIN.[RECORD_DATE]
  ,BILL_DIN.[ORDER_DATE]
  ,BILL_DIN.[RDLV_DATE]
  ,BILL_DIN.[SHIPTO_DATE]
  ,BILL_DIN.[CURRENCY_EXCH]
  ,BILL_DIN.[ACTUAL_UNMANAGED_FLG]
  ,[TO_AMT] AS [TO_AMT_Q]
  ,[TO_AMT_B]
  ,[TO_AMT_M]
  ,[TO_AMT_STD] AS [TO_AMT_STD_Q]
  ,[TO_AMT_STD_B]
  ,[TO_AMT_STD_M]
  ,[TO_AMT_TP1]
  ,[TO_AMT_TP2]
  ,[TO_AMT_SRP]
  ,[GO_AMT] AS [GO_AMT_Q]
  ,[GO_AMT_B]
  ,[GO_AMT_M]
  ,[GO_AMT_STD] AS [GO_AMT_STD_Q]
  ,[GO_AMT_STD_B]
  ,[GO_AMT_STD_M]
  ,[GO_AMT_TP1]
  ,[GO_AMT_TP2]
  ,[GO_AMT_SRP]
  ,[SO_AMT] AS [SO_AMT_Q]
  ,[SO_AMT_B]
  ,[SO_AMT_M]
  ,[SO_AMT_STD] AS [SO_AMT_STD_Q]
  ,[SO_AMT_STD_B]
  ,[SO_AMT_STD_M]
  ,[SO_AMT_TP1]
  ,[SO_AMT_TP2]
  ,[SO_AMT_SRP]
  ,[OSC_MoveAve_Cst]
  ,[OSC_MoveAve_GP_Amt]
  ,[GO_QTY]
  ,[GO_Bill_Amt_NB_Bwin] AS [GO_Bill_Amt_NB_Bwin_Q]
  ,[GO_Bill_Amt_NB_Bwin_B]
  ,[GO_Bill_Amt_NB_Bwin_M]
  ,[GO_Bill_Amt_NB_Din] AS [GO_Bill_Amt_NB_Din_Q]
  ,[GO_Bill_Amt_NB_Din_B]
  ,[GO_Bill_Amt_NB_Din_M]
--20180410  D-in CUBE��Qty���ڂ̒ǉ��Ή� CDC  Start
  ,[TO_QTY]
  ,[SO_QTY]
--20180410  D-in CUBE��Qty���ڂ̒ǉ��Ή� CDC  End
FROM BILL_DIN
LEFT JOIN BILL_DIN_BM
ON ISNULL(BILL_DIN.[SCM_CUSTOMER_CD],'$$NULL$$') = ISNULL(BILL_DIN_BM.[SCM_CUSTOMER_CD],'$$NULL$$')
AND ISNULL(BILL_DIN.[B_WIN_SCM_CUSTOMER_CD],'$$NULL$$') = ISNULL(BILL_DIN_BM.[B_WIN_SCM_CUSTOMER_CD],'$$NULL$$')
AND ISNULL(BILL_DIN.[ORDER_PART_NO_CD],'$$NULL$$') = ISNULL(BILL_DIN_BM.[ORDER_PART_NO_CD],'$$NULL$$')
AND ISNULL(BILL_DIN.[SEG_CD],'$$NULL$$') = ISNULL(BILL_DIN_BM.[SEG_CD],'$$NULL$$')
AND ISNULL(BILL_DIN.[CURRENCY],'$$NULL$$') = ISNULL(BILL_DIN_BM.[CURRENCY],'$$NULL$$')
AND ISNULL(CONVERT(nvarchar,BILL_DIN.[RECORD_DATE],112),'$$NULL$$') = ISNULL(CONVERT(nvarchar,BILL_DIN_BM.[RECORD_DATE],112),'$$NULL$$')
AND ISNULL(CONVERT(nvarchar,BILL_DIN.[ORDER_DATE],112),'$$NULL$$') = ISNULL(CONVERT(nvarchar,BILL_DIN_BM.[ORDER_DATE],112),'$$NULL$$')
AND ISNULL(CONVERT(nvarchar,BILL_DIN.[RDLV_DATE],112),'$$NULL$$') = ISNULL(CONVERT(nvarchar,BILL_DIN_BM.[RDLV_DATE],112),'$$NULL$$')
AND ISNULL(CONVERT(nvarchar,BILL_DIN.[SHIPTO_DATE],112),'$$NULL$$') = ISNULL(CONVERT(nvarchar,BILL_DIN_BM.[SHIPTO_DATE],112),'$$NULL$$')
AND ISNULL(BILL_DIN.[CURRENCY_EXCH],'$$NULL$$') = ISNULL(BILL_DIN_BM.[CURRENCY_EXCH],'$$NULL$$')
AND ISNULL(BILL_DIN.[ACTUAL_UNMANAGED_FLG],'$$NULL$$') = ISNULL(BILL_DIN_BM.[ACTUAL_UNMANAGED_FLG],'$$NULL$$')


GO