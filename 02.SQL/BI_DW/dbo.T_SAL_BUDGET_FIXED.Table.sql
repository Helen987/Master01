USE [BI_DW]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_SAL_BUDGET_FIXED](
	[SCM_CUSTOMER_CD] [nvarchar](10) NULL,
	[SO_PART_NO_KEY_A4] [nvarchar](40) NULL,
	[PARTNO_CM_CMB_50] [nvarchar](50) NULL,
	[ORDER_PART_NO_CD] [nvarchar](18) NULL,
	[SEG_CD] [nvarchar](28) NULL,
	[BUSINESS_SITE] [nvarchar](2) NULL,
	[CALENDAR_YM] [date] NULL,
	[CURRENCY] [nvarchar](5) NULL,
	[VERSION_RESULT] [nvarchar](1) NULL,
	[VERSION_OPEN] [nvarchar](1) NULL,
	[BUDGET_PLANNING_DATE] [date] NULL,
	[TO_AMT] [money] NULL,
	[TO_AMT_JPY] [money] NULL,
	[TO_STD_JPY] [money] NULL,
	[TO_QTY] [decimal](20, 0) NULL,
	[GO_AMT] [money] NULL,
	[GO_AMT_JPY] [money] NULL,
	[GO_STD_JPY] [money] NULL,
	[GO_QTY] [decimal](20, 0) NULL,
	[SO_AMT] [money] NULL,
	[SO_AMT_JPY] [money] NULL,
	[SO_STD_JPY] [money] NULL,
	[SO_QTY] [decimal](20, 0) NULL,
	[REG_DATETIME] [smalldatetime] NULL,
	[UPD_DATETIME] [smalldatetime] NULL
) ON [PS_PartitionByMonth_DW]([CALENDAR_YM])
WITH
(
DATA_COMPRESSION = PAGE
)

GO
SET ANSI_PADDING ON

GO
CREATE CLUSTERED INDEX [I_T_SAL_BUDGET_FIXED_1] ON [dbo].[T_SAL_BUDGET_FIXED]
(
	[SCM_CUSTOMER_CD] ASC,
	[ORDER_PART_NO_CD] ASC,
	[SEG_CD] ASC,
	[BUSINESS_SITE] ASC,
	[CALENDAR_YM] ASC,
	[CURRENCY] ASC,
	[VERSION_RESULT] ASC,
	[VERSION_OPEN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, DATA_COMPRESSION = PAGE) ON [PS_PartitionByMonth_DW]([CALENDAR_YM])
GO
ALTER TABLE [dbo].[T_SAL_BUDGET_FIXED] ADD  CONSTRAINT [DF_T_SAL_BUDGET_FIXED_REG_DATETIME]  DEFAULT (getdate()) FOR [REG_DATETIME]
GO
ALTER TABLE [dbo].[T_SAL_BUDGET_FIXED] ADD  CONSTRAINT [DF_T_SAL_BUDGET_FIXED_UPD_DATETIME]  DEFAULT (getdate()) FOR [UPD_DATETIME]
GO
