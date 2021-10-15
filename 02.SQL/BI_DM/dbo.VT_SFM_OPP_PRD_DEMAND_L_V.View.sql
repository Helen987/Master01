USE [BI_DM]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[VT_SFM_OPP_PRD_DEMAND_L_V] AS
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
  ,CALENDAR_YM
  ,QUANTITY_1PIECE
  ,PRICE
  ,AMOUNT
  ,AMOUNT_STD
  ,AMOUNT_GP
  ,ORIGINAL_QUANTITY_1PIECE
  ,ORIGINAL_AMOUNT
  ,UPDATE_DATE
  ,DISP_UPDATE_DATE
  ,LATEST_FLG
  ,TARGET_NOMINATION_DATE_D
  ,TARGET_AWARD_DATE_D
  ,OPP_APPLICATION1_CODE
  ,OPP_APPLICATION2_CODE
  ,MP_START_DATE
  ,CAMPAIGN_NAME
  ,LEAD_ID
  ,LEAD_NAME
  ,ANNUAL_DEMAND_LTV_TOTAL
  ,S0_ACTUAL_DATE
  ,DISCOVERY_DATE
  ,PROMOTION_DATE
  ,GP_AMOUNT
  ,GP_AMOUNT_GO
  ,GO_PRICE
  ,GO_AMOUNT
  ,URL_OPP_PRODUCT_FOR_REL
  ,URL_OPP_PRODUCT_FOR_CHANNEL
  ,COMPETITOR_CURRENCY1
  ,COMPETITOR_PRICE_JPY1
  ,COMPETITOR_CURRENCY2
  ,COMPETITOR_PRICE_JPY2
  ,COMPETITOR_CURRENCY3
  ,COMPETITOR_PRICE_JPY3
  ,USER_LAST_MODIFIED_DATE
  ,USER_LAST_MOD_FEDERATION_ID
  ,USER_LAST_MODIFIED_EMAIL
  ,PCN_STATUS
  ,D_IN_DEMAND_QUANTITY
  ,D_IN_DEMAND_AMOUNT
  ,D_IN_TOTAL_COST
  ,D_IN_TOTAL_GP
  ,D_IN_TOTAL_GP_PERCENT
  ,CURRENT_TOTAL_COST
  ,CURRENT_TOTAL_GP
  ,CURRENT_TOTAL_GP_PERCENT
  ,CROSS_SELL
  ,APPROVAL_STATUS
  ,END_CUSTOMER_FREE_TEXT
  ,AUTOMOTIVE_OEM_NAME
  ,GROUPING_NAME
  ,SALES_TEAM_NAME_1
  ,SALES_TEAM_NAME_2
  ,SALES_TEAM_NAME_3
  ,SALES_TEAM_NAME_4
  ,D_IN_SCM_CUST_CODE_DUMMY_FLAG
  ,NDA_FLAG
  ,STAGE_TYPE
  ,D_IN_SALES_COMPANY
  ,ESTIMATED_ANNUAL_USAGE
  ,OPPORTUNITY_NAME
  ,OPPORTUNITY_INDUSTRY
  ,TRACKING_TYPE_STATUS
  ,OPP_CREATED_BY_FEDERATION_ID
  ,OPP_CREATED_BY_EMAIL
  ,OPP_CREATED_DATE
  ,END_CUSTOMER_NAME
  ,END_CUSTOMER_COUNTRY
  ,OPP_OPPORTUNITY_DISCERNMENT
  ,ANNUAL_DEMAND_QUANTITIY_TOTAL
  ,APPROVAL_NOTES
  ,APPROVAL_REQUEST_DATE
  ,APPROVER_EMAIL
  ,APPROVER_FEDERATION_ID
  ,AUTOMOTIVE_OEM
  ,AVERAGE_PRICE
  ,AWARD_CONFIDENCE_LEVEL_PERCENT
  ,B_WIN_OSC
  ,COMPETITOR_PART_NO1
  ,COMPETITOR_PART_NO2
  ,COMPETITOR_PART_NO3
  ,COMPETITOR_PRICE1
  ,COMPETITOR_PRICE2
  ,COMPETITOR_PRICE3
  ,COMPETITOR1
  ,COMPETITOR2
  ,COMPETITOR3
  ,PROD_CREATED_BY_EMAIL
  ,PROD_CREATED_BY_FEDERATION_ID
  ,PROD_CREATED_DATE
  ,CURRENT_LTQ
  ,CURRENT_LTV
  ,CUSTOMER_PART_NO
  ,DAUGHTER_PROJECT_NAME
  ,DELETE_FLAG
  ,DEMAND_TYPE
  ,DR_APRVR_FR_APRV_FEDERATION_ID
  ,DR_EXPIRATION_DATE
  ,DR_REQ_DISTI_PART_STATUS
  ,DR_REQUESTOR_FEDERATION_ID
  ,DR_STATUS
  ,ESTIMATED_GP_PERCENT
  ,LAST_MODIFIED_BY_EMAIL
  ,LAST_MODIFIED_BY_FEDERATION_ID
  ,LAST_MODIFIED_DATE
  ,MP_END_DATE
  ,MP_END_MONTH
  ,NICKNAME
  ,OPEN_DEAD_STATUS
  ,PROD_OPPORTUNITY_DISCERNMENT
  ,PARTIAL_AWARD_SEQ
  ,PPAP_BY
  ,PRICE_SUBMIT_FLG
  ,PRODUCT_CATEGORY1_CODE
  ,PRODUCT_CATEGORY2_CODE
  ,PRODUCT_CATEGORY3_CODE
  ,PRODUCT_CATEGORY4_CODE
  ,PRODUCT_CATEGORY5_CODE
  ,PRODUCT_FAMILY_CODE
  ,PRODUCT_SHARE
  ,PROGRESS
  ,PROMOTION_SAMPLE
  ,QUANTITY_GAP
  ,RENESAS_MEET_SCHEDULE_FLG
  ,RENESAS_NEW_PRODUCT
  ,RENESAS_PRD_REQ_FLG
  ,SALES_ORDER_PN_DUMMY_FLAG
  ,SAMPLE_DELIVERY_FLG
  ,SCHEDULE
  ,STAGE_DETAIL
  ,STAGE_SUB_TYPE
  ,STATUS_UPDATE_DATE
  ,TARGET_PRICE
  ,TECHNICAL
  ,TYPE_STAGE
  ,CALENDAR_YEAR_MONTH_DATE
FROM
  [BI_DM].[dbo].[F_SFM_OPP_PRD_DEMAND_L]


GO