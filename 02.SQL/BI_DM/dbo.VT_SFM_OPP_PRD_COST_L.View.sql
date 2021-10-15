USE [BI_DM]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[VT_SFM_OPP_PRD_COST_L] AS
SELECT
   OPPORTUNITY_SEQ
  ,OPPORTUNITY_NO
  ,D_IN_SCM_CUST_CODE_FOR_MTF
  ,D_IN_SCM_CUST_CODE_FOR_SCM_OPE
  ,B_WIN_SCM_CUSTOMER_CODE
  ,SALES_ORDER_PN_FOR_MTF
  ,SALES_ORDER_PN_FOR_SCM_OPE
  ,OPP_APPLICATION3_CODE
  ,APPROVED_DATE
  ,CURRENCY
  ,CURRENCY_TYPE 
  ,CALENDAR_YM
  ,AMOUNT
  ,UPDATE_DATE
  ,DISP_UPDATE_DATE
  ,TARGET_NOMINATION_DATE_D
  ,TARGET_AWARD_DATE_D
  ,OPP_APPLICATION1_CODE
  ,OPP_APPLICATION2_CODE
  ,MP_START_DATE
  ,GP_AMOUNT
  ,CALENDAR_YEAR_MONTH_DATE
  ,CRM_APPROVALDATE
  ,CRM_APPROVELREQUESTDATE
  ,CRM_AWARDAPPROVEDDATE
  ,CREATEDDATE
  ,CRM_STATUSUPDATEDATE
  ,CRM_DINACTUALDATE
  ,CRM_DINACTUALNEWDATE
  ,CRM_DINAPPROVEDDATE
  ,CRM_DINDATE
  ,CRM_DINREQUESTDATE
  ,CRM_DINTARGETDATE
  ,CRM_DRAPPROVEDDATE
  ,CRM_DREXPIRATIONDATE
  ,CRM_EXCLUDEDISTI_COMMENTDATE
  ,LASTMODIFIEDDATE
  ,CRM_LASTSTAGEMODIFIEDDATE
  ,CRM_LATEST_COMMENTDATE
  ,CRM_MPEND
  ,CRM_NOMINATIONAPPROVEDDATE
  ,CRM_NOMINATIONREQUESTDATE
  ,CRM_S0ACTUALDATE
  ,CRM_S1ACTUALDATE
  ,CRM_S2ACTUALDATE
  ,CRM_S3ACTUALDATE
  ,CRM_S4ACTUALDATE
  ,CRM_USERLASTMODIFIEDDATE
FROM
  [BI_DM].[dbo].[F_SFM_OPP_PRD_DEMAND_AGGREGATE_L]
WHERE (AMOUNT <> 0
or GP_AMOUNT <> 0)
AND OPPORTUNITY_SEQ IS NOT NULL
GO
