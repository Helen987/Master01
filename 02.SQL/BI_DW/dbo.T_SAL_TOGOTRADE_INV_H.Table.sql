USE [BI_DW]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_SAL_TOGOTRADE_INV_H](
	[SCM_CUSTOMER_CD] [nvarchar](10) NULL,
	[ORDER_PART_NO_CD] [nvarchar](18) NULL,
	[SEG_CD] [nvarchar](28) NULL,
	[BUSINESS_SITE] [nvarchar](2) NULL,
	[CALENDAR_YM] [date] NULL,
	[UPDATE_DATE] [date] NULL,
	[RESULTDIV] [nvarchar](1) NULL,
	[CURRENCY] [nvarchar](5) NULL,
	[TODemand_Amt_JPY] [money] NULL,
	[TODemand_Qty] [decimal](20, 4) NULL,
	[TOReply_Amt_JPY] [money] NULL,
	[TOReply_Qty] [decimal](20, 4) NULL,
	[GODemand_Amt_JPY] [money] NULL,
	[GODemand_Qty] [decimal](20, 4) NULL,
	[GOReply_Amt_JPY] [money] NULL,
	[GOReply_Std] [money] NULL,
	[GOReply_Qty] [decimal](20, 4) NULL,
	[TOBacklog_Amt_JPY] [money] NULL,
	[TOBacklog_Qty] [decimal](20, 4) NULL,
	[GOBacklog_Amt_JPY] [money] NULL,
	[GOBacklog_Qty] [decimal](20, 4) NULL,
	[SOBacklog_Amt_JPY] [money] NULL,
	[SOBacklog_Qty] [decimal](20, 4) NULL,
	[COBacklog_Amt_JPY] [money] NULL,
	[COBacklog_Qty] [decimal](20, 4) NULL,
	[RELInventory_Amt_JPY] [money] NULL,
	[RELInventory_QTY] [decimal](20, 4) NULL,
	[RELSalesInventory_Amt_JPY] [money] NULL,
	[RELSalesInventory_QTY] [decimal](20, 4) NULL,
	[TradeInventory_Amt_JPY] [money] NULL,
	[TradeInventory_QTY] [decimal](20, 4) NULL,
	[TODemand_Std] [money] NULL,
	[TOReply_Std] [money] NULL
) ON [PS_PartitionByMonth_DW]([UPDATE_DATE])
WITH
(
DATA_COMPRESSION = PAGE
)

GO
SET ANSI_PADDING ON

GO
CREATE CLUSTERED INDEX [I_T_SAL_TOGOTRADE_INV_H_1] ON [dbo].[T_SAL_TOGOTRADE_INV_H]
(
	[SCM_CUSTOMER_CD] ASC,
	[ORDER_PART_NO_CD] ASC,
	[CALENDAR_YM] ASC,
	[UPDATE_DATE] ASC,
	[RESULTDIV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, DATA_COMPRESSION = PAGE) ON [PS_PartitionByMonth_DW]([UPDATE_DATE])
GO
