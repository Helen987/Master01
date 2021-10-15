USE [BI_DM]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[F_SAL_BILL_GO_SUM_FIX](
	[CALENDAR_YM] [nvarchar](7) NULL,
	[CUSTOMER_GRP1] [nvarchar](300) NULL,
	[BF_CHANNEL] [nvarchar](300) NULL,
	[PRODUCT_GROUP] [nvarchar](300) NULL,
	[APL1_TXT] [nvarchar](40) NULL,
	[GO_QTY] [decimal](18, 0) NULL,
	[GO_AMT_JPY] [money] NULL,
	[GO_GP_AMT_JPY] [money] NULL,
	[AnnualPlan_AMT_JPY] [money] NULL,
	[PreM_GO_AMT_JPY] [money] NULL,
	[PreM_GO_GP_AMT_JPY] [money] NULL,
	[PreQ_GO_AMT_JPY] [money] NULL,
	[PreQ_GO_GP_AMT_JPY] [money] NULL,
	[PreHY_GO_AMT_JPY] [money] NULL,
	[PreHY_GO_GP_AMT_JPY] [money] NULL,
	[PreY_GO_AMT_JPY] [money] NULL,
	[PreY_GO_GP_AMT_JPY] [money] NULL,
	[PreYM_GO_AMT_JPY] [money] NULL,
	[PreYM_GO_GP_AMT_JPY] [money] NULL
) ON [BI_DM_Fact_NonPartition]
WITH
(
DATA_COMPRESSION = PAGE
)

GO
