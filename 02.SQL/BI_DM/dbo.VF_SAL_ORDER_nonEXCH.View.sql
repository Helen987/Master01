USE [BI_DM]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE VIEW [dbo].[VF_SAL_ORDER_nonEXCH] AS
SELECT
  [SCM_CUSTOMER_CD]
, [ORDER_PART_NO_CD]
, [SEG_CD]
, [CURRENCY]
, [RECORD_DATE]
, [ORDER_DATE]
, [RDLV_DATE]
, [RDLV_DIFF]
, SUM([TO_AMT_JPY]) AS [TO_AMT_JPY]
, SUM([TO_AMT_TTM]) AS [TO_AMT_TTM]
, SUM([TO_AMT_NET]) AS [TO_AMT_NET]
, SUM([TO_ANP_AMT_NET]) AS [TO_ANP_AMT_NET]
, SUM([TO_AMT_STD]) AS [TO_AMT_STD]
, SUM([TO_QTY]) AS [TO_QTY]
, SUM([GO_AMT_JPY]) AS [GO_AMT_JPY]
, SUM([GO_AMT_TTM]) AS [GO_AMT_TTM]
, SUM([GO_AMT_NET]) AS [GO_AMT_NET]
, SUM([GO_ANP_AMT_NET]) AS [GO_ANP_AMT_NET]
, SUM([GO_AMT_STD]) AS [GO_AMT_STD]
, SUM([GO_QTY]) AS [GO_QTY]
, SUM([SO_AMT_JPY]) AS [SO_AMT_JPY]
, SUM([SO_AMT_TTM]) AS [SO_AMT_TTM]
, SUM([SO_AMT_NET]) AS [SO_AMT_NET]
, SUM([SO_AMT_STD]) AS [SO_AMT_STD]
, SUM([SO_QTY]) AS [SO_QTY]
FROM (
   SELECT [TUSR_T_TO_BOOK].[SCM_CUSTOMER]           AS [SCM_CUSTOMER_CD]
        , [TUSR_T_TO_BOOK].[BOOKING_PN_CD]          AS [ORDER_PART_NO_CD]
        , [TUSR_T_TO_BOOK].[SEG_CD]
        , [TUSR_T_TO_BOOK].[CURRENCY]
        , [TUSR_T_TO_BOOK].[REGISTRATION_DATE]      AS [RECORD_DATE]
        , [TUSR_T_TO_BOOK].[BOOKING_DATE]           AS [ORDER_DATE]
        , [TUSR_T_TO_BOOK].[REQUEST_DATE]           AS [RDLV_DATE]
        , [TUSR_T_TO_BOOK].[REQUEST_DIFF_TYPE]      AS [RDLV_DIFF]
        , CASE
              WHEN [TPRC_SDM_EX_DOC_TYPE_CATEGORY].[SOURCE_SYSTEM_DOC_TYPE] IS NULL THEN
                   CAST([TUSR_T_TO_BOOK].[TO_BOOK_AMT_JPY] AS MONEY)
          ELSE
                   CAST([TUSR_T_TO_BOOK].[TO_BOOK_AMT_JPY] * [TPRC_SDM_EX_DOC_TYPE_CATEGORY].[AMT_PM_DIV] AS MONEY)
          END                                       AS [TO_AMT_JPY]
        , CASE
              WHEN [TPRC_SDM_EX_DOC_TYPE_CATEGORY].[SOURCE_SYSTEM_DOC_TYPE] IS NULL THEN
                   CAST([TUSR_T_TO_BOOK].[TO_BOOK_AMT_TTM] AS MONEY)
          ELSE
                   CAST([TUSR_T_TO_BOOK].[TO_BOOK_AMT_TTM] * [TPRC_SDM_EX_DOC_TYPE_CATEGORY].[AMT_PM_DIV] AS MONEY)
          END                                       AS [TO_AMT_TTM]
        , CASE
              WHEN [TPRC_SDM_EX_DOC_TYPE_CATEGORY].[SOURCE_SYSTEM_DOC_TYPE] IS NULL THEN
                   CAST([TUSR_T_TO_BOOK].[TO_BOOK_AMT] AS MONEY)
          ELSE
                   CAST([TUSR_T_TO_BOOK].[TO_BOOK_AMT] * [TPRC_SDM_EX_DOC_TYPE_CATEGORY].[AMT_PM_DIV] AS MONEY)
          END                                       AS [TO_AMT_NET]
        , CASE
              WHEN [TPRC_SDM_EX_DOC_TYPE_CATEGORY].[SOURCE_SYSTEM_DOC_TYPE] IS NULL THEN
                   CAST([TUSR_T_TO_BOOK].[TO_BOOK_ANP_AMT] AS MONEY)
          ELSE
                   CAST([TUSR_T_TO_BOOK].[TO_BOOK_ANP_AMT] * [TPRC_SDM_EX_DOC_TYPE_CATEGORY].[AMT_PM_DIV] AS MONEY)
          END                                       AS [TO_ANP_AMT_NET]
        , CASE
              WHEN [TPRC_SDM_EX_DOC_TYPE_CATEGORY].[SOURCE_SYSTEM_DOC_TYPE] IS NULL THEN
                   CAST([TUSR_T_TO_BOOK].[TO_BOOK_STDCST_AMT_JPY] AS MONEY)
          ELSE
                   CAST([TUSR_T_TO_BOOK].[TO_BOOK_STDCST_AMT_JPY] * [TPRC_SDM_EX_DOC_TYPE_CATEGORY].[AMT_PM_DIV] AS MONEY)
          END                                       AS [TO_AMT_STD]
        , CASE
              WHEN [TPRC_SDM_EX_DOC_TYPE_CATEGORY].[SOURCE_SYSTEM_DOC_TYPE] IS NULL THEN
                   CAST([TUSR_T_TO_BOOK].[TO_BOOK_QTY] AS DECIMAL(20,4))
          ELSE
                   CAST([TUSR_T_TO_BOOK].[TO_BOOK_QTY] * [TPRC_SDM_EX_DOC_TYPE_CATEGORY].[QTY_PM_DIV] AS DECIMAL(20,4))
          END                                       AS [TO_QTY]
        , 0 AS [GO_AMT_JPY]
        , 0 AS [GO_AMT_TTM]
        , 0 AS [GO_AMT_NET]
        , 0 AS [GO_ANP_AMT_NET]
        , 0 AS [GO_AMT_STD]
        , 0 AS [GO_QTY]
        , 0 AS [SO_AMT_JPY]
        , 0 AS [SO_AMT_TTM]
        , 0 AS [SO_AMT_NET]
        , 0 AS [SO_AMT_STD]
        , 0 AS [SO_QTY]
   FROM [DM_SALES].[dbo].[TUSR_T_TO_BOOK_HISTORY] [TUSR_T_TO_BOOK]
   LEFT JOIN [DM_MST].[dbo].[TPRC_SDM_EX_DOC_TYPE_CATEGORY]
          ON [TUSR_T_TO_BOOK].[SOURCE_SYSTEM_DOC_TYPE] = [TPRC_SDM_EX_DOC_TYPE_CATEGORY].[SOURCE_SYSTEM_DOC_TYPE]

UNION ALL

   SELECT [TUSR_T_GO_BOOK].[SCM_CUSTOMER]           AS [SCM_CUSTOMER_CD]
        , [TUSR_T_GO_BOOK].[BOOKING_PN_CD]          AS [ORDER_PART_NO_CD]
        , [TUSR_T_GO_BOOK].[SEG_CD]
        , [TUSR_T_GO_BOOK].[CURRENCY]
        , [TUSR_T_GO_BOOK].[REGISTRATION_DATE]      AS [RECORD_DATE]
        , [TUSR_T_GO_BOOK].[BOOKING_DATE]           AS [ORDER_DATE]
        , [TUSR_T_GO_BOOK].[REQUEST_DATE]           AS [RDLV_DATE]
        , [TUSR_T_GO_BOOK].[REQUEST_DIFF_TYPE]      AS [RDLV_DIFF]
        , 0 AS [TO_AMT_JPY]
        , 0 AS [TO_AMT_TTM]
        , 0 AS [TO_AMT_NET]
        , 0 AS [TO_ANP_AMT_NET]
        , 0 AS [TO_AMT_STD]
        , 0 AS [TO_QTY]
        , CASE
              WHEN [TPRC_SDM_EX_DOC_TYPE_CATEGORY].[SOURCE_SYSTEM_DOC_TYPE] IS NULL THEN
                   CAST([TUSR_T_GO_BOOK].[GO_BOOK_AMT_JPY] AS MONEY)
          ELSE
                   CAST([TUSR_T_GO_BOOK].[GO_BOOK_AMT_JPY] * [TPRC_SDM_EX_DOC_TYPE_CATEGORY].[AMT_PM_DIV] AS MONEY)
          END                                       AS [GO_AMT_JPY]
        , CASE
              WHEN [TPRC_SDM_EX_DOC_TYPE_CATEGORY].[SOURCE_SYSTEM_DOC_TYPE] IS NULL THEN
                   CAST([TUSR_T_GO_BOOK].[GO_BOOK_AMT_TTM] AS MONEY)
          ELSE
                   CAST([TUSR_T_GO_BOOK].[GO_BOOK_AMT_TTM] * [TPRC_SDM_EX_DOC_TYPE_CATEGORY].[AMT_PM_DIV] AS MONEY)
          END                                       AS [GO_AMT_TTM]
        , CASE
              WHEN [TPRC_SDM_EX_DOC_TYPE_CATEGORY].[SOURCE_SYSTEM_DOC_TYPE] IS NULL THEN
                   CAST([TUSR_T_GO_BOOK].[GO_BOOK_AMT] AS MONEY)
          ELSE
                   CAST([TUSR_T_GO_BOOK].[GO_BOOK_AMT] * [TPRC_SDM_EX_DOC_TYPE_CATEGORY].[AMT_PM_DIV] AS MONEY)
          END                                       AS [GO_AMT_NET]
        , CASE
              WHEN [TPRC_SDM_EX_DOC_TYPE_CATEGORY].[SOURCE_SYSTEM_DOC_TYPE] IS NULL THEN
                   CAST([TUSR_T_GO_BOOK].[GO_BOOK_ANP_AMT] AS MONEY)
          ELSE
                   CAST([TUSR_T_GO_BOOK].[GO_BOOK_ANP_AMT] * [TPRC_SDM_EX_DOC_TYPE_CATEGORY].[AMT_PM_DIV] AS MONEY)
          END                                       AS [GO_ANP_AMT_NET]
        , CASE
              WHEN [TPRC_SDM_EX_DOC_TYPE_CATEGORY].[SOURCE_SYSTEM_DOC_TYPE] IS NULL THEN
                   CAST([TUSR_T_GO_BOOK].[GO_BOOK_STDCST_AMT_JPY] AS MONEY)
          ELSE
                   CAST([TUSR_T_GO_BOOK].[GO_BOOK_STDCST_AMT_JPY] * [TPRC_SDM_EX_DOC_TYPE_CATEGORY].[AMT_PM_DIV] AS MONEY)
          END                                       AS [GO_AMT_STD]
        , CASE
              WHEN [TPRC_SDM_EX_DOC_TYPE_CATEGORY].[SOURCE_SYSTEM_DOC_TYPE] IS NULL THEN
                   CAST([TUSR_T_GO_BOOK].[GO_BOOK_QTY] AS DECIMAL(20,4))
          ELSE
                   CAST([TUSR_T_GO_BOOK].[GO_BOOK_QTY] * [TPRC_SDM_EX_DOC_TYPE_CATEGORY].[QTY_PM_DIV] AS DECIMAL(20,4))
          END                                       AS [GO_QTY]
        , 0 AS [SO_AMT_JPY]
        , 0 AS [SO_AMT_TTM]
        , 0 AS [SO_AMT_NET]
        , 0 AS [SO_AMT_STD]
        , 0 AS [SO_QTY]
   FROM [DM_SALES].[dbo].[TUSR_T_GO_BOOK]
   LEFT JOIN [DM_MST].[dbo].[TPRC_SDM_EX_DOC_TYPE_CATEGORY]
          ON [TUSR_T_GO_BOOK].[SOURCE_SYSTEM_DOC_TYPE] = [TPRC_SDM_EX_DOC_TYPE_CATEGORY].[SOURCE_SYSTEM_DOC_TYPE]

UNION ALL

   SELECT [TUSR_T_SO_BOOK].[SCM_CUSTOMER]           AS [SCM_CUSTOMER_CD]
        , [TUSR_T_SO_BOOK].[BOOKING_PN_CD]          AS [ORDER_PART_NO_CD]
        , [TUSR_T_SO_BOOK].[SEG_CD]
        , [TUSR_T_SO_BOOK].[CURRENCY]
        , [TUSR_T_SO_BOOK].[REGISTRATION_DATE]      AS [RECORD_DATE]
        , [TUSR_T_SO_BOOK].[BOOKING_DATE]           AS [ORDER_DATE]
        , [TUSR_T_SO_BOOK].[REQUEST_DATE]           AS [RDLV_DATE]
        , [TUSR_T_SO_BOOK].[REQUEST_DIFF_TYPE]      AS [RDLV_DIFF]
        , 0 AS [TO_AMT_JPY]
        , 0 AS [TO_AMT_TTM]
        , 0 AS [TO_AMT_NET]
        , 0 AS [TO_ANP_AMT_NET]
        , 0 AS [TO_AMT_STD]
        , 0 AS [TO_QTY]
        , 0 AS [GO_AMT_JPY]
        , 0 AS [GO_AMT_TTM]
        , 0 AS [GO_AMT_NET]
        , 0 AS [GO_ANP_AMT_NET]
        , 0 AS [GO_AMT_STD]
        , 0 AS [GO_QTY]
        , CASE
              WHEN [TPRC_SDM_EX_DOC_TYPE_CATEGORY].[SOURCE_SYSTEM_DOC_TYPE] IS NULL THEN
                   CAST([TUSR_T_SO_BOOK].[SO_BOOK_AMT_JPY] AS MONEY)
          ELSE
                   CAST([TUSR_T_SO_BOOK].[SO_BOOK_AMT_JPY] * [TPRC_SDM_EX_DOC_TYPE_CATEGORY].[AMT_PM_DIV] AS MONEY)
          END                                       AS [SO_AMT_JPY]
        , CASE
              WHEN [TPRC_SDM_EX_DOC_TYPE_CATEGORY].[SOURCE_SYSTEM_DOC_TYPE] IS NULL THEN
                   CAST([TUSR_T_SO_BOOK].[SO_BOOK_AMT_TTM] AS MONEY)
          ELSE
                   CAST([TUSR_T_SO_BOOK].[SO_BOOK_AMT_TTM] * [TPRC_SDM_EX_DOC_TYPE_CATEGORY].[AMT_PM_DIV] AS MONEY)
          END                                       AS [SO_AMT_TTM]
        , CASE
              WHEN [TPRC_SDM_EX_DOC_TYPE_CATEGORY].[SOURCE_SYSTEM_DOC_TYPE] IS NULL THEN
                   CAST([TUSR_T_SO_BOOK].[SO_BOOK_AMT] AS MONEY)
          ELSE
                   CAST([TUSR_T_SO_BOOK].[SO_BOOK_AMT] * [TPRC_SDM_EX_DOC_TYPE_CATEGORY].[AMT_PM_DIV] AS MONEY)
          END                                       AS [SO_AMT_NET]
        , CASE
              WHEN [TPRC_SDM_EX_DOC_TYPE_CATEGORY].[SOURCE_SYSTEM_DOC_TYPE] IS NULL THEN
                   CAST([TUSR_T_SO_BOOK].[SO_BOOK_STDCST_AMT_JPY] AS MONEY)
          ELSE
                   CAST([TUSR_T_SO_BOOK].[SO_BOOK_STDCST_AMT_JPY] * [TPRC_SDM_EX_DOC_TYPE_CATEGORY].[AMT_PM_DIV] AS MONEY)
          END                                       AS [SO_AMT_STD]
        , CASE
              WHEN [TPRC_SDM_EX_DOC_TYPE_CATEGORY].[SOURCE_SYSTEM_DOC_TYPE] IS NULL THEN
                   CAST([TUSR_T_SO_BOOK].[SO_BOOK_QTY] AS DECIMAL(20,4))
          ELSE
                   CAST([TUSR_T_SO_BOOK].[SO_BOOK_QTY] * [TPRC_SDM_EX_DOC_TYPE_CATEGORY].[QTY_PM_DIV] AS DECIMAL(20,4))
          END                                       AS [SO_QTY]
   FROM [DM_SALES].[dbo].[TUSR_T_SO_BOOK]
   LEFT JOIN [DM_MST].[dbo].[TPRC_SDM_EX_DOC_TYPE_CATEGORY]
          ON [TUSR_T_SO_BOOK].[SOURCE_SYSTEM_DOC_TYPE] = [TPRC_SDM_EX_DOC_TYPE_CATEGORY].[SOURCE_SYSTEM_DOC_TYPE]
) BASE

GROUP BY [SCM_CUSTOMER_CD]
, [ORDER_PART_NO_CD]
, [SEG_CD]
, [CURRENCY]
, [RECORD_DATE]
, [ORDER_DATE]
, [RDLV_DATE]
, [RDLV_DIFF]
GO
