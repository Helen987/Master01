USE [BI_DM]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[F_SFM_D_IN_TARGET_H](
	[OPPORTUNITY_SEQ] [nvarchar](80) NOT NULL,
	[SCM_CUSTOMER_CODE] [nvarchar](20) NOT NULL,
	[D_IN_TARGET_YEAR] [nvarchar](7) NOT NULL,
	[TARGET_FISCAL_YEAR] [numeric](4, 0) NULL,
	[TARGET_HALF_YEAR] [nvarchar](2) NULL,
	[D_IN_TARGET_PROBABILITY] [nvarchar](10) NULL,
	[APPLICATION1_CODE] [nvarchar](1) NULL,
	[APPLICATION2_CODE] [nvarchar](2) NULL,
	[APPLICATION3_CODE] [nvarchar](3) NULL,
	[PART_NO] [nvarchar](40) NULL,
	[D_IN_INPUT_YEAR] [nvarchar](7) NOT NULL,
	[INPUT_FISCAL_YEAR] [numeric](4, 0) NULL,
	[INPUT_HALF_YEAR] [nvarchar](2) NULL,
	[D_IN_TARGET_ORIGINAL] [numeric](38, 4) NULL,
	[D_IN_TARGET_STRETCH] [numeric](38, 4) NULL,
	[D_IN_TARGET] [numeric](38, 4) NULL,
	[CURRENCY_ISO_CODE] [nvarchar](3) NULL,
	[CURRENCY_TYPE] [nvarchar](14) NULL,
	[DELETE_FLAG] [nvarchar](1) NULL,
	[CREATED_BY_FEDERATION_ID] [nvarchar](4000) NULL,
	[CREATED_BY_EMAIL] [nvarchar](128) NULL,
	[CREATED_DATE] [date] NULL,
	[LAST_MODIFIED_BY_FEDERATION_ID] [nvarchar](4000) NULL,
	[LAST_MODIFIED_BY_EMAIL] [nvarchar](128) NULL,
	[LAST_MODIFIED_DATE] [date] NULL,
	[SYSTEM_MODSTAMP] [date] NULL,
	[UPDATE_DATE] [date] NULL,
	[SALES_ORDER_PN_FOR_MTF] [nvarchar](18) NULL
) ON [PS_PartitionByMonth_DM]([UPDATE_DATE])
WITH
(
DATA_COMPRESSION = PAGE
)

GO
