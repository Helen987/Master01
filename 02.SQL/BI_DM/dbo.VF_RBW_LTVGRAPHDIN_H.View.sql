USE [BI_DM]
GO
/****** Object:  View [dbo].[VF_RBW_LTVGRAPHDIN_H]    Script Date: 2017/02/27 11:19:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO





CREATE VIEW [dbo].[VF_RBW_LTVGRAPHDIN_H] AS
WITH [VD_APL3] AS
(
SELECT DISTINCT
       [APL3]
      ,[APL1]
      ,[APL2]
FROM [BI_DM].[dbo].[M_APL_CUST_BOOK_PN]
)
SELECT
   OPPORTUNITY_SEQ
  ,OPPORTUNITY_NO
  ,OPPORTUNITY_SEQ_PRD
  ,STAGE
  ,D_IN_SCM_CUST_CODE_FOR_MTF
  ,D_IN_SCM_CUST_CODE_FOR_SCM_OPE
  ,B_WIN_SCM_CUSTOMER_CODE
  ,SALES_ORDER_PN_FOR_MTF
  ,SALES_ORDER_PN_FOR_SCM_OPE
  ,OPP_APPLICATION3_CODE
  ,[VD_APL3].APL1 AS PRD_APPLICATION1_CODE
  ,[VD_APL3].APL2 AS PRD_APPLICATION2_CODE
  ,PRD_APPLICATION3_CODE
  ,CHANNEL_PARTNER_CODE
  ,CHANNEL_PARTNER_NAME
  ,STATUS
  ,CASE WHEN TARGET_NOMINATION_DATE IS NULL THEN TARGET_NOMINATION_DATE
   ELSE CAST((TARGET_NOMINATION_DATE + '/01') AS DATE)
   END AS TARGET_NOMINATION_DATE
  ,CASE WHEN TARGET_AWARD_DATE IS NULL THEN TARGET_AWARD_DATE
   ELSE CAST((TARGET_AWARD_DATE + '/01') AS DATE)
   END AS TARGET_AWARD_DATE
  ,APPROVED_DATE
  ,D_IN_CONFIDENCE_LEVEL_PERCENT
  ,QTY_UNIT
  ,SHARE_PERCENT
  ,START_MONTH_OF_FISCAL_YEAR
  ,MP_START_MONTH
  ,ACCOUNT_GROUP_CODE
  ,ACCOUNT_NAME
  ,CURRENCY
  ,CURRENCY_TYPE 
  ,KCOMPANYG2CD
  ,KSALESAGENTCD
  ,KCUSTOMERCD
  ,BASEPN
  ,S1DATE
  ,CALENDAR_YM
  ,LTVAMT
  ,BILLAMT
  ,ALLOCBILLAMT
  ,ALLOCSFAMT
  ,BILLAMTBEYONDLTV
  ,SFAMTBEYONDLTV
  ,UPDATE_DATE
  ,DISP_UPDATE_DATE
  ,LATEST_FLG
  ,TARGET_NOMINATION_DATE_D
  ,TARGET_AWARD_DATE_D
  ,MP_START_DATE
FROM
  [BI_DM].[dbo].[F_RBW_LTVGRAPHDIN_H]
LEFT JOIN [VD_APL3]
ON [VD_APL3].APL3 = [BI_DM].[dbo].[F_RBW_LTVGRAPHDIN_H].PRD_APPLICATION3_CODE
UNION ALL
SELECT
   OPPORTUNITY_SEQ
  ,OPPORTUNITY_NO
  ,OPPORTUNITY_SEQ_PRD
  ,STAGE
  ,D_IN_SCM_CUST_CODE_FOR_MTF
  ,D_IN_SCM_CUST_CODE_FOR_SCM_OPE
  ,B_WIN_SCM_CUSTOMER_CODE
  ,SALES_ORDER_PN_FOR_MTF
  ,SALES_ORDER_PN_FOR_SCM_OPE
  ,OPP_APPLICATION3_CODE
  ,[VD_APL3].APL1 AS PRD_APPLICATION1_CODE
  ,[VD_APL3].APL2 AS PRD_APPLICATION2_CODE
  ,PRD_APPLICATION3_CODE
  ,CHANNEL_PARTNER_CODE
  ,CHANNEL_PARTNER_NAME
  ,STATUS
  ,CASE WHEN TARGET_NOMINATION_DATE IS NULL THEN TARGET_NOMINATION_DATE
   ELSE CAST((TARGET_NOMINATION_DATE + '/01') AS DATE)
   END AS TARGET_NOMINATION_DATE
  ,CASE WHEN TARGET_AWARD_DATE IS NULL THEN TARGET_AWARD_DATE
   ELSE CAST((TARGET_AWARD_DATE + '/01') AS DATE)
   END AS TARGET_AWARD_DATE
  ,APPROVED_DATE
  ,D_IN_CONFIDENCE_LEVEL_PERCENT
  ,QTY_UNIT
  ,SHARE_PERCENT
  ,START_MONTH_OF_FISCAL_YEAR
  ,MP_START_MONTH
  ,ACCOUNT_GROUP_CODE
  ,ACCOUNT_NAME
  ,CURRENCY
  ,CURRENCY_TYPE 
  ,KCOMPANYG2CD
  ,KSALESAGENTCD
  ,KCUSTOMERCD
  ,BASEPN
  ,S1DATE
  ,CALENDAR_YM
  ,LTVAMT
  ,BILLAMT
  ,ALLOCBILLAMT
  ,ALLOCSFAMT
  ,BILLAMTBEYONDLTV
  ,SFAMTBEYONDLTV
  ,UPDATE_DATE
  ,DISP_UPDATE_DATE
  ,LATEST_FLG
  ,TARGET_NOMINATION_DATE_D
  ,TARGET_AWARD_DATE_D
  ,MP_START_DATE
FROM
  [BI_DM].[dbo].[F_RBW_LTVGRAPHDIN_L]
LEFT JOIN [VD_APL3]
ON [VD_APL3].APL3 = [BI_DM].[dbo].[F_RBW_LTVGRAPHDIN_L].PRD_APPLICATION3_CODE





GO
