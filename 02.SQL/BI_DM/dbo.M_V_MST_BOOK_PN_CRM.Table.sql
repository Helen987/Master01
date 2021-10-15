USE [BI_DM]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[M_V_MST_BOOK_PN_CRM](
	[BOOKING_PN] [nvarchar](40) NULL,
	[BOOKING_PN_CD] [nvarchar](18) NULL,
	[SO_PT_NO_K_A4_W] [nvarchar](40) NULL,
	[CAT1] [nvarchar](2) NULL,
	[CAT1_TXT] [nvarchar](40) NULL,
	[CAT2] [nvarchar](4) NULL,
	[CAT2_TXT] [nvarchar](40) NULL,
	[CAT3] [nvarchar](6) NULL,
	[CAT3_TXT] [nvarchar](40) NULL,
	[CAT4] [nvarchar](8) NULL,
	[CAT4_TXT] [nvarchar](40) NULL,
	[CAT5] [nvarchar](10) NULL,
	[CAT5_TXT] [nvarchar](40) NULL,
	[DESIGN_GROUP_DEPARTMENT] [nvarchar](8) NULL,
	[DESIGN_GROUP_DEPARTMENT_TXT] [nvarchar](60) NULL,
	[DESIGN_GROUP_DIVISION] [nvarchar](6) NULL,
	[DESIGN_GROUP_DIVISION_TXT] [nvarchar](60) NULL,
	[DESIGN_GROUP_UNIT] [nvarchar](4) NULL,
	[DESIGN_GROUP_UNIT_TXT] [nvarchar](60) NULL,
	[EOL_POLICY_TYPE] [nvarchar](300) NULL,
	[MCU_SOC_AP_KBN] [nvarchar](300) NULL,
	[MCU_TYPE] [nvarchar](300) NULL,
	[ORDER_PRODUCT_STATUS] [nvarchar](2) NULL,
	[ORDER_PRODUCT_STATUS_TXT] [nvarchar](100) NULL,
	[PRICE_PN] [nvarchar](32) NULL,
	[PRODUCT_FAMILY_CD] [nvarchar](300) NULL,
	[PRODUCT_FAMILY] [nvarchar](300) NULL,
	[RENESAS_PN] [nvarchar](30) NULL
) ON [BI_DM_Dimension]
WITH
(
DATA_COMPRESSION = PAGE
)

GO
SET ANSI_PADDING ON

GO
CREATE CLUSTERED INDEX [I_M_V_MST_BOOK_PN_CRM_1] ON [dbo].[M_V_MST_BOOK_PN_CRM]
(
	[BOOKING_PN_CD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, DATA_COMPRESSION = PAGE) ON [BI_DM_Dimension]
GO
