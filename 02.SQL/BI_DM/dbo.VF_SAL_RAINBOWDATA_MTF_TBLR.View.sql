USE [BI_DM]
GO
/****** Object:  View [dbo].[VF_SAL_RAINBOWDATA_MTF_TBLR]    Script Date: 2018/03/22 11:47:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE VIEW [dbo].[VF_SAL_RAINBOWDATA_MTF_TBLR] AS
SELECT
    [OPPSEQ]
   ,[SCM_CUSTOMER_CD]  AS [DIN_SCM_CUSTOMER_CD]
   ,[FTCUSTOMERCD]AS [BWIN_SCM_CUSTOMER_CD]
   ,[ORDER_PART_NO_CD]
   ,[SEG_CD]
   ,[BUSINESS_SITE]
   ,[CALENDAR_YM]
   ,[UPDATE_DATE]
   ,[DINPLANDATE]
   ,[STAGEDIV]
   ,[OFFSHOREFLG]
   ,[DUPLILTVDIV]
   ,[MTFRATE]
   ,[MTFDATADIV]
   ,[CURRENCY]
   ,[CURRENCY_EXCH]
   ,[AMT]
--2017/10/13 各種STDCST対応 aoki <S>
--   ,ISNULL([STDCST_AMT_EXCH],0) AS [STDCSTAMT_EXCH]
--   ,ISNULL([STDCST_AMT_EXCH_MLR],0) AS [STDCSTAMT_EXCH_MLR]
--2017/10/13 各種STDCST対応 aoki <E>
   ,[PROBABILITY]
   ,[LTVACCURACY]
   ,[ID] AS [id]
   ,PRODUCT_DATASHEET_ID
   -- 補正前の値
   ,CASE
        WHEN MTF_RATE_FLG = 0 AND DUPLILTVDIV = '2' THEN QTY_INC_DUP
        WHEN MTF_RATE_FLG = 1 AND DUPLILTVDIV = '2' THEN QTY_INC_DUP
        WHEN MTF_RATE_FLG = 2 AND DUPLILTVDIV = '3' THEN QTY_INC_DUP
        ELSE QTY
        END AS QTY_INC_DUP
   ,CASE
        WHEN MTF_RATE_FLG = 0 AND DUPLILTVDIV = '2' THEN MTF_INC_DUP_AMT
        WHEN MTF_RATE_FLG = 1 AND DUPLILTVDIV = '2' THEN MTF_INC_DUP_AMT
        WHEN MTF_RATE_FLG = 2 AND DUPLILTVDIV = '3' THEN MTF_INC_DUP_AMT
        ELSE AMT_EXCH
        END AS MTF_INC_DUP_AMT
   ,CASE
        WHEN MTF_RATE_FLG = 0 AND DUPLILTVDIV = '2' THEN MTF_INC_DUP_AMT_MLR
        WHEN MTF_RATE_FLG = 1 AND DUPLILTVDIV = '2' THEN MTF_INC_DUP_AMT_MLR
        WHEN MTF_RATE_FLG = 2 AND DUPLILTVDIV = '3' THEN MTF_INC_DUP_AMT_MLR
        ELSE AMT_EXCH_MLR
        END AS MTF_INC_DUP_AMT_MLR
--2017/10/13 各種STDCST対応 aoki <S>
    ,ISNULL(CASE
        WHEN MTF_RATE_FLG = 0 AND DUPLILTVDIV = '2' THEN MTF_INC_DUP_STDCST_AMT
        WHEN MTF_RATE_FLG = 1 AND DUPLILTVDIV = '2' THEN MTF_INC_DUP_STDCST_AMT
        WHEN MTF_RATE_FLG = 2 AND DUPLILTVDIV = '3' THEN MTF_INC_DUP_STDCST_AMT
        ELSE STDCST_AMT_EXCH
        END,0) AS MTF_INC_DUP_STDCST_AMT
    ,ISNULL(CASE
        WHEN MTF_RATE_FLG = 0 AND DUPLILTVDIV = '2' THEN MTF_INC_DUP_STDCST_AMT_MLR
        WHEN MTF_RATE_FLG = 1 AND DUPLILTVDIV = '2' THEN MTF_INC_DUP_STDCST_AMT_MLR
        WHEN MTF_RATE_FLG = 2 AND DUPLILTVDIV = '3' THEN MTF_INC_DUP_STDCST_AMT_MLR
        ELSE STDCST_AMT_EXCH_MLR
        END,0) AS MTF_INC_DUP_STDCST_AMT_MLR
--2017/10/13 各種STDCST対応 aoki <E>

   -- MTF_RATE補正の値
   ,CASE 
        WHEN MTF_RATE_FLG = 2 AND DUPLILTVDIV = '3' THEN QTY_INC_DUP * MTFRATE/100
        ELSE QTY
        END AS QTY
   ,CASE 
        WHEN MTF_RATE_FLG = 2 AND DUPLILTVDIV = '3' THEN MTF_INC_DUP_AMT * MTFRATE/100
        ELSE AMT_EXCH
        END AS AMT_EXCH
   ,CASE 
        WHEN MTF_RATE_FLG = 2 AND DUPLILTVDIV = '3' THEN MTF_INC_DUP_AMT_MLR * MTFRATE/100
        ELSE AMT_EXCH_MLR
        END AS AMT_EXCH_MLR

--2017/10/13 各種STDCST対応 aoki <S>
   ,ISNULL(CASE
        WHEN MTF_RATE_FLG = 2 AND DUPLILTVDIV = '3' THEN MTF_INC_DUP_STDCST_AMT * MTFRATE/100
        ELSE STDCST_AMT_EXCH
        END,0) AS STDCSTAMT_EXCH
   ,ISNULL(CASE
        WHEN MTF_RATE_FLG = 2 AND DUPLILTVDIV = '3' THEN MTF_INC_DUP_STDCST_AMT_MLR * MTFRATE/100
        ELSE STDCST_AMT_EXCH_MLR
        END,0) AS STDCSTAMT_EXCH_MLR
--2017/10/13 各種STDCST対応 aoki <E>

   -- LTV_ACC補正の値
   ,CASE
        WHEN MTF_RATE_FLG = 0 AND DUPLILTVDIV = '2' THEN QTY * LTVACCURACY/100
        WHEN MTF_RATE_FLG = 1 AND DUPLILTVDIV = '2' AND MTFRATE = 0 THEN QTY * LTVACCURACY/100
        ELSE QTY
        END AS QTY_LTV
   ,CASE
        WHEN MTF_RATE_FLG = 0 AND DUPLILTVDIV = '2' THEN AMT_EXCH * LTVACCURACY/100
        WHEN MTF_RATE_FLG = 1 AND DUPLILTVDIV = '2' AND MTFRATE = 0 THEN AMT_EXCH * LTVACCURACY/100
        ELSE AMT_EXCH
        END AS LTV_ACC_ADJ_AMT
   ,CASE
        WHEN MTF_RATE_FLG = 0 AND DUPLILTVDIV = '2' THEN AMT_EXCH_MLR * LTVACCURACY/100
        WHEN MTF_RATE_FLG = 1 AND DUPLILTVDIV = '2' AND MTFRATE = 0 THEN AMT_EXCH_MLR * LTVACCURACY/100
        ELSE AMT_EXCH_MLR
        END AS LTV_ACC_ADJ_AMT_MLR

--2017/10/13 各種STDCST対応 aoki <S>
   ,ISNULL(CASE
        WHEN MTF_RATE_FLG = 0 AND DUPLILTVDIV = '2' THEN MTF_INC_DUP_STDCST_AMT * LTVACCURACY/100
        WHEN MTF_RATE_FLG = 1 AND DUPLILTVDIV = '2' AND MTFRATE = 0 THEN MTF_INC_DUP_STDCST_AMT * LTVACCURACY/100
        ELSE STDCST_AMT_EXCH
        END,0) AS LTV_ACC_ADJ_STDCST_AMT
   ,ISNULL(CASE
        WHEN MTF_RATE_FLG = 0 AND DUPLILTVDIV = '2' THEN MTF_INC_DUP_STDCST_AMT_MLR * LTVACCURACY/100
        WHEN MTF_RATE_FLG = 1 AND DUPLILTVDIV = '2' AND MTFRATE = 0 THEN MTF_INC_DUP_STDCST_AMT_MLR * LTVACCURACY/100
        ELSE STDCST_AMT_EXCH_MLR
        END,0) AS LTV_ACC_ADJ_STDCST_AMT_MLR
--2017/10/13 各種STDCST対応 aoki <E>

   ,MTF_RATE_FLG
FROM [BI_DM].[dbo].[F_RBW_MTF_L_EXCH_MLR]
UNION ALL
SELECT
    [OPPSEQ]
   ,[SCM_CUSTOMER_CD]  AS [DIN_SCM_CUSTOMER_CD]
   ,[FTCUSTOMERCD]AS [BWIN_SCM_CUSTOMER_CD]
   ,[ORDER_PART_NO_CD]
   ,[SEG_CD]
   ,[BUSINESS_SITE]
   ,[CALENDAR_YM]
   ,[UPDATE_DATE]
   ,[DINPLANDATE]
   ,[STAGEDIV]
   ,[OFFSHOREFLG]
   ,[DUPLILTVDIV]
   ,[MTFRATE]
   ,[MTFDATADIV]
   ,[CURRENCY]
   ,[CURRENCY_EXCH]
   ,0 as [AMT]
--2017/10/13 各種STDCST対応 aoki <S>
--   ,0 as [STDCSTAMT_EXCH]
--   ,0 as [STDCSTAMT_EXCH_MLR]
--2017/10/13 各種STDCST対応 aoki <E>
   ,[PROBABILITY]
   ,[LTVACCURACY]
   ,NEWID() as [id]
   ,CONCAT(
    LEFT(CONCAT([SALES_ORDER_PART_NO], REPLICATE(' ', 18)),18),
    LEFT(CONCAT([DINCUSTCD], REPLICATE(' ', 10)),10),
    [SIP_KBN]) AS [PRODUCT_DATASHEET_ID]
   -- 補正前の値
   ,0 AS QTY_INC_DUP
   ,0 AS MTF_INC_DUP_AMT
   ,0 AS MTF_INC_DUP_AMT_MLR
--2017/10/13 各種STDCST対応 aoki <S>
   ,0 AS MTF_INC_DUP_STDCST_AMT
   ,0 AS MTF_INC_DUP_STDCST_AMT_MLR
--2017/10/13 各種STDCST対応 aoki <E>
   -- MTF_RATE補正の値
--SUBチップ区分が数量が取得できない対応 gaoxin<S>
--   ,0 AS QTY
   ,[QTY] * [SHIYOSU] as [QTY]
--SUBチップ区分が数量が取得できない対応 gaoxin<E>
   ,0 AS AMT_EXCHT
   ,0 AS AMT_EXCH_MLR
--2017/10/13 各種STDCST対応 aoki <S>
   ,0 AS STDCSTAMT_EXCH
   ,0 AS STDCSTAMT_EXCH_MLR
--2017/10/13 各種STDCST対応 aoki <E>
   -- LTV_ACC補正の値
   ,0 AS QTY_LTV
   ,0 AS LTV_ACC_ADJ_AMT
   ,0 AS LTV_ACC_ADJ_AMT_MLR
--2017/10/13 各種STDCST対応 aoki <S>
   ,0 AS LTV_ACC_ADJ_STDCST_AMT
   ,0 AS LTV_ACC_ADJ_STDCST_AMT_MLR
--2017/10/13 各種STDCST対応 aoki <E>
   ,NULL AS MTF_RATE_FLG
FROM [F_RBW_MTF_L_EXCH_MLR] MTF
INNER JOIN [dbo].[MPRC_DCP_PRODUCT_DATASHEET] PRDSHT
ON MTF.[ORDER_PART_NO_CD] = PRDSHT.[SALES_ORDER_PART_NO]
AND MTF.[SCM_CUSTOMER_CD] = PRDSHT.[DINCUSTCD]
AND PRDSHT.SIP_KBN LIKE 'SUB%'


GO
