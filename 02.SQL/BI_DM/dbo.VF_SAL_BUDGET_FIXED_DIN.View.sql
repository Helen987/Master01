USE [BI_DM]
GO
/****** Object:  View [dbo].[VF_SAL_BUDGET_FIXED_DIN]    Script Date: 2017/02/14 14:20:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [dbo].[VF_SAL_BUDGET_FIXED_DIN] AS
SELECT   [SCM_CUSTOMER_CD]
       , [B_WIN_SCM_CUSTOMER_CD]
       , [ORDER_PART_NO_CD]
       , [SEG_CD]
       , [BUSINESS_SITE]
       , [CALENDAR_YM]
       , [CURRENCY]
       , [VERSION_RESULT]
       , [CURRENCY_EXCH]
       , [TO_AMT]
       , [TO_AMT_JPY]
       , [TO_STD]
       , [TO_QTY]
       , [GO_AMT]
       , [GO_AMT_JPY]
       , [GO_STD]
       , [GO_QTY]
       , [SO_AMT]
       , [SO_AMT_JPY]
       , [SO_STD]
       , [SO_QTY]
       , [GO_AMT_NB_Bwin]
       , [GO_AMT_NB_Din]
FROM     [BI_DM].[dbo].[F_SAL_BUDGET_FIXED_DIN]
WHERE    ([VERSION_RESULT] IN (N'0', N'H'))
UNION ALL
SELECT   [SCM_CUSTOMER_CD]
       , [B_WIN_SCM_CUSTOMER_CD]
       , [ORDER_PART_NO_CD]
       , [SEG_CD]
       , [BUSINESS_SITE]
       , [CALENDAR_YM]
       , [CURRENCY]
       , [VERSION_RESULT]
       , [CURRENCY_EXCH]
       , [TO_AMT]
       , [TO_AMT_JPY]
       , [TO_STD]
       , [TO_QTY]
       , [GO_AMT]
       , [GO_AMT_JPY]
       , [GO_STD]
       , [GO_QTY]
       , [SO_AMT]
       , [SO_AMT_JPY]
       , [SO_STD]
       , [SO_QTY]
       , [GO_AMT_NB_Bwin]
       , [GO_AMT_NB_Din]
FROM     [BI_DM].[dbo].[F_SAL_BUDGET_FIXED_DIN]
WHERE ([VERSION_RESULT] IN
                            (SELECT            MAX([VERSION_RESULT])
                               FROM              [BI_DM].[dbo].[F_SAL_BUDGET_FIXED_DIN]
                               WHERE             ([VERSION_RESULT] NOT IN (N'0', N'H', N'O'))/*-N'1', N'2', N'3'*/ ))
--INXS‘Î‰ž
UNION ALL
SELECT
         [SCM_CUSTOMER_CD]
       , [B_WIN_SCM_CUSTOMER_CD]
       , [ORDER_PART_NO_CD]
       , [SEG_CD]GO
       , [BUSINESS_SITE]
       , [CALENDAR_YM]
       , [CURRENCY]
       , [VERSION_RESULT]
       , [CURRENCY_EXCH]
       , [TO_AMT]
       , [TO_AMT_JPY]
       , [TO_STD]
       , [TO_QTY]
       , [GO_AMT]
       , [GO_AMT_JPY]
       , [GO_STD]
       , [GO_QTY]
       , [SO_AMT]
       , [SO_AMT_JPY]
       , [SO_STD]
       , [SO_QTY]
       , [GO_AMT_NB_Bwin]
       , [GO_AMT_NB_Din]
FROM [DM_SALES].[dbo].[TPRC_T_NREL_BUDGET_DIN]

;



GO


