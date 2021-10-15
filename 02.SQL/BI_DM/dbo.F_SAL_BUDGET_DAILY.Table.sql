USE [BI_DM]
GO
/****** Object:  Table [dbo].[F_SAL_BUDGET_DAILY]    Script Date: 2017/02/14 14:13:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[F_SAL_BUDGET_DAILY](
	[SCM_CUSTOMER_CD] [nvarchar](10) NULL,
	[ORDER_PART_NO_CD] [nvarchar](18) NULL,
	[SEG_CD] [nvarchar](28) NULL,
	[BUSINESS_SITE] [nvarchar](2) NULL,
	[CALENDAR_YM] [date] NULL,
	[CURRENCY] [nvarchar](5) NULL,
	[VERSION_RESULT] [nvarchar](1) NULL,
	[VERSION_OPEN] [nvarchar](1) NULL,
	[CURRENCY_EXCH] [nvarchar](14) NULL,
	[TO_AMT] [money] NULL,
	[TO_AMT_JPY] [money] NULL,
	[TO_STD] [money] NULL,
	[TO_QTY] [decimal](20, 0) NULL,
	[GO_AMT] [money] NULL,
	[GO_AMT_JPY] [money] NULL,
	[GO_STD] [money] NULL,
	[GO_QTY] [decimal](20, 0) NULL,
	[SO_AMT] [money] NULL,
	[SO_AMT_JPY] [money] NULL,
	[SO_STD] [money] NULL,
	[SO_QTY] [decimal](20, 0) NULL,
	[REG_DATETIME] [smalldatetime] NULL,
	[UPD_DATETIME] [smalldatetime] NULL
) ON [PS_PartitionByMonth_DM]([CALENDAR_YM])
WITH
(
DATA_COMPRESSION = PAGE
)

GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [I_F_SAL_BUDGET_DAILY_1]    Script Date: 2017/02/14 14:20:24 ******/
CREATE CLUSTERED INDEX [I_F_SAL_BUDGET_DAILY_1] ON [dbo].[F_SAL_BUDGET_DAILY]
(
	[SCM_CUSTOMER_CD] ASC,
	[ORDER_PART_NO_CD] ASC,
	[SEG_CD] ASC,
	[BUSINESS_SITE] ASC,
	[CALENDAR_YM] ASC,
	[CURRENCY] ASC,
	[VERSION_RESULT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, DATA_COMPRESSION = PAGE) ON [PS_PartitionByMonth_DM]([CALENDAR_YM])
GO
ALTER TABLE [dbo].[F_SAL_BUDGET_DAILY] ADD  CONSTRAINT [DF_F_SAL_BUDGET_DAILY_REG_DATETIME]  DEFAULT (getdate()) FOR [REG_DATETIME]
GO
ALTER TABLE [dbo].[F_SAL_BUDGET_DAILY] ADD  CONSTRAINT [DF_F_SAL_BUDGET_DAILY_UPD_DATETIME]  DEFAULT (getdate()) FOR [UPD_DATETIME]
GO
