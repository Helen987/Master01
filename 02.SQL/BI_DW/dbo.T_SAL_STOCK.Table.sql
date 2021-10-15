USE [BI_DW]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_SAL_STOCK](
	[STK_BASEMONTH] [nvarchar](6) NULL,
	[STK_BASEDAY] [date] NULL,
	[PLANT] [nvarchar](4) NULL,
	[LOCATION] [nvarchar](4) NULL,
	[PROD_CAT1_CD] [nvarchar](2) NULL,
	[PROD_LONG_NAME_1] [nvarchar](40) NULL,
	[PROD_CAT2_CD] [nvarchar](4) NULL,
	[PROD_LONG_NAME_2] [nvarchar](40) NULL,
	[PROD_CAT3_CD] [nvarchar](6) NULL,
	[PROD_LONG_NAME_3] [nvarchar](40) NULL,
	[PROD_CAT4_CD] [nvarchar](8) NULL,
	[PROD_LONG_NAME_4] [nvarchar](40) NULL,
	[PROD_CAT5_CD] [nvarchar](10) NULL,
	[PROD_LONG_NAME_5] [nvarchar](40) NULL,
	[INV_DIV_CD] [nvarchar](1) NULL,
	[ZZKUNNR01] [nvarchar](10) NULL,
	[SCM_NAME_J] [nvarchar](20) NULL,
	[SCM_NAME_E] [nvarchar](20) NULL,
	[ORDER_PART_NO_CD] [nvarchar](18) NULL,
	[SO_PART_NO_KEY_A4_W] [nvarchar](40) NULL,
	[STOCK_STD] [nvarchar](3) NULL,
	[RENESAS_PROD_FLG] [nvarchar](1) NULL,
	[ORDER_AUTO_GEN_DIV] [nvarchar](1) NULL,
	[ZZBSHUB] [nvarchar](2) NULL,
	[BSHUB_NAME_J] [nvarchar](40) NULL,
	[BSHUB_NAME_E] [nvarchar](40) NULL,
	[PRICE_DIV] [nvarchar](2) NULL,
	[SCM_CUSTOMER_DIV] [nvarchar](2) NULL,
	[DESIGN_BU_2_CD] [nvarchar](4) NULL,
	[DS_UNIT_NAME_J] [nvarchar](40) NULL,
	[DS_UNIT_NAME_E] [nvarchar](40) NULL,
	[DESIGN_BU_3_CD] [nvarchar](6) NULL,
	[DS_DIVISION_NAME_J] [nvarchar](40) NULL,
	[DS_DIVISION_NAME_E] [nvarchar](40) NULL,
	[UNRESTRICTED_USE_QTY] [decimal](18, 0) NULL,
	[QLTY_INSPECTION_QTY] [decimal](18, 0) NULL,
	[RESTRICTED_USE_QTY] [decimal](18, 0) NULL,
	[BLOCKED_STOCK_QTY] [decimal](18, 0) NULL,
	[STOCK_RETURNS_QTY] [decimal](18, 0) NULL,
	[STOCK_AMT] [decimal](20, 4) NULL,
	[STANDARD_PRICE] [decimal](20, 4) NULL,
	[ZZWAERS] [nvarchar](5) NULL,
	[ALL_STOCK_QTY] [decimal](18, 0) NULL,
	[ZZORDUP_RATE] [decimal](20, 4) NULL,
	[ZZVBAPTL_RATE] [decimal](20, 4) NULL,
	[FERTH] [nvarchar](10) NULL,
	[SS_ORD_FLG] [nvarchar](10) NULL,
	[BW_CAT1] [nvarchar](1) NULL,
	[BW_CAT2] [nvarchar](2) NULL,
	[BW_FLG] [nvarchar](1) NULL,
	[W_DS_TB_NAME] [nvarchar](3) NULL,
	[BUSINESS_SITE_CD_03] [nvarchar](2) NULL,
	[BIZ_SNAME_J] [nvarchar](40) NULL,
	[BIZ_SNAME_E] [nvarchar](40) NULL,
	[UNIT_CD_03] [nvarchar](4) NULL,
	[BIZ_UNIT_NAME_J] [nvarchar](40) NULL,
	[BIZ_UNIT_NAME_E] [nvarchar](40) NULL,
	[DIVISION_CD_03] [nvarchar](6) NULL,
	[BIZ_DIVISION_NAME_J] [nvarchar](40) NULL,
	[BIZ_DIVISION_NAME_E] [nvarchar](40) NULL,
	[DEPT_CD_03] [nvarchar](8) NULL,
	[BIZ_DEPT_NAME_J] [nvarchar](40) NULL,
	[BIZ_DEPT_NAME_E] [nvarchar](40) NULL,
	[SECTION_CD_03] [nvarchar](10) NULL,
	[BIZ_SECTION_NAME_J] [nvarchar](40) NULL,
	[BIZ_SECTION_NAME_E] [nvarchar](40) NULL,
	[HJN_HIGH_CORP_CD] [nvarchar](10) NULL,
	[HJN_SHORT_NAME_J] [nvarchar](20) NULL,
	[HJN_SHORT_NAME_E] [nvarchar](20) NULL,
	[HI_CORP_CD] [nvarchar](10) NULL,
	[HI_SHORT_NAME_J] [nvarchar](20) NULL,
	[HI_SHORT_NAME_E] [nvarchar](20) NULL,
	[PRICE_PART_NO] [nvarchar](32) NULL,
	[MATERIAL_CD_KEY_A1] [nvarchar](18) NULL,
	[ZZSMAKTX] [nvarchar](40) NULL,
	[PART_NO_FROM_DIV] [nvarchar](1) NULL,
	[SPEC_JUDGE_FLG] [nvarchar](1) NULL,
	[SEG_CD] [nvarchar](28) NULL
) ON [PS_PartitionByMonth_DW]([STK_BASEDAY])
WITH
(
DATA_COMPRESSION = PAGE
)

GO
SET ANSI_PADDING ON

GO
CREATE CLUSTERED INDEX [I_T_SAL_STOCK_1] ON [dbo].[T_SAL_STOCK]
(
	[ZZKUNNR01] ASC,
	[MATERIAL_CD_KEY_A1] ASC,
	[SEG_CD] ASC,
	[ZZWAERS] ASC,
	[STK_BASEMONTH] ASC,
	[STK_BASEDAY] ASC,
	[W_DS_TB_NAME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, DATA_COMPRESSION = PAGE) ON [PS_PartitionByMonth_DW]([STK_BASEDAY])
GO
