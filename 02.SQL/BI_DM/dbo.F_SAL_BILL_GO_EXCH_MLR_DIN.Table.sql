USE [BI_DM]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[F_SAL_BILL_GO_EXCH_MLR_DIN](
	[SCM_CUSTOMER_CD] [nvarchar](10) NULL,
	[B_WIN_SCM_CUSTOMER_CD] [nvarchar](10) NULL,
	[ORDER_PART_NO_CD] [nvarchar](18) NULL,
	[SEG_CD] [nvarchar](28) NULL,
	[CURRENCY] [nvarchar](5) NULL,
	[RECORD_DATE] [date] NULL,
	[ORDER_DATE] [date] NULL,
	[RDLV_DATE] [date] NULL,
	[SHIPTO_DATE] [date] NULL,
	[CURRENCY_EXCH] [nvarchar](14) NULL,
	[GO_AMT_JPY] [money] NULL,
	[GO_AMT_TTM] [money] NULL,
	[GO_AMT] [money] NULL,
	[GO_AMT_STD] [money] NULL,
	[GO_AMT_MLR] [money] NULL,
	[GO_AMT_STD_MLR] [money] NULL,
	[GO_QTY] [decimal](18, 4) NULL,
	[GO_AMT_TP1] [money] NULL,
	[GO_AMT_TP2] [money] NULL,
	[GO_AMT_STD_USER] [money] NULL,
	[GO_AMT_STD_USER_MLR] [money] NULL,
	[GO_AMT_SRP] [money] NULL,
	[OSC_MoveAve_Cst] [money] NULL,
	[OSC_MoveAve_GP_Amt] [money] NULL,
	[id] [uniqueidentifier] NULL,
	[PRODUCT_DATASHEET_ID] [nvarchar](34) NULL,
	[GO_ANP_AMT] [money] NULL
) ON [PS_PartitionByMonth_DM]([RECORD_DATE])
WITH
(
DATA_COMPRESSION = PAGE
)
GO
