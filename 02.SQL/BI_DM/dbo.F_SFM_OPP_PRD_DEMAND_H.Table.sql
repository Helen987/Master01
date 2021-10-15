USE [BI_DM]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[F_SFM_OPP_PRD_DEMAND_H](
	[OPPORTUNITY_SEQ] [nvarchar](13) NULL,
	[OPPORTUNITY_NO] [nvarchar](7) NULL,
	[OPPORTUNITY_SEQ_PRD] [nvarchar](10) NULL,
	[STAGE] [nvarchar](2) NULL,
	[D_IN_SCM_CUST_CODE_FOR_MTF] [nvarchar](10) NULL,
	[D_IN_SCM_CUST_CODE_FOR_SCM_OPE] [nvarchar](10) NULL,
	[B_WIN_SCM_CUSTOMER_CODE] [nvarchar](10) NULL,
	[SALES_ORDER_PN_FOR_MTF] [nvarchar](18) NULL,
	[SALES_ORDER_PN_FOR_SCM_OPE] [nvarchar](18) NULL,
	[OPP_APPLICATION3_CODE] [nvarchar](3) NULL,
	[PRD_APPLICATION3_CODE] [nvarchar](3) NULL,
	[CHANNEL_PARTNER_CODE] [nvarchar](40) NULL,
	[CHANNEL_PARTNER_NAME] [nvarchar](255) NULL,
	[STATUS] [nvarchar](2) NULL,
	[TARGET_NOMINATION_DATE] [nvarchar](7) NULL,
	[TARGET_AWARD_DATE] [nvarchar](7) NULL,
	[APPROVED_DATE] [date] NULL,
	[D_IN_CONFIDENCE_LEVEL_PERCENT] [nvarchar](4) NULL,
	[QTY_UNIT] [numeric](18, 0) NULL,
	[SHARE_PERCENT] [numeric](3, 0) NULL,
	[START_MONTH_OF_FISCAL_YEAR] [nvarchar](2) NULL,
	[MP_START_MONTH] [nvarchar](7) NULL,
	[ACCOUNT_GROUP_CODE] [nvarchar](255) NULL,
	[ACCOUNT_NAME] [nvarchar](255) NULL,
	[CURRENCY] [nvarchar](3) NULL,
	[CURRENCY_TYPE] [nvarchar](14) NULL,
	[CALENDAR_YM] [date] NULL,
	[QUANTITY_1PIECE] [numeric](18, 0) NULL,
	[PRICE] [numeric](18, 4) NULL,
	[AMOUNT] [numeric](38, 4) NULL,
	[AMOUNT_STD] [numeric](38, 4) NULL,
	[AMOUNT_GP] [numeric](38, 4) NULL,
	[ORIGINAL_QUANTITY_1PIECE] [numeric](18, 0) NULL,
	[ORIGINAL_AMOUNT] [numeric](38, 4) NULL,
	[UPDATE_DATE] [date] NULL,
	[DISP_UPDATE_DATE] [nvarchar](10) NULL,
	[LATEST_FLG] [nvarchar](1) NULL,
	[TARGET_NOMINATION_DATE_D] [date] NULL,
	[TARGET_AWARD_DATE_D] [date] NULL,
	[OPP_APPLICATION1_CODE] [nvarchar](1) NULL,
	[OPP_APPLICATION2_CODE] [nvarchar](2) NULL,
	[MP_START_DATE] [date] NULL,
	[CAMPAIGN_NAME] [nvarchar](255) NULL,
	[LEAD_ID] [nvarchar](18) NULL,
	[LEAD_NAME] [nvarchar](400) NULL,
	[ANNUAL_DEMAND_LTV_TOTAL] [numeric](38, 4) NULL,
	[S0_ACTUAL_DATE] [date] NULL,
	[DISCOVERY_DATE] [date] NULL,
	[PROMOTION_DATE] [date] NULL,
	[GP_AMOUNT] [numeric](38, 4) NULL,
	[GP_AMOUNT_GO] [numeric](38, 4) NULL,
	[GO_PRICE] [numeric](38, 4) NULL,
	[GO_AMOUNT] [numeric](38, 4) NULL,
	[URL_OPP_PRODUCT_FOR_REL] [nvarchar](255) NULL,
	[URL_OPP_PRODUCT_FOR_CHANNEL] [nvarchar](255) NULL,
	[COMPETITOR_CURRENCY1] [nvarchar](3) NULL,
	[COMPETITOR_PRICE_JPY1] [numeric](16, 2) NULL,
	[COMPETITOR_CURRENCY2] [nvarchar](3) NULL,
	[COMPETITOR_PRICE_JPY2] [numeric](16, 2) NULL,
	[COMPETITOR_CURRENCY3] [nvarchar](3) NULL,
	[COMPETITOR_PRICE_JPY3] [numeric](16, 2) NULL,
	[USER_LAST_MODIFIED_DATE] [date] NULL,
	[USER_LAST_MOD_FEDERATION_ID] [nvarchar](4000) NULL,
	[USER_LAST_MODIFIED_EMAIL] [nvarchar](128) NULL,
	[PCN_STATUS] [nvarchar](3) NULL,
	[D_IN_DEMAND_QUANTITY] [numeric](18, 0) NULL,
	[D_IN_DEMAND_AMOUNT] [numeric](18, 0) NULL,
	[D_IN_TOTAL_COST] [numeric](18, 0) NULL,
	[D_IN_TOTAL_GP] [numeric](18, 0) NULL,
	[D_IN_TOTAL_GP_PERCENT] [numeric](15, 1) NULL,
	[CURRENT_TOTAL_COST] [numeric](18, 0) NULL,
	[CURRENT_TOTAL_GP] [numeric](18, 0) NULL,
	[CURRENT_TOTAL_GP_PERCENT] [numeric](15, 1) NULL,
	[CROSS_SELL] [nvarchar](1) NULL,
	[APPROVAL_STATUS] [nvarchar](30) NULL,
	[END_CUSTOMER_FREE_TEXT] [nvarchar](255) NULL,
	[AUTOMOTIVE_OEM_NAME] [nvarchar](80) NULL,
	[GROUPING_NAME] [nvarchar](255) NULL,
	[SALES_TEAM_NAME_1] [nvarchar](120) NULL,
	[SALES_TEAM_NAME_2] [nvarchar](120) NULL,
	[SALES_TEAM_NAME_3] [nvarchar](120) NULL,
	[SALES_TEAM_NAME_4] [nvarchar](120) NULL,
	[D_IN_SCM_CUST_CODE_DUMMY_FLAG] [nvarchar](1) NULL,
	[NDA_FLAG] [nvarchar](1) NULL,
	[STAGE_TYPE] [nvarchar](2) NULL,
	[D_IN_SALES_COMPANY] [nvarchar](2) NULL,
	[ESTIMATED_ANNUAL_USAGE] [numeric](18, 0) NULL,
	[OPPORTUNITY_NAME] [nvarchar](120) NULL,
	[OPPORTUNITY_INDUSTRY] [nvarchar](2) NULL,
	[TRACKING_TYPE_STATUS] [nvarchar](2) NULL,
	[OPP_CREATED_BY_FEDERATION_ID] [nvarchar](4000) NULL,
	[OPP_CREATED_BY_EMAIL] [nvarchar](128) NULL,
	[OPP_CREATED_DATE] [date] NULL,
	[END_CUSTOMER_NAME] [nvarchar](80) NULL,
	[END_CUSTOMER_COUNTRY] [nvarchar](2) NULL,
	[OPP_OPPORTUNITY_DISCERNMENT] [nvarchar](2) NULL,
	[ANNUAL_DEMAND_QUANTITIY_TOTAL] [numeric](18, 0) NULL,
	[APPROVAL_NOTES] [nvarchar](255) NULL,
	[APPROVAL_REQUEST_DATE] [date] NULL,
	[APPROVER_EMAIL] [nvarchar](128) NULL,
	[APPROVER_FEDERATION_ID] [nvarchar](4000) NULL,
	[AUTOMOTIVE_OEM] [nvarchar](255) NULL,
	[AVERAGE_PRICE] [numeric](18, 4) NULL,
	[AWARD_CONFIDENCE_LEVEL_PERCENT] [nvarchar](4) NULL,
	[B_WIN_OSC] [nvarchar](2) NULL,
	[COMPETITOR_PART_NO1] [nvarchar](255) NULL,
	[COMPETITOR_PART_NO2] [nvarchar](255) NULL,
	[COMPETITOR_PART_NO3] [nvarchar](255) NULL,
	[COMPETITOR_PRICE1] [numeric](18, 4) NULL,
	[COMPETITOR_PRICE2] [numeric](18, 4) NULL,
	[COMPETITOR_PRICE3] [numeric](18, 4) NULL,
	[COMPETITOR1] [nvarchar](4) NULL,
	[COMPETITOR2] [nvarchar](4) NULL,
	[COMPETITOR3] [nvarchar](4) NULL,
	[PROD_CREATED_BY_EMAIL] [nvarchar](128) NULL,
	[PROD_CREATED_BY_FEDERATION_ID] [nvarchar](4000) NULL,
	[PROD_CREATED_DATE] [date] NULL,
	[CURRENT_LTQ] [numeric](18, 0) NULL,
	[CURRENT_LTV] [numeric](18, 0) NULL,
	[CUSTOMER_PART_NO] [nvarchar](50) NULL,
	[DAUGHTER_PROJECT_NAME] [nvarchar](60) NULL,
	[DELETE_FLAG] [nvarchar](1) NULL,
	[DEMAND_TYPE] [nvarchar](2) NULL,
	[DR_APRVR_FR_APRV_FEDERATION_ID] [nvarchar](4000) NULL,
	[DR_EXPIRATION_DATE] [date] NULL,
	[DR_REQ_DISTI_PART_STATUS] [nvarchar](255) NULL,
	[DR_REQUESTOR_FEDERATION_ID] [nvarchar](4000) NULL,
	[DR_STATUS] [nvarchar](2) NULL,
	[ESTIMATED_GP_PERCENT] [numeric](3, 0) NULL,
	[LAST_MODIFIED_BY_EMAIL] [nvarchar](128) NULL,
	[LAST_MODIFIED_BY_FEDERATION_ID] [nvarchar](4000) NULL,
	[LAST_MODIFIED_DATE] [date] NULL,
	[MP_END_DATE] [date] NULL,
	[MP_END_MONTH] [nvarchar](7) NULL,
	[NICKNAME] [nvarchar](80) NULL,
	[OPEN_DEAD_STATUS] [nvarchar](2) NULL,
	[PROD_OPPORTUNITY_DISCERNMENT] [nvarchar](2) NULL,
	[PARTIAL_AWARD_SEQ] [nvarchar](2) NULL,
	[PPAP_BY] [date] NULL,
	[PRICE_SUBMIT_FLG] [nvarchar](2) NULL,
	[PRODUCT_CATEGORY1_CODE] [nvarchar](2) NULL,
	[PRODUCT_CATEGORY2_CODE] [nvarchar](2) NULL,
	[PRODUCT_CATEGORY3_CODE] [nvarchar](2) NULL,
	[PRODUCT_CATEGORY4_CODE] [nvarchar](2) NULL,
	[PRODUCT_CATEGORY5_CODE] [nvarchar](2) NULL,
	[PRODUCT_FAMILY_CODE] [nvarchar](255) NULL,
	[PRODUCT_SHARE] [nvarchar](2) NULL,
	[PROGRESS] [nvarchar](7) NULL,
	[PROMOTION_SAMPLE] [nvarchar](2) NULL,
	[QUANTITY_GAP] [numeric](18, 0) NULL,
	[RENESAS_MEET_SCHEDULE_FLG] [nvarchar](2) NULL,
	[RENESAS_NEW_PRODUCT] [nvarchar](1) NULL,
	[RENESAS_PRD_REQ_FLG] [nvarchar](2) NULL,
	[SALES_ORDER_PN_DUMMY_FLAG] [nvarchar](1) NULL,
	[SAMPLE_DELIVERY_FLG] [nvarchar](2) NULL,
	[SCHEDULE] [nvarchar](2) NULL,
	[STAGE_DETAIL] [nvarchar](255) NULL,
	[STAGE_SUB_TYPE] [nvarchar](2) NULL,
	[STATUS_UPDATE_DATE] [date] NULL,
	[TARGET_PRICE] [nvarchar](2) NULL,
	[TECHNICAL] [nvarchar](2) NULL,
	[TYPE_STAGE] [nvarchar](255) NULL
) ON [PS_PartitionByMonth_DM]([CALENDAR_YM])
WITH
(
DATA_COMPRESSION = PAGE
)

GO