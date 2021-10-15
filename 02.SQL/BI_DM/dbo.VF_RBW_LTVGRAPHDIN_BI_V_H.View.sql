USE [BI_DM]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [dbo].[VF_RBW_LTVGRAPHDIN_BI_V_H] AS
SELECT
  T.OPPORTUNITY_SEQ
  ,T.OPPORTUNITY_NO
  ,T.OPPORTUNITY_SEQ_PRD
  ,T.STAGE
  ,T.D_IN_SCM_CUST_CODE_FOR_MTF
  ,T.D_IN_SCM_CUST_CODE_FOR_SCM_OPE
  ,T.B_WIN_SCM_CUSTOMER_CODE
  ,T.SALES_ORDER_PN_FOR_MTF
  ,T.SALES_ORDER_PN_FOR_SCM_OPE
  ,T.OPP_APPLICATION3_CODE
  ,T.PRD_APPLICATION3_CODE
  ,T.CHANNEL_PARTNER_CODE
  ,T.CHANNEL_PARTNER_NAME
  ,T.STATUS
  ,T.TARGET_NOMINATION_DATE
  ,T.TARGET_AWARD_DATE
  ,T.APPROVED_DATE
  ,T.D_IN_CONFIDENCE_LEVEL_PERCENT
  ,T.QTY_UNIT
  ,T.SHARE_PERCENT
  ,T.START_MONTH_OF_FISCAL_YEAR
  ,T.MP_START_MONTH
  ,T.ACCOUNT_GROUP_CODE
  ,ACCOUNT.ACCOUNT_NAME
  ,T.CURRENCY
  ,T.KCOMPANYG2CD
  ,T.KSALESAGENTCD
  ,T.KCUSTOMERCD
  ,T.BASEPN
  ,T.S1DATE
  ,T.CALENDAR_YM
  ,T.LTV_AMT
  ,T.BILL_AMT
  ,T.ALLOC_BILL_AMT
  ,T.ALLOC_SF_AMT
  ,T.BILL_AMT_BEYOND_LTV
  ,T.SF_AMT_BEYOND_LTV
  ,T.UPDATE_DATE
  ,REPLACE(CAST(T.UPDATE_DATE AS CHAR(10)) ,'-', '')                             AS DISP_UPDATE_DATE
  ,T.LATEST_FLG
  ,T.TARGET_NOMINATION_DATE_D
  ,T.TARGET_AWARD_DATE_D
  ,T.MP_START_DATE
FROM
(
SELECT
   LTV.OPPSEQ                                                                    AS OPPORTUNITY_SEQ
  ,SUBSTRING(LTV.OPPSEQ, 1, 7)                                                   AS OPPORTUNITY_NO
  ,SUBSTRING(LTV.OPPSEQ, 1, 10)                                                  AS OPPORTUNITY_SEQ_PRD
  ,PRD.STAGE                                                                     AS STAGE
  ,LTV.CUSTOMERCD                                                                AS D_IN_SCM_CUST_CODE_FOR_MTF
  ,NULL                                                                          AS D_IN_SCM_CUST_CODE_FOR_SCM_OPE
  ,NULL                                                                          AS B_WIN_SCM_CUSTOMER_CODE
  ,[dbo].[SF_ConvertPartNoCD](LTV.PARTNO)                                        AS SALES_ORDER_PN_FOR_MTF
  ,NULL                                                                          AS SALES_ORDER_PN_FOR_SCM_OPE
  ,NULL                                                                          AS OPP_APPLICATION3_CODE
  ,LTV.APPLCAT3CD                                                                AS PRD_APPLICATION3_CODE
  ,OPP.CHANNEL_PARTNER_CODE                                                      AS CHANNEL_PARTNER_CODE
  ,OPP.CHANNEL_PARTNER_NAME                                                      AS CHANNEL_PARTNER_NAME
  ,PRD.STATUS                                                                    AS STATUS
  ,PRD.TARGET_NOMINATION_DATE                                                    AS TARGET_NOMINATION_DATE
  ,PRD.TARGET_AWARD_DATE                                                         AS TARGET_AWARD_DATE
  ,PRD.APPROVED_DATE                                                             AS APPROVED_DATE
  ,PRD.D_IN_CONFIDENCE_LEVEL_PERCENT                                             AS D_IN_CONFIDENCE_LEVEL_PERCENT
  ,PRD.QTY_UNIT                                                                  AS QTY_UNIT
  ,PRD.SHARE_PERCENT                                                             AS SHARE_PERCENT
  ,PRD.START_MONTH_OF_FISCAL_YEAR                                                AS START_MONTH_OF_FISCAL_YEAR
  ,PRD.MP_START_MONTH                                                            AS MP_START_MONTH
  ,OPP.ACCOUNT_GROUP_CODE                                                        AS ACCOUNT_GROUP_CODE
  ,LTV.LATESTLTVCURRENCYCD                                                       AS CURRENCY
  ,LTV.KCOMPANYG2CD                                                              AS KCOMPANYG2CD
  ,LTV.KSALESAGENTCD                                                             AS KSALESAGENTCD
  ,LTV.KCUSTOMERCD                                                               AS KCUSTOMERCD
  ,LTV.BASEPN                                                                    AS BASEPN
  ,LTV.S1DATE                                                                    AS S1DATE
  ,CAST((LTV.NENKI + '01') AS DATE)                                              AS CALENDAR_YM
  ,LTV.LTVAMT                                                                    AS LTV_AMT
  ,LTV.BILLAMT                                                                   AS BILL_AMT
  ,LTV.ALLOCBILLAMT                                                              AS ALLOC_BILL_AMT
  ,LTV.ALLOCSFAMT                                                                AS ALLOC_SF_AMT
  ,LTV.BILLAMTBEYONDLTV                                                          AS BILL_AMT_BEYOND_LTV
  ,LTV.SFAMTBEYONDLTV                                                            AS SF_AMT_BEYOND_LTV
  ,LTV.UPDATE_DATE                                                               AS UPDATE_DATE
  ,'0'                                                                           AS LATEST_FLG
  ,PRD.TARGET_NOMINATION_DATE_D                                                  AS TARGET_NOMINATION_DATE_D
  ,PRD.TARGET_AWARD_DATE_D                                                       AS TARGET_AWARD_DATE_D
  ,PRD.MP_START_DATE                                                             AS MP_START_DATE
FROM
  [BI_DW].[dbo].[T_RBW_LTVGRAPHDIN_BI_V_H] LTV
LEFT OUTER JOIN
  [BI_DW].[dbo].[T_SFM_BCCV_OPP_PRODUCT_VIEW_H] PRD
ON
  LTV.OPPSEQ = PRD.OPPORTUNITY_SEQ
  AND LTV.UPDATE_DATE = PRD.UPDATE_DATE
LEFT OUTER JOIN
  [BI_DW].[dbo].[T_SFM_BCCV_OPPORTUNITY_VIEW_H] OPP
ON
  SUBSTRING(LTV.OPPSEQ, 1, 7) = OPP.OPPORTUNITY_NO
  AND LTV.UPDATE_DATE = OPP.UPDATE_DATE
 ) T
LEFT OUTER JOIN
  [BI_DW].[dbo].[R_SFM_BCCV_ACCOUNT_VIEW] ACCOUNT
ON
  T.ACCOUNT_GROUP_CODE = ACCOUNT.ACCOUNT_GROUP_CODE





GO
