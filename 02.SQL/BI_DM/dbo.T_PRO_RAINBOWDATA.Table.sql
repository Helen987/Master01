USE [BI_DM]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_PRO_RAINBOWDATA](
	[SCM_CUSTOMER_CD] [nvarchar](10) NOT NULL,
	[ORDER_PART_NO_CD] [nvarchar](18) NOT NULL,
	[SEG_CD] [nvarchar](28) NOT NULL,
	[BUSINESS_SITE] [nvarchar](2) NOT NULL,
	[DATASOURCE_CUBE] [nvarchar](9) NOT NULL,
	[CALENDAR_YM] [date] NOT NULL,
	[UPDATE_DATE] [date] NOT NULL,
	[UPDATE_YEAR_WEEK] [nvarchar](6) NOT NULL,
	[CURRENCY] [nvarchar](5) NOT NULL,
	[TODemand_Amt] [money] NULL,
	[TODemand_Qty] [decimal](20, 4) NULL,
	[TOReply_Amt] [money] NULL,
	[TOReply_Qty] [decimal](20, 4) NULL,
	[GODemand_Amt]  AS (isnull([GODemand_V0_Amt],(0))+isnull([GODemand_V1_Amt],(0))),
	[GODemand_V0_Amt] [money] NULL,
	[GODemand_V1_Amt] [money] NULL,
	[GODemand_Other_Amt] [money] NULL,
	[GODemand_Std]  AS (isnull([GODemand_V0_Std],(0))+isnull([GODemand_V1_Std],(0))),
	[GODemand_V0_Std] [money] NULL,
	[GODemand_V1_Std] [money] NULL,
	[GODemand_Other_Std] [money] NULL,
	[GODemand_Qty]  AS (isnull([GODemand_V0_Qty],(0))+isnull([GODemand_V1_Qty],(0))),
	[GODemand_V0_Qty] [decimal](20, 4) NULL,
	[GODemand_V1_Qty] [decimal](20, 4) NULL,
	[GODemand_Other_Qty] [decimal](20, 4) NULL,
	[GOReply_Amt] [money] NULL,
	[GOReply_Std] [money] NULL,
	[GOReply_Qty] [decimal](20, 4) NULL,
	[ShippableAATP_Amt] [money] NULL,
	[ShippableAATP_Qty] [decimal](20, 4) NULL,
	[AdjustedSFOut_Amt] [money] NULL,
	[AdjustedSFOut_Qty] [decimal](20, 4) NULL,
	[JSF_Amt]  AS (isnull([JSF_V0_Amt],(0))+isnull([JSF_V1_Amt],(0))),
	[JSF_V0_Amt] [money] NULL,
	[JSF_V1_Amt] [money] NULL,
	[JSF_Other_Amt] [money] NULL,
	[JSF_Qty]  AS (isnull([JSF_V0_Qty],(0))+isnull([JSF_V1_Qty],(0))),
	[JSF_V0_Qty] [decimal](20, 4) NULL,
	[JSF_V1_Qty] [decimal](20, 4) NULL,
	[JSF_Other_Qty] [decimal](20, 4) NULL,
	[ProductionPlanning_Amt] [money] NULL,
	[ProductionPlanning_Qty] [decimal](20, 4) NULL,
 CONSTRAINT [PK_T_PRO_RAINBOWDATA] PRIMARY KEY CLUSTERED 
(
	[SCM_CUSTOMER_CD] ASC,
	[ORDER_PART_NO_CD] ASC,
	[SEG_CD] ASC,
	[BUSINESS_SITE] ASC,
	[DATASOURCE_CUBE] ASC,
	[CALENDAR_YM] ASC,
	[UPDATE_DATE] ASC,
	[UPDATE_YEAR_WEEK] ASC,
	[CURRENCY] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, DATA_COMPRESSION = PAGE) ON [PS_PartitionByMonth_DM]([UPDATE_DATE])
) ON [PS_PartitionByMonth_DM]([UPDATE_DATE])

GO
