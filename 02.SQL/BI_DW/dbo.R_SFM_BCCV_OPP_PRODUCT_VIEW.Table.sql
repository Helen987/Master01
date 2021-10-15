USE [BI_DW]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[R_SFM_BCCV_OPP_PRODUCT_VIEW](
	[OPPORTUNITY_SEQ] [nvarchar](13) NULL,
	[OPPORTUNITY_NO] [nvarchar](7) NULL,
	[PRODUCT_SEQ] [nvarchar](2) NULL,
	[PARTIAL_AWARD_SEQ] [nvarchar](2) NULL,
	[STAGE] [nvarchar](2) NULL,
	[STAGE_SUB_TYPE] [nvarchar](2) NULL,
	[STATUS] [nvarchar](2) NULL,
	[APPLICATION1_CODE] [nvarchar](1) NULL,
	[APPLICATION2_CODE] [nvarchar](2) NULL,
	[APPLICATION3_CODE] [nvarchar](3) NULL,
	[PRODUCT_FAMILY_CODE] [nvarchar](255) NULL,
	[PRODUCT_CATEGORY1_CODE] [nvarchar](2) NULL,
	[PRODUCT_CATEGORY2_CODE] [nvarchar](2) NULL,
	[PRODUCT_CATEGORY3_CODE] [nvarchar](2) NULL,
	[PRODUCT_CATEGORY4_CODE] [nvarchar](2) NULL,
	[PRODUCT_CATEGORY5_CODE] [nvarchar](2) NULL,
	[SALES_ORDER_PN_FOR_MTF] [nvarchar](40) NULL,
	[SALES_ORDER_PN_FOR_SCM_OPE] [nvarchar](40) NULL,
	[SALES_ORDER_PN_DUMMY_FLAG] [nvarchar](1) NULL,
	[CUSTOMER_PART_NO] [nvarchar](50) NULL,
	[NICKNAME] [nvarchar](80) NULL,
	[RENESAS_NEW_PRODUCT] [nvarchar](1) NULL,
	[NET_BILLING] [nvarchar](1) NULL,
	[B_WIN_OSC] [nvarchar](2) NULL,
	[PPAP_BY] [date] NULL,
	[TARGET_NOMINATION_DATE] [nvarchar](7) NULL,
	[TARGET_AWARD_DATE] [nvarchar](7) NULL,
	[TECHNICAL] [nvarchar](2) NULL,
	[SCHEDULE] [nvarchar](2) NULL,
	[TARGET_PRICE] [nvarchar](2) NULL,
	[PROMOTION_SAMPLE] [nvarchar](2) NULL,
	[RENESAS_PRD_REQ_FLG] [nvarchar](2) NULL,
	[RENESAS_MEET_SCHEDULE_FLG] [nvarchar](2) NULL,
	[PRICE_SUBMIT_FLG] [nvarchar](2) NULL,
	[SAMPLE_DELIVERY_FLG] [nvarchar](2) NULL,
	[PROGRESS] [nvarchar](7) NULL,
	[D_IN_CONFIDENCE_LEVEL_PERCENT] [nvarchar](4) NULL,
	[PRODUCT_COMMENT] [nvarchar](255) NULL,
	[QTY_UNIT] [numeric](18, 0) NULL,
	[SHARE_PERCENT] [numeric](3, 0) NULL,
	[TARGET_GP_PERCENT] [numeric](3, 0) NULL,
	[AVERAGE_PRICE] [numeric](18, 4) NULL,
	[TOTAL_QUANTITY] [numeric](18, 0) NULL,
	[LTV] [numeric](18, 0) NULL,
	[START_MONTH_OF_FISCAL_YEAR] [nvarchar](2) NULL,
	[MP_START_MONTH] [nvarchar](7) NULL,
	[MP_START_DATE] [date] NULL,
	[MP_END_MONTH] [nvarchar](7) NULL,
	[MP_END_DATE] [date] NULL,
	[DAUGHTER_PROJECT_NAME] [nvarchar](60) NULL,
	[OPPORTUNITY_DISCERNMENT] [nvarchar](2) NULL,
	[REFERENCE_NO] [nvarchar](255) NULL,
	[REFERENCE_NO_REMARKS] [nvarchar](255) NULL,
	[AWARD_CONFIDENCE_LEVEL_PERCENT] [nvarchar](4) NULL,
	[B_WIN_SCM_CUSTOMER_CODE] [nvarchar](10) NULL,
	[ACCOUNT_GROUP_CODE] [nvarchar](255) NULL,
	[POSTPONE] [nvarchar](1) NULL,
	[APPROVAL_REQUEST] [nvarchar](1) NULL,
	[APPROVED_DATE] [datetime] NULL,
	[APPROVER_COMMENT] [nvarchar](255) NULL,
	[APPROVER_FEDERATION_ID] [nvarchar](4000) NULL,
	[APPROVER_EMAIL] [nvarchar](128) NULL,
	[DAUGHTER_AWARD_SALES_COMPANY] [nvarchar](2) NULL,
	[CURRENCY] [nvarchar](3) NULL,
	[AUTOMOTIVE_OEM] [nvarchar](255) NULL,
	[PRODUCT_INDUSTRY] [nvarchar](2) NULL,
	[STAGE_DETAIL] [nvarchar](255) NULL,
	[DEMAND_TYPE] [nvarchar](2) NULL,
	[STATUS_UPDATE_DATE] [date] NULL,
	[ANNUAL_DEMAND_LTV_TOTAL] [numeric](18, 0) NULL,
	[ANNUAL_DEMAND_QUANTITIY_TOTAL] [numeric](18, 0) NULL,
	[DELETE_FLAG] [nvarchar](1) NULL,
	[CREATED_BY_FEDERATION_ID] [nvarchar](4000) NULL,
	[CREATED_BY_EMAIL] [nvarchar](128) NULL,
	[CREATED_DATE] [date] NULL,
	[LAST_MODIFIED_BY_FEDERATION_ID] [nvarchar](4000) NULL,
	[LAST_MODIFIED_BY_EMAIL] [nvarchar](128) NULL,
	[LAST_MODIFIED_DATE] [datetime] NULL,
	[IF_LAST_MODIFIED_DATE] [date] NULL,
	[TARGET_NOMINATION_DATE_D] [date] NULL,
	[TARGET_AWARD_DATE_D] [date] NULL,
	[TYPE_STAGE] [nvarchar](255) NULL,
	[ESTIMATED_GP_PERCENT] [numeric](3, 0) NULL,
	[PRODUCT_SHARE] [nvarchar](2) NULL,
	[COMPETITOR1] [nvarchar](4) NULL,
	[COMPETITOR_PART_NO1] [nvarchar](255) NULL,
	[COMPETITOR_PRICE1] [numeric](18, 4) NULL,
	[COMPETITOR2] [nvarchar](4) NULL,
	[COMPETITOR_PART_NO2] [nvarchar](255) NULL,
	[COMPETITOR_PRICE2] [numeric](18, 4) NULL,
	[COMPETITOR3] [nvarchar](4) NULL,
	[COMPETITOR_PART_NO3] [nvarchar](255) NULL,
	[COMPETITOR_PRICE3] [numeric](18, 4) NULL,
	[DR_STATUS] [nvarchar](2) NULL,
	[APPROVAL_REQUEST_DATE] [date] NULL,
	[APPROVAL_NOTES] [nvarchar](255) NULL,
	[DR_REQUESTOR_FEDERATION_ID] [nvarchar](4000) NULL,
	[DR_APRVR_FR_APRV_FEDERATION_ID] [nvarchar](4000) NULL,
	[DR_REQ_DISTI_PART_STATUS] [nvarchar](255) NULL,
	[CURRENT_LTQ] [numeric](18, 0) NULL,
	[CURRENT_LTV] [numeric](18, 0) NULL,
	[DR_EXPIRATION_DATE] [date] NULL,
	[OPEN_DEAD_STATUS] [nvarchar](2) NULL,
	[S0_ACTUAL_DATE] [date] NULL,
	[QUANTITY_GAP] [numeric](18, 0) NULL,
	[DISCOVERY_DATE] [date] NULL,
	[PROMOTION_DATE] [date] NULL,
	[URL_OPP_PRODUCT_FOR_REL] [nvarchar](255) NULL,
	[URL_OPP_PRODUCT_FOR_CHANNEL] [nvarchar](255) NULL,
	[COMPETITOR_CURRENCY1] [nvarchar](3) NULL,
	[COMPETITOR_PRICE_JPY1] [numeric](16, 2) NULL,
	[COMPETITOR_CURRENCY2] [nvarchar](3) NULL,
	[COMPETITOR_PRICE_JPY2] [numeric](16, 2) NULL,
	[COMPETITOR_CURRENCY3] [nvarchar](3) NULL,
	[COMPETITOR_PRICE_JPY3] [numeric](16, 2) NULL,
	[USER_LAST_MODIFIED_DATE] [datetime] NULL,
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
	[APPROVAL_STATUS] [nvarchar](30) NULL
) ON [BI_DW_Staging]

GO
