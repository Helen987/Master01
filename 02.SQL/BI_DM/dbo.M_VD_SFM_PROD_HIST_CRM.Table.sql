USE [BI_DM]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[M_VD_SFM_PROD_HIST_CRM](
	[APPROVAL_REQUEST_DATE] [date] NULL,
	[APPROVER_EMAIL] [nvarchar](128) NULL,
	[APPROVER_FEDERATION_ID] [nvarchar](4000) NULL,
	[AVERAGE_PRICE] [numeric](18, 4) NULL,
	[AWARD_CONFIDENCE_LEVEL_PERCENT] [nvarchar](4) NULL,
	[AWARD_CONFIDENCE_LEVEL_PERCENT_TXT] [nvarchar](255) NULL,
	[PARTIAL_AWARD_SEQ] [nvarchar](2) NULL,
	[RENESAS_MEET_SCHEDULE_FLG] [nvarchar](2) NULL,
	[RENESAS_MEET_SCHEDULE_FLG_TXT] [nvarchar](255) NULL,
	[COMPETITOR_CURRENCY1] [nvarchar](3) NULL,
	[COMPETITOR_CURRENCY2] [nvarchar](3) NULL,
	[COMPETITOR_CURRENCY3] [nvarchar](3) NULL,
	[COMPETITOR_PART_NO1] [nvarchar](255) NULL,
	[COMPETITOR_PART_NO2] [nvarchar](255) NULL,
	[COMPETITOR_PART_NO3] [nvarchar](255) NULL,
	[COMPETITOR_PRICE1] [numeric](18, 4) NULL,
	[COMPETITOR_PRICE_JPY1] [numeric](16, 2) NULL,
	[COMPETITOR_PRICE2] [numeric](18, 4) NULL,
	[COMPETITOR_PRICE_JPY2] [numeric](16, 2) NULL,
	[COMPETITOR_PRICE3] [numeric](18, 4) NULL,
	[COMPETITOR_PRICE_JPY3] [numeric](16, 2) NULL,
	[COMPETITOR1] [nvarchar](4) NULL,
	[COMPETITOR1_TXT] [nvarchar](255) NULL,
	[COMPETITOR2] [nvarchar](4) NULL,
	[COMPETITOR2_TXT] [nvarchar](255) NULL,
	[COMPETITOR3] [nvarchar](4) NULL,
	[COMPETITOR3_TXT] [nvarchar](255) NULL,
	[PROD_CREATED_BY_EMAIL] [nvarchar](128) NULL,
	[PROD_CREATED_BY_FEDERATION_ID] [nvarchar](4000) NULL,
	[PROD_CREATED_DATE] [date] NULL,
	[CURRENCY] [nvarchar](3) NULL,
	[CUSTOMER_PART_NO] [nvarchar](50) NULL,
	[STATUS] [nvarchar](2) NULL,
	[STATUS_TXT] [nvarchar](255) NULL,
	[RENESAS_PRD_REQ_FLG] [nvarchar](2) NULL,
	[RENESAS_PRD_REQ_FLG_TXT] [nvarchar](255) NULL,
	[ACCOUNT_GROUP_CODE] [nvarchar](255) NULL,
	[B_WIN_OSC] [nvarchar](2) NULL,
	[B_WIN_OSC_TXT] [nvarchar](255) NULL,
	[B_WIN_SCM_CUSTOMER_CODE] [nvarchar](10) NULL,
	[PRICE_SUBMIT_FLG] [nvarchar](2) NULL,
	[PRICE_SUBMIT_FLG_TXT] [nvarchar](255) NULL,
	[SAMPLE_DELIVERY_FLG] [nvarchar](2) NULL,
	[SAMPLE_DELIVERY_FLG_TXT] [nvarchar](255) NULL,
	[RENESAS_NEW_PRODUCT] [nvarchar](1) NULL,
	[CURRENT_LTQ] [numeric](18, 0) NULL,
	[CURRENT_LTV] [numeric](18, 0) NULL,
	[MP_END_DATE] [date] NULL,
	[MP_END_MONTH] [nvarchar](7) NULL,
	[MP_START_MONTH] [nvarchar](7) NULL,
	[NICKNAME] [nvarchar](80) NULL,
	[D_IN_CONFIDENCE_LEVEL_PERCENT] [nvarchar](4) NULL,
	[D_IN_CONFIDENCE_LEVEL_PERCENT_TXT] [nvarchar](255) NULL,
	[OPEN_DEAD_STATUS] [nvarchar](2) NULL,
	[OPEN_DEAD_STATUS_TXT] [nvarchar](255) NULL,
	[QTY_UNIT] [numeric](18, 0) NULL,
	[PPAP_BY] [date] NULL,
	[PRODUCT_CATEGORY1_CODE] [nvarchar](2) NULL,
	[PRODUCT_CATEGORY2_CODE] [nvarchar](2) NULL,
	[PRODUCT_CATEGORY3_CODE] [nvarchar](2) NULL,
	[PRODUCT_CATEGORY4_CODE] [nvarchar](2) NULL,
	[PRODUCT_CATEGORY5_CODE] [nvarchar](2) NULL,
	[PRODUCT_FAMILY_CODE] [nvarchar](255) NULL,
	[OPPORTUNITY_SEQ_PRD] [nvarchar](10) NULL,
	[PROGRESS] [nvarchar](7) NULL,
	[DAUGHTER_PROJECT_NAME] [nvarchar](60) NULL,
	[PROMOTION_SAMPLE] [nvarchar](2) NULL,
	[PROMOTION_SAMPLE_TXT] [nvarchar](255) NULL,
	[S0_ACTUAL_DATE] [date] NULL,
	[PROMOTION_DATE] [date] NULL,
	[DISCOVERY_DATE] [date] NULL,
	[SALES_ORDER_PN_DUMMY_FLAG] [nvarchar](1) NULL,
	[SALES_ORDER_PN_FOR_MTF] [nvarchar](18) NULL,
	[SALES_ORDER_PN_FOR_SCM_OPE] [nvarchar](18) NULL,
	[SCHEDULE] [nvarchar](2) NULL,
	[SCHEDULE_TXT] [nvarchar](255) NULL,
	[PRODUCT_SHARE] [nvarchar](2) NULL,
	[PRODUCT_SHARE_TXT] [nvarchar](255) NULL,
	[STAGE_DETAIL] [nvarchar](255) NULL,
	[STAGE] [nvarchar](2) NULL,
	[STAGE_SUB_TYPE] [nvarchar](2) NULL,
	[STAGE_H_TXT] [nvarchar](255) NULL,
	[START_MONTH_OF_FISCAL_YEAR] [nvarchar](2) NULL,
	[START_MONTH_OF_FISCAL_YEAR_TXT] [nvarchar](255) NULL,
	[STATUS_UPDATE_DATE] [date] NULL,
	[TARGET_AWARD_DATE] [nvarchar](7) NULL,
	[TARGET_NOMINATION_DATE] [nvarchar](7) NULL,
	[TARGET_PRICE] [nvarchar](2) NULL,
	[TARGET_PRICE_TXT] [nvarchar](255) NULL,
	[SHARE_PERCENT] [numeric](3, 0) NULL,
	[TECHNICAL] [nvarchar](2) NULL,
	[TECHNICAL_TXT] [nvarchar](255) NULL,
	[TYPE_STAGE] [nvarchar](255) NULL,
	[OPPORTUNITY_SEQ] [nvarchar](13) NULL,
	[UPDATE_DATE] [date] NULL
) ON [BI_DM_Dimension]
WITH
(
DATA_COMPRESSION = PAGE
)

GO
SET ANSI_PADDING ON

GO
CREATE CLUSTERED INDEX [I_M_VD_SFM_PROD_HIST_CRM_1] ON [dbo].[M_VD_SFM_PROD_HIST_CRM]
(
	[OPPORTUNITY_SEQ] ASC,
	[UPDATE_DATE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, DATA_COMPRESSION = PAGE) ON [BI_DM_Dimension]
GO
