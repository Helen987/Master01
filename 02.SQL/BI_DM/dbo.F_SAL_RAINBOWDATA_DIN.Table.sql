USE [BI_DM]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[F_SAL_RAINBOWDATA_DIN](
	[SCM_CUSTOMER_CD] [nvarchar](10) NULL,
	[B_WIN_SCM_CUSTOMER_CD] [nvarchar](10) NULL,
	[ORDER_PART_NO_CD] [nvarchar](18) NULL,
	[SEG_CD] [nvarchar](28) NULL,
	[BUSINESS_SITE] [nvarchar](2) NULL,
	[CALENDAR_YM] [date] NULL,
	[CURRENCY] [nvarchar](5) NULL,
	[CURRENCY_EXCH] [nvarchar](14) NULL,
	[TODemand_Amt] [money] NULL,
	[TOReply_Amt] [money] NULL,
	[GODemand_Amt]  AS (isnull([GODemand_V0_Amt],(0))+isnull([GODemand_V1_Amt],(0))),
	[GODemand_V0_Amt] [money] NULL,
	[GODemand_V1_Amt] [money] NULL,
	[GODemand_Std]  AS (isnull([GODemand_V0_Std],(0))+isnull([GODemand_V1_Std],(0))),
	[GODemand_V0_Std] [money] NULL,
	[GODemand_V1_Std] [money] NULL,
	[GOReply_Amt] [money] NULL,
	[GOReply_Std] [money] NULL,
	[ShippableAATP_Amt] [money] NULL,
	[AdjustedSFOut_Amt] [money] NULL,
	[JSF_Amt]  AS (isnull([JSF_V0_Amt],(0))+isnull([JSF_V1_Amt],(0))),
	[JSF_V0_Amt] [money] NULL,
	[JSF_V1_Amt] [money] NULL,
	[ProductionPlanning_Amt] [money] NULL,
	[OSC_MoveAve_Cst] [money] NULL,
	[OSC_MoveAve_GP_Amt] [money] NULL,
	[GODemand_Qty]  AS (isnull([GODemand_V0_Qty],(0))+isnull([GODemand_V1_Qty],(0))),
	[GODemand_V0_Qty] [decimal](38, 4) NULL,
	[GODemand_V1_Qty] [decimal](38, 4) NULL,
	[GODemand_Amt_NB_Bwin] [money] NULL,
	[GODemand_Amt_NB_Din] [money] NULL,
	[GOReply_Qty] [decimal](38, 4) NULL,
	[GOReply_Amt_NB_Bwin] [money] NULL,
	[GOReply_Amt_NB_Din] [money] NULL,
	[InsertDatetime] [datetime] NULL,
	[UpdateDatetime] [datetime] NULL,
	[BIASF_Amt] [money] NULL,
	[BIASF_Qty] [decimal](38, 4) NULL,
	[AdjustedSFOut_Qty] [decimal](38, 4) NULL,
	[JSF_V0_Qty] [decimal](38, 4) NULL,
	[JSF_V1_Qty] [decimal](38, 4) NULL,
	[JSF_Qty]  AS (isnull([JSF_V0_Qty],(0))+isnull([JSF_V1_Qty],(0))),
	[ShippableAATP_Qty] [decimal](38, 4) NULL,
	[TODemand_Qty] [decimal](38, 4) NULL,
	[TOReply_Qty] [decimal](38, 4) NULL,
	[UPDATE_DATE] [DATE] NULL,
	[TODemand_Std] [money] NULL,
	[TOReply_Std] [money] NULL,
	[ProductionPlanning_Std] [money] NULL,
	[ProductionPlanning_Qty] [decimal](38, 4) NULL,
	[ProductionPlanning_Demand_Amt] [money] NULL,
	[ProductionPlanning_Demand_Qty] [decimal](38, 4) NULL,
	[ProductionPlanning_Demand_Std] [money] NULL
) ON [PS_PartitionByMonth_DM]([CALENDAR_YM])
WITH
(
DATA_COMPRESSION = PAGE
)

GO
SET ANSI_PADDING ON

GO
CREATE CLUSTERED INDEX [I_F_SAL_RAINBOWDATA_DIN_1] ON [dbo].[F_SAL_RAINBOWDATA_DIN]
(
	[SCM_CUSTOMER_CD] ASC,
	[B_WIN_SCM_CUSTOMER_CD] ASC,
	[ORDER_PART_NO_CD] ASC,
	[SEG_CD] ASC,
	[BUSINESS_SITE] ASC,
	[CALENDAR_YM] ASC,
	[CURRENCY] ASC,
	[CURRENCY_EXCH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, DATA_COMPRESSION = PAGE) ON [PS_PartitionByMonth_DM]([CALENDAR_YM])
GO
