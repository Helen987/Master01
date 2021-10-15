USE [BI_DM]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [dbo].[VF_SAL_BILL_nonEXCH] AS
SELECT
  [SCM_CUSTOMER_CD]
, [ORDER_PART_NO_CD]
, [SEG_CD]
, [CURRENCY]
, [RECORD_DATE]
, [ORDER_DATE]
, [RDLV_DATE]
, [SHIPTO_DATE]
, SUM([TO_AMT_JPY]) AS [TO_AMT_JPY]
, SUM([TO_AMT_TTM]) AS [TO_AMT_TTM]
, SUM([TO_AMT_NET]) AS [TO_AMT_NET]
, SUM([TO_ANP_AMT_NET]) AS [TO_ANP_AMT_NET]
, SUM([TO_AMT_STD]) AS [TO_AMT_STD]
, SUM([TO_QTY]) AS [TO_QTY]
, SUM([TO_AMT_TP1]) AS [TO_AMT_TP1]
, SUM([TO_AMT_TP2]) AS [TO_AMT_TP2]
, SUM([TO_AMT_STD_USER]) AS [TO_AMT_STD_USER]
, SUM([TO_AMT_SRP]) AS [TO_AMT_SRP]
, SUM([GO_AMT_JPY]) AS [GO_AMT_JPY]
, SUM([GO_AMT_TTM]) AS [GO_AMT_TTM]
, SUM([GO_AMT_NET]) AS [GO_AMT_NET]
, SUM([GO_ANP_AMT_NET]) AS [GO_ANP_AMT_NET]
, SUM([GO_AMT_STD]) AS [GO_AMT_STD]
, SUM([GO_QTY]) AS [GO_QTY]
, SUM([GO_AMT_TP1]) AS [GO_AMT_TP1]
, SUM([GO_AMT_TP2]) AS [GO_AMT_TP2]
, SUM([GO_AMT_STD_USER]) AS [GO_AMT_STD_USER]
, SUM([GO_AMT_SRP]) AS [GO_AMT_SRP]
, SUM([SO_AMT_JPY]) AS [SO_AMT_JPY]
, SUM([SO_AMT_TTM]) AS [SO_AMT_TTM]
, SUM([SO_AMT_NET]) AS [SO_AMT_NET]
, SUM([SO_AMT_STD]) AS [SO_AMT_STD]
, SUM([SO_QTY]) AS [SO_QTY]
, SUM([SO_AMT_TP1]) AS [SO_AMT_TP1]
, SUM([SO_AMT_TP2]) AS [SO_AMT_TP2]
, SUM([SO_AMT_STD_USER]) AS [SO_AMT_STD_USER]
, SUM([SO_AMT_SRP]) AS [SO_AMT_SRP]
, SUM([OSC_MoveAve_Cst]) AS [OSC_MoveAve_Cst]
, SUM([OSC_MoveAve_GP_Amt]) AS [OSC_MoveAve_GP_Amt]
FROM (
   SELECT [TUSR_T_TO_BILL].[SCM_CUSTOMER]           AS [SCM_CUSTOMER_CD]
        , [TUSR_T_TO_BILL].[BOOKING_PN_CD]          AS [ORDER_PART_NO_CD]
        , [TUSR_T_TO_BILL].[SEG_CD]
        , [TUSR_T_TO_BILL].[CURRENCY]
        , [TUSR_T_TO_BILL].[REGISTRATION_DATE]      AS [RECORD_DATE]
        , [TUSR_T_TO_BILL].[BOOKING_DATE]           AS [ORDER_DATE]
        , [TUSR_T_TO_BILL].[REQUEST_DATE]           AS [RDLV_DATE]
        , [TUSR_T_TO_BILL].[TO_SHIP_DATE]           AS [SHIPTO_DATE]
        , CASE
              WHEN [TPRC_SDM_EX_DOC_TYPE_CATEGORY].[SOURCE_SYSTEM_DOC_TYPE] IS NULL THEN
                   CAST([TUSR_T_TO_BILL].[TO_BILL_AMT_JPY] AS MONEY)
          ELSE
                   CAST([TUSR_T_TO_BILL].[TO_BILL_AMT_JPY] * [TPRC_SDM_EX_DOC_TYPE_CATEGORY].[AMT_PM_DIV] AS MONEY)
          END                                       AS [TO_AMT_JPY]
        , CASE
              WHEN [TPRC_SDM_EX_DOC_TYPE_CATEGORY].[SOURCE_SYSTEM_DOC_TYPE] IS NULL THEN
                   CAST([TUSR_T_TO_BILL].[TO_BILL_AMT_TTM] AS MONEY)
          ELSE
                   CAST([TUSR_T_TO_BILL].[TO_BILL_AMT_TTM] * [TPRC_SDM_EX_DOC_TYPE_CATEGORY].[AMT_PM_DIV] AS MONEY)
          END                                       AS [TO_AMT_TTM]
        , CASE
              WHEN [TPRC_SDM_EX_DOC_TYPE_CATEGORY].[SOURCE_SYSTEM_DOC_TYPE] IS NULL THEN
                   CAST([TUSR_T_TO_BILL].[TO_BILL_AMT] AS MONEY)
          ELSE
                   CAST([TUSR_T_TO_BILL].[TO_BILL_AMT] * [TPRC_SDM_EX_DOC_TYPE_CATEGORY].[AMT_PM_DIV] AS MONEY)
          END                                       AS [TO_AMT_NET]
        , CASE
              WHEN [TPRC_SDM_EX_DOC_TYPE_CATEGORY].[SOURCE_SYSTEM_DOC_TYPE] IS NULL THEN
                   CAST([TUSR_T_TO_BILL].[TO_BILL_ANP_AMT] AS MONEY)
          ELSE
                   CAST([TUSR_T_TO_BILL].[TO_BILL_ANP_AMT] * [TPRC_SDM_EX_DOC_TYPE_CATEGORY].[AMT_PM_DIV] AS MONEY)
          END                                       AS [TO_ANP_AMT_NET]
        , CASE
              WHEN [TPRC_SDM_EX_DOC_TYPE_CATEGORY].[SOURCE_SYSTEM_DOC_TYPE] IS NULL THEN
                   CAST([TUSR_T_TO_BILL].[TO_BILL_STDCST_AMT_JPY] AS MONEY)
          ELSE
                   CAST([TUSR_T_TO_BILL].[TO_BILL_STDCST_AMT_JPY] * [TPRC_SDM_EX_DOC_TYPE_CATEGORY].[AMT_PM_DIV] AS MONEY)
          END                                       AS [TO_AMT_STD]
        , CASE
              WHEN [TPRC_SDM_EX_DOC_TYPE_CATEGORY].[SOURCE_SYSTEM_DOC_TYPE] IS NULL THEN
                   CAST([TUSR_T_TO_BILL].[BILL_QTY] AS DECIMAL(20,4))
          ELSE
                   CAST([TUSR_T_TO_BILL].[BILL_QTY] * [TPRC_SDM_EX_DOC_TYPE_CATEGORY].[QTY_PM_DIV] AS DECIMAL(20,4))
          END                                       AS [TO_QTY]
        , CASE
              WHEN [TPRC_SDM_EX_DOC_TYPE_CATEGORY].[SOURCE_SYSTEM_DOC_TYPE] IS NULL THEN
                   CAST([TUSR_T_TO_BILL].[TO_BILL_AMT_TP1] AS MONEY)
          ELSE
                   CAST([TUSR_T_TO_BILL].[TO_BILL_AMT_TP1] * [TPRC_SDM_EX_DOC_TYPE_CATEGORY].[AMT_PM_DIV] AS MONEY)
          END                                       AS [TO_AMT_TP1]
        , CASE
              WHEN [TPRC_SDM_EX_DOC_TYPE_CATEGORY].[SOURCE_SYSTEM_DOC_TYPE] IS NULL THEN
                   CAST([TUSR_T_TO_BILL].[TO_BILL_AMT_TP2] AS MONEY)
          ELSE
                   CAST([TUSR_T_TO_BILL].[TO_BILL_AMT_TP2] * [TPRC_SDM_EX_DOC_TYPE_CATEGORY].[AMT_PM_DIV] AS MONEY)
          END                                       AS [TO_AMT_TP2]
        , CASE
              WHEN [TPRC_SDM_EX_DOC_TYPE_CATEGORY].[SOURCE_SYSTEM_DOC_TYPE] IS NULL THEN
                   CAST([TUSR_T_TO_BILL].[TO_BILL_AMT_STD_USER] AS MONEY)
          ELSE
                   CAST([TUSR_T_TO_BILL].[TO_BILL_AMT_STD_USER] * [TPRC_SDM_EX_DOC_TYPE_CATEGORY].[AMT_PM_DIV] AS MONEY)
          END                                       AS [TO_AMT_STD_USER]
        , CASE
              WHEN [TPRC_SDM_EX_DOC_TYPE_CATEGORY].[SOURCE_SYSTEM_DOC_TYPE] IS NULL THEN
                   CAST([TUSR_T_TO_BILL].[TO_BILL_AMT_SRP] AS MONEY)
          ELSE
                   CAST([TUSR_T_TO_BILL].[TO_BILL_AMT_SRP] * [TPRC_SDM_EX_DOC_TYPE_CATEGORY].[AMT_PM_DIV] AS MONEY)
          END                                       AS [TO_AMT_SRP]
        , 0 AS [GO_AMT_JPY]
        , 0 AS [GO_AMT_TTM]
        , 0 AS [GO_AMT_NET]
        , 0 AS [GO_ANP_AMT_NET]
        , 0 AS [GO_AMT_STD]
        , 0 AS [GO_QTY]
        , 0 AS [GO_AMT_TP1]
        , 0 AS [GO_AMT_TP2]
        , 0 AS [GO_AMT_STD_USER]
        , 0 AS [GO_AMT_SRP]
        , 0 AS [SO_AMT_JPY]
        , 0 AS [SO_AMT_TTM]
        , 0 AS [SO_AMT_NET]
        , 0 AS [SO_AMT_STD]
        , 0 AS [SO_QTY]
        , 0 AS [SO_AMT_TP1]
        , 0 AS [SO_AMT_TP2]
        , 0 AS [SO_AMT_STD_USER]
        , 0 AS [SO_AMT_SRP]
        , 0 AS [OSC_MoveAve_Cst]
        , 0 AS [OSC_MoveAve_GP_Amt]
   FROM [DM_SALES].[dbo].[TUSR_T_TO_BILL]
   LEFT JOIN [DM_MST].[dbo].[TPRC_SDM_EX_DOC_TYPE_CATEGORY]
          ON [TUSR_T_TO_BILL].[SOURCE_SYSTEM_DOC_TYPE] = [TPRC_SDM_EX_DOC_TYPE_CATEGORY].[SOURCE_SYSTEM_DOC_TYPE]

UNION ALL

   SELECT [TUSR_T_GO_BILL].[SCM_CUSTOMER]           AS [SCM_CUSTOMER_CD]
        , [TUSR_T_GO_BILL].[BOOKING_PN_CD]          AS [ORDER_PART_NO_CD]
        , [TUSR_T_GO_BILL].[SEG_CD]
        , [TUSR_T_GO_BILL].[CURRENCY]
        , [TUSR_T_GO_BILL].[REGISTRATION_DATE]      AS [RECORD_DATE]
        , [TUSR_T_GO_BILL].[BOOKING_DATE]           AS [ORDER_DATE]
        , [TUSR_T_GO_BILL].[REQUEST_DATE]           AS [RDLV_DATE]
        , [TUSR_T_GO_BILL].[SHIPTO_DATE]
        , 0 AS [TO_AMT_JPY]
        , 0 AS [TO_AMT_TTM]
        , 0 AS [TO_AMT_NET]
        , 0 AS [TO_ANP_AMT_NET]
        , 0 AS [TO_AMT_STD]
        , 0 AS [TO_QTY]
        , 0 AS [TO_AMT_TP1]
        , 0 AS [TO_AMT_TP2]
        , 0 AS [TO_AMT_STD_USER]
        , 0 AS [TO_AMT_SRP]
        , CASE
              WHEN [TPRC_SDM_EX_DOC_TYPE_CATEGORY].[SOURCE_SYSTEM_DOC_TYPE] IS NULL THEN
                   CAST([TUSR_T_GO_BILL].[GO_BILL_AMT_JPY] AS MONEY)
          ELSE
                   CAST([TUSR_T_GO_BILL].[GO_BILL_AMT_JPY] * [TPRC_SDM_EX_DOC_TYPE_CATEGORY].[AMT_PM_DIV] AS MONEY)
          END                                       AS [GO_AMT_JPY]
        , CASE
              WHEN [TPRC_SDM_EX_DOC_TYPE_CATEGORY].[SOURCE_SYSTEM_DOC_TYPE] IS NULL THEN
                   CAST([TUSR_T_GO_BILL].[GO_BILL_AMT_TTM] AS MONEY)
          ELSE
                   CAST([TUSR_T_GO_BILL].[GO_BILL_AMT_TTM] * [TPRC_SDM_EX_DOC_TYPE_CATEGORY].[AMT_PM_DIV] AS MONEY)
          END                                       AS [GO_AMT_TTM]
        , CASE
              WHEN [TPRC_SDM_EX_DOC_TYPE_CATEGORY].[SOURCE_SYSTEM_DOC_TYPE] IS NULL THEN
                   CAST([TUSR_T_GO_BILL].[GO_BILL_AMT] AS MONEY)
          ELSE
                   CAST([TUSR_T_GO_BILL].[GO_BILL_AMT] * [TPRC_SDM_EX_DOC_TYPE_CATEGORY].[AMT_PM_DIV] AS MONEY)
          END                                       AS [GO_AMT_NET]
        , CASE
              WHEN [TPRC_SDM_EX_DOC_TYPE_CATEGORY].[SOURCE_SYSTEM_DOC_TYPE] IS NULL THEN
                   CAST([TUSR_T_GO_BILL].[GO_BILL_ANP_AMT] AS MONEY)
          ELSE
                   CAST([TUSR_T_GO_BILL].[GO_BILL_ANP_AMT] * [TPRC_SDM_EX_DOC_TYPE_CATEGORY].[AMT_PM_DIV] AS MONEY)
          END                                       AS [GO_ANP_AMT_NET]
        , CASE
              WHEN [TPRC_SDM_EX_DOC_TYPE_CATEGORY].[SOURCE_SYSTEM_DOC_TYPE] IS NULL THEN
                   CAST([TUSR_T_GO_BILL].[GO_BILL_STDCST_AMT_JPY] AS MONEY)
          ELSE
                   CAST([TUSR_T_GO_BILL].[GO_BILL_STDCST_AMT_JPY] * [TPRC_SDM_EX_DOC_TYPE_CATEGORY].[AMT_PM_DIV] AS MONEY)
          END                                       AS [GO_AMT_STD]
        , CASE
              WHEN [TPRC_SDM_EX_DOC_TYPE_CATEGORY].[SOURCE_SYSTEM_DOC_TYPE] IS NULL THEN
                   CAST([TUSR_T_GO_BILL].[GO_BILL_QTY] AS DECIMAL(20,4))
          ELSE
                   CAST([TUSR_T_GO_BILL].[GO_BILL_QTY] * [TPRC_SDM_EX_DOC_TYPE_CATEGORY].[QTY_PM_DIV] AS DECIMAL(20,4))
          END                                       AS [GO_QTY]
        , CASE
              WHEN [TPRC_SDM_EX_DOC_TYPE_CATEGORY].[SOURCE_SYSTEM_DOC_TYPE] IS NULL THEN
                   CAST([TUSR_T_GO_BILL].[GO_BILL_AMT_TP1] AS MONEY)
          ELSE
                   CAST([TUSR_T_GO_BILL].[GO_BILL_AMT_TP1] * [TPRC_SDM_EX_DOC_TYPE_CATEGORY].[AMT_PM_DIV] AS MONEY)
          END                                       AS [GO_AMT_TP1]
        , CASE
              WHEN [TPRC_SDM_EX_DOC_TYPE_CATEGORY].[SOURCE_SYSTEM_DOC_TYPE] IS NULL THEN
                   CAST([TUSR_T_GO_BILL].[GO_BILL_AMT_TP2] AS MONEY)
          ELSE
                   CAST([TUSR_T_GO_BILL].[GO_BILL_AMT_TP2] * [TPRC_SDM_EX_DOC_TYPE_CATEGORY].[AMT_PM_DIV] AS MONEY)
          END                                       AS [GO_AMT_TP2]
        , CASE
              WHEN [TPRC_SDM_EX_DOC_TYPE_CATEGORY].[SOURCE_SYSTEM_DOC_TYPE] IS NULL THEN
                   CAST([TUSR_T_GO_BILL].[GO_BILL_AMT_STD_USER] AS MONEY)
          ELSE
                   CAST([TUSR_T_GO_BILL].[GO_BILL_AMT_STD_USER] * [TPRC_SDM_EX_DOC_TYPE_CATEGORY].[AMT_PM_DIV] AS MONEY)
          END                                       AS [GO_AMT_STD_USER]
        , CASE
              WHEN [TPRC_SDM_EX_DOC_TYPE_CATEGORY].[SOURCE_SYSTEM_DOC_TYPE] IS NULL THEN
                   CAST([TUSR_T_GO_BILL].[GO_BILL_AMT_SRP] AS MONEY)
          ELSE
                   CAST([TUSR_T_GO_BILL].[GO_BILL_AMT_SRP] * [TPRC_SDM_EX_DOC_TYPE_CATEGORY].[AMT_PM_DIV] AS MONEY)
          END                                       AS [GO_AMT_SRP]
        , 0 AS [SO_AMT_JPY]
        , 0 AS [SO_AMT_TTM]
        , 0 AS [SO_AMT_NET]
        , 0 AS [SO_AMT_STD]
        , 0 AS [SO_QTY]
        , 0 AS [SO_AMT_TP1]
        , 0 AS [SO_AMT_TP2]
        , 0 AS [SO_AMT_STD_USER]
        , 0 AS [SO_AMT_SRP]
        , [TUSR_T_GO_BILL].[OSC_MOVEAVE_CST] AS [OSC_MoveAve_Cst]
        , CASE
              WHEN [TPRC_SDM_EX_DOC_TYPE_CATEGORY].[SOURCE_SYSTEM_DOC_TYPE] IS NULL THEN
                   CAST([TUSR_T_GO_BILL].[OSC_MOVEAVE_GP_AMT] AS MONEY)
          ELSE
                   CAST([TUSR_T_GO_BILL].[OSC_MOVEAVE_GP_AMT] * [TPRC_SDM_EX_DOC_TYPE_CATEGORY].[AMT_PM_DIV] AS MONEY)
          END                                       AS [OSC_MoveAve_GP_Amt]
     FROM [DM_SALES].[dbo].[TUSR_T_GO_BILL]
   LEFT JOIN [DM_MST].[dbo].[TPRC_SDM_EX_DOC_TYPE_CATEGORY]
          ON [TUSR_T_GO_BILL].[SOURCE_SYSTEM_DOC_TYPE] = [TPRC_SDM_EX_DOC_TYPE_CATEGORY].[SOURCE_SYSTEM_DOC_TYPE]

UNION ALL

   SELECT [TUSR_T_SO_BILL].[SCM_CUSTOMER]           AS [SCM_CUSTOMER_CD]
        , [TUSR_T_SO_BILL].[BOOKING_PN_CD]          AS [ORDER_PART_NO_CD]
        , [TUSR_T_SO_BILL].[SEG_CD]
        , [TUSR_T_SO_BILL].[CURRENCY]
        , [TUSR_T_SO_BILL].[REGISTRATION_DATE]      AS [RECORD_DATE]
        , [TUSR_T_SO_BILL].[BOOKING_DATE]           AS [ORDER_DATE]
        , [TUSR_T_SO_BILL].[REQUEST_DATE]           AS [RDLV_DATE]
        , [TUSR_T_SO_BILL].[SHIPTO_DATE]
        , 0 AS [TO_AMT_JPY]
        , 0 AS [TO_AMT_TTM]
        , 0 AS [TO_AMT_NET]
        , 0 AS [TO_ANP_AMT_NET]
        , 0 AS [TO_AMT_STD]
        , 0 AS [TO_QTY]
        , 0 AS [TO_AMT_TP1]
        , 0 AS [TO_AMT_TP2]
        , 0 AS [TO_AMT_STD_USER]
        , 0 AS [TO_AMT_SRP]
        , 0 AS [GO_AMT_JPY]
        , 0 AS [GO_AMT_TTM]
        , 0 AS [GO_AMT_NET]
        , 0 AS [GO_ANP_AMT_NET]
        , 0 AS [GO_AMT_STD]
        , 0 AS [GO_QTY]
        , 0 AS [GO_AMT_TP1]
        , 0 AS [GO_AMT_TP2]
        , 0 AS [GO_AMT_STD_USER]
        , 0 AS [GO_AMT_SRP]
        , CASE
              WHEN [TPRC_SDM_EX_DOC_TYPE_CATEGORY].[SOURCE_SYSTEM_DOC_TYPE] IS NULL THEN
                   CAST([TUSR_T_SO_BILL].[SO_BILL_AMT_JPY] AS MONEY)
          ELSE
                   CAST([TUSR_T_SO_BILL].[SO_BILL_AMT_JPY] * [TPRC_SDM_EX_DOC_TYPE_CATEGORY].[AMT_PM_DIV] AS MONEY)
          END                                       AS [SO_AMT_JPY]
        , CASE
              WHEN [TPRC_SDM_EX_DOC_TYPE_CATEGORY].[SOURCE_SYSTEM_DOC_TYPE] IS NULL THEN
                   CAST([TUSR_T_SO_BILL].[SO_BILL_AMT_TTM] AS MONEY)
          ELSE
                   CAST([TUSR_T_SO_BILL].[SO_BILL_AMT_TTM] * [TPRC_SDM_EX_DOC_TYPE_CATEGORY].[AMT_PM_DIV] AS MONEY)
          END                                       AS [SO_AMT_TTM]
        , CASE
              WHEN [TPRC_SDM_EX_DOC_TYPE_CATEGORY].[SOURCE_SYSTEM_DOC_TYPE] IS NULL THEN
                   CAST([TUSR_T_SO_BILL].[SO_BILL_AMT] AS MONEY)
          ELSE
                   CAST([TUSR_T_SO_BILL].[SO_BILL_AMT] * [TPRC_SDM_EX_DOC_TYPE_CATEGORY].[AMT_PM_DIV] AS MONEY)
          END                                       AS [SO_AMT_NET]
        , CASE
              WHEN [TPRC_SDM_EX_DOC_TYPE_CATEGORY].[SOURCE_SYSTEM_DOC_TYPE] IS NULL THEN
                   CAST([TUSR_T_SO_BILL].[SO_BILL_STDCST_AMT_JPY] AS MONEY)
          ELSE
                   CAST([TUSR_T_SO_BILL].[SO_BILL_STDCST_AMT_JPY] * [TPRC_SDM_EX_DOC_TYPE_CATEGORY].[AMT_PM_DIV] AS MONEY)
          END                                       AS [SO_AMT_STD]
        , CASE
              WHEN [TPRC_SDM_EX_DOC_TYPE_CATEGORY].[SOURCE_SYSTEM_DOC_TYPE] IS NULL THEN
                   CAST([TUSR_T_SO_BILL].[SO_BILL_QTY] AS DECIMAL(20,4))
          ELSE
                   CAST([TUSR_T_SO_BILL].[SO_BILL_QTY] * [TPRC_SDM_EX_DOC_TYPE_CATEGORY].[QTY_PM_DIV] AS DECIMAL(20,4))
          END                                       AS [SO_QTY]
        , CASE
              WHEN [TPRC_SDM_EX_DOC_TYPE_CATEGORY].[SOURCE_SYSTEM_DOC_TYPE] IS NULL THEN
                   CAST([TUSR_T_SO_BILL].[SO_BILL_AMT_TP1] AS MONEY)
          ELSE
                   CAST([TUSR_T_SO_BILL].[SO_BILL_AMT_TP1] * [TPRC_SDM_EX_DOC_TYPE_CATEGORY].[AMT_PM_DIV] AS MONEY)
          END                                       AS [SO_AMT_TP1]
        , CASE
              WHEN [TPRC_SDM_EX_DOC_TYPE_CATEGORY].[SOURCE_SYSTEM_DOC_TYPE] IS NULL THEN
                   CAST([TUSR_T_SO_BILL].[SO_BILL_AMT_TP2] AS MONEY)
          ELSE
                   CAST([TUSR_T_SO_BILL].[SO_BILL_AMT_TP2] * [TPRC_SDM_EX_DOC_TYPE_CATEGORY].[AMT_PM_DIV] AS MONEY)
          END                                       AS [SO_AMT_TP2]
        , CASE
              WHEN [TPRC_SDM_EX_DOC_TYPE_CATEGORY].[SOURCE_SYSTEM_DOC_TYPE] IS NULL THEN
                   CAST([TUSR_T_SO_BILL].[SO_BILL_AMT_STD_USER] AS MONEY)
          ELSE
                   CAST([TUSR_T_SO_BILL].[SO_BILL_AMT_STD_USER] * [TPRC_SDM_EX_DOC_TYPE_CATEGORY].[AMT_PM_DIV] AS MONEY)
          END                                       AS [SO_AMT_STD_USER]
        , CASE
              WHEN [TPRC_SDM_EX_DOC_TYPE_CATEGORY].[SOURCE_SYSTEM_DOC_TYPE] IS NULL THEN
                   CAST([TUSR_T_SO_BILL].[SO_BILL_AMT_SRP] AS MONEY)
          ELSE
                   CAST([TUSR_T_SO_BILL].[SO_BILL_AMT_SRP] * [TPRC_SDM_EX_DOC_TYPE_CATEGORY].[AMT_PM_DIV] AS MONEY)
          END                                       AS [SO_AMT_SRP]
        , 0 AS [OSC_MoveAve_Cst]
        , 0 AS [OSC_MoveAve_GP_Amt]
   FROM [DM_SALES].[dbo].[TUSR_T_SO_BILL]
   LEFT JOIN [DM_MST].[dbo].[TPRC_SDM_EX_DOC_TYPE_CATEGORY]
          ON [TUSR_T_SO_BILL].[SOURCE_SYSTEM_DOC_TYPE] = [TPRC_SDM_EX_DOC_TYPE_CATEGORY].[SOURCE_SYSTEM_DOC_TYPE]
) BASE

GROUP BY [SCM_CUSTOMER_CD]
, [ORDER_PART_NO_CD]
, [SEG_CD]
, [CURRENCY]
, [RECORD_DATE]
, [ORDER_DATE]
, [RDLV_DATE]
, [SHIPTO_DATE]
GO
