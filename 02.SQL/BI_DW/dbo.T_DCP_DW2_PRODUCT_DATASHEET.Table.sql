USE [BI_DW]
GO
/****** Object:  Table [dbo].[T_DCP_DW2_PRODUCT_DATASHEET]    Script Date: 2017/03/22 19:29:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_DCP_DW2_PRODUCT_DATASHEET](
	[SALES_ORDER_PART_NO] [nvarchar](40) NOT NULL,
	[DINCUSTCD] [nvarchar](10) NOT NULL,
	[INSERT_FLG] [nvarchar](2) NULL,
	[SIP_KBN] [nvarchar](6) NOT NULL,
	[SELECT_KBN] [nvarchar](6) NOT NULL,
	[SHIYOSU] [int] NULL,
	[PRODUCT_HOSOKU] [nvarchar](500) NULL,
	[QVW_PRODUCT_KBN] [nvarchar](20) NULL,
	[DEV_COST_DATE] [nvarchar](10) NULL,
	[WBS] [nvarchar](7) NULL,
	[ROM] [nvarchar](20) NULL,
	[PROCESS_NAME] [nvarchar](30) NULL,
	[PROCESS_NICKNAME] [nvarchar](40) NULL,
	[PROCESS_NAME_SUMMARY] [nvarchar](50) NULL,
	[LINE_DIAMETER] [nvarchar](10) NULL,
	[PROSESS_1] [nvarchar](100) NULL,
	[WP_LINE_NAME] [nvarchar](100) NULL,
	[UEHKEI] [nvarchar](10) NULL,
	[WPP_RAP_OPM] [nvarchar](10) NULL,
	[WPP_RAP_OEM_KYOTEN] [nvarchar](30) NULL,
	[POLE] [nvarchar](20) NULL,
	[POLE_KYOTEN] [nvarchar](20) NULL,
	[PKGTYPE] [nvarchar](30) NULL,
	[PKGCODE] [nvarchar](40) NULL,
	[PIN] [nvarchar](20) NULL,
	[CU] [nvarchar](10) NULL,
	[PKG_MEISAI] [nvarchar](10) NULL,
	[ASSY_LINE_NAME] [nvarchar](80) NULL,
	[FT_LINE_NAME] [nvarchar](80) NULL,
	[HIN_KBN] [nvarchar](10) NULL,
	[BUNRUI1] [nvarchar](50) NULL,
	[BUNRUI2] [nvarchar](50) NULL,
	[BUNRUI3] [nvarchar](50) NULL,
	[BUNRUI4] [nvarchar](50) NULL,
	[BUNRUI5] [nvarchar](50) NULL,
	[BUNRUI6] [nvarchar](50) NULL,
	[BUNRUI7] [nvarchar](50) NULL,
	[BUNRUI8] [nvarchar](50) NULL,
	[BUNRUI9] [nvarchar](50) NULL,
	[BUNRUI10] [nvarchar](50) NULL,
	[CHIP_NUM] [numeric](9, 1) NULL,
	[RUI_BUDO] [numeric](10, 2) NULL,
	[WP_BUDO] [numeric](10, 2) NULL,
	[WT_BUDO] [numeric](10, 2) NULL,
	[FT_BUDO] [numeric](10, 2) NULL,
	[ASSY_BUDO] [numeric](10, 2) NULL,
	[RENESAS_PACKAGE] [nvarchar](30) NULL,
	[RM_PKG] [nvarchar](50) NULL,
	[RH_PKG] [nvarchar](50) NULL,
	[EL_PKG] [nvarchar](50) NULL,
	[INSERT_TIME] [smalldatetime] NULL,
	[UPDATE_TIME] [smalldatetime] NULL,
 CONSTRAINT [PK_T_DCP_DW2_PRODUCT_DATASHEET] PRIMARY KEY CLUSTERED 
(
	[SALES_ORDER_PART_NO] ASC,
	[DINCUSTCD] ASC,
	[SIP_KBN] ASC,
	[SELECT_KBN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [BI_DW_NonClusteredIndex]
) ON [BI_DW_NonClusteredIndex]

GO
ALTER TABLE [dbo].[T_DCP_DW2_PRODUCT_DATASHEET] ADD  CONSTRAINT [DF_T_DCP_DW2_PRODUCT_DATASHEET_INSERT_TIME]  DEFAULT (getdate()) FOR [INSERT_TIME]
GO
ALTER TABLE [dbo].[T_DCP_DW2_PRODUCT_DATASHEET] ADD  CONSTRAINT [DF_T_DCP_DW2_PRODUCT_DATASHEET_UPDATE_TIME]  DEFAULT (getdate()) FOR [UPDATE_TIME]
GO
