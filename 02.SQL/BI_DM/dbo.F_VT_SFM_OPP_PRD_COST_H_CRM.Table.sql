USE [BI_DM]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[F_VT_SFM_OPP_PRD_COST_H_CRM](
	[AMOUNT] [numeric](38, 4) NULL,
	[APPROVED_DATE] [date] NULL,
	[CALENDAR_YM] [date] NULL,
	[CURRENCY] [nvarchar](3) NULL,
	[CURRENCY_TYPE] [nvarchar](14) NULL,
	[D_IN_SCM_CUST_CODE_FOR_MTF] [nvarchar](10) NULL,
	[DISP_UPDATE_DATE] [nvarchar](10) NULL,
	[GP_AMOUNT] [numeric](38, 4) NULL,
	[MP_START_DATE] [date] NULL,
	[OPP_APPLICATION1_CODE] [nvarchar](1) NULL,
	[OPP_APPLICATION2_CODE] [nvarchar](2) NULL,
	[OPP_APPLICATION3_CODE] [nvarchar](3) NULL,
	[OPPORTUNITY_NO] [nvarchar](7) NULL,
	[OPPORTUNITY_SEQ] [nvarchar](13) NULL,
	[SALES_ORDER_PN_FOR_MTF] [nvarchar](18) NULL,
	[TARGET_AWARD_DATE_D] [date] NULL,
	[TARGET_NOMINATION_DATE_D] [date] NULL,
	[UPDATE_DATE] [date] NULL
) ON [BI_DM_Fact_NonPartition]
WITH
(
DATA_COMPRESSION = PAGE
)

GO
SET ANSI_PADDING ON

GO
CREATE CLUSTERED INDEX [I_F_VT_SFM_OPP_PRD_COST_H_CRM_1] ON [dbo].[F_VT_SFM_OPP_PRD_COST_H_CRM]
(
	[OPPORTUNITY_NO] ASC,
	[OPPORTUNITY_SEQ] ASC,
	[UPDATE_DATE] ASC,
	[DISP_UPDATE_DATE] ASC,
	[SALES_ORDER_PN_FOR_MTF] ASC,
	[D_IN_SCM_CUST_CODE_FOR_MTF] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, DATA_COMPRESSION = PAGE) ON [BI_DM_Fact_NonPartition]
GO
