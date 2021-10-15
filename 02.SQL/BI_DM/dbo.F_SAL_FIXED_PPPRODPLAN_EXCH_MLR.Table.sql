USE [BI_DM]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[F_SAL_FIXED_PPPRODPLAN_EXCH_MLR](
	[SCM_CUSTOMER_CD] [nvarchar](10) NULL,
	[ORDER_PART_NO_CD] [nvarchar](18) NULL,
	[SEG_CD] [nvarchar](28) NULL,
	[BUSINESS_SITE] [nvarchar](2) NULL,
	[CALENDAR_YM] [date] NULL,
	[UPDATE_DATE] [date] NULL,
	[CURRENCY] [nvarchar](5) NULL,
	[CURRENCY_EXCH] [nvarchar](5) NULL,
	[ProductionPlanning_Amt_EXCH] [money] NULL,
	[ProductionPlanning_Amt_EXCH_MLR] [money] NULL,
	[ProductionPlanning_Qty] [decimal](38, 4) NULL
) ON [PS_PartitionByMonth_DM]([UPDATE_DATE])
WITH
(
DATA_COMPRESSION = PAGE
)

GO
