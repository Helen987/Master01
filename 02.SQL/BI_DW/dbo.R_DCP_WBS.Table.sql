USE [BI_DW]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[R_DCP_WBS](
	[WBS] [nvarchar](30) NOT NULL,
	[WBS_NAME] [nvarchar](180) NULL,
	[DIVISION_CD] [nvarchar](6) NULL,
	[BUMON_CD] [nvarchar](120) NULL,
	[SEGMENT] [nvarchar](300) NULL,
	[PRODUCT_SERIES] [nvarchar](180) NULL,
	[PRODUCT_NAME] [nvarchar](200) NULL,
	[PDT_LEADER_DIVISION] [nvarchar](400) NULL,
	[PDT_LEADER_TITLE] [nvarchar](60) NULL,
	[PDT_LEADER_NAME] [nvarchar](80) NULL,
	[PDT_LEADER_CONTACT] [nvarchar](80) NULL,
	[MAIL_ADDRESS] [nvarchar](100) NULL,
	[DCPBOX_URL] [nvarchar](500) NULL,
	[MILESTONE01_EXPECTED] [date] NULL,
	[MILESTONE01_ACTUAL] [date] NULL,
	[MILESTONE02_EXPECTED] [date] NULL,
	[MILESTONE02_ACTUAL] [date] NULL,
	[MILESTONE03_EXPECTED] [date] NULL,
	[MILESTONE03_ACTUAL] [date] NULL,
	[MILESTONE04_EXPECTED] [date] NULL,
	[MILESTONE04_ACTUAL] [date] NULL,
	[MILESTONE05_EXPECTED] [date] NULL,
	[MILESTONE05_ACTUAL] [date] NULL,
	[MILESTONE06_EXPECTED] [date] NULL,
	[MILESTONE06_ACTUAL] [date] NULL,
	[MILESTONE07_EXPECTED] [date] NULL,
	[MILESTONE07_ACTUAL] [date] NULL,
	[MILESTONE08_EXPECTED] [date] NULL,
	[MILESTONE08_ACTUAL] [date] NULL,
	[MILESTONE09_EXPECTED] [date] NULL,
	[MILESTONE09_ACTUAL] [date] NULL,
	[MILESTONE10_EXPECTED] [date] NULL,
	[MILESTONE10_ACTUAL] [date] NULL,
	[DEV_LEVEL] [nvarchar](6) NULL,
	[TRUST_LEVEL] [nvarchar](9) NULL,
	[DCP_UPDATETIME] [smalldatetime] NULL
) ON [BI_DW_Staging]

GO
