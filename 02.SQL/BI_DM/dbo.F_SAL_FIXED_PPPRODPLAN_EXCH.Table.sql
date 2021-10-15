USE [BI_DM]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[F_SAL_FIXED_PPPRODPLAN_EXCH](
	[SCM_CUSTOMER_CD] [nvarchar](10) NULL,
	[ORDER_PART_NO_CD] [nvarchar](18) NULL,
	[SEG_CD] [nvarchar](28) NULL,
	[BUSINESS_SITE] [nvarchar](2) NULL,
	[CALENDAR_YM] [date] NULL,
	[UPDATE_DATE] [date] NULL,
	[CURRENCY] [nvarchar](5) NULL,
	[CURRENCY_EXCH] [nvarchar](5) NULL,
	[ProductionPlanning_Amt_EXCH] [money] NULL,
	[ProductionPlanning_Qty] [decimal](38, 4) NULL
) ON [PS_PartitionByMonth_DM]([UPDATE_DATE])
WITH
(
DATA_COMPRESSION = PAGE
)

GO
SET ANSI_PADDING ON

GO
CREATE CLUSTERED INDEX [I_F_SAL_FIXED_PPPRODPLAN_EXCH_1] ON [dbo].[F_SAL_FIXED_PPPRODPLAN_EXCH]
(
	[SCM_CUSTOMER_CD] ASC,
	[ORDER_PART_NO_CD] ASC,
	[CALENDAR_YM] ASC,
	[UPDATE_DATE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, DATA_COMPRESSION = PAGE) ON [PS_PartitionByMonth_DM]([UPDATE_DATE])
GO
