USE [BI_DM]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[F_SAL_BILL_SO_EXCH_MLR_DIN](
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
	[SO_AMT_JPY] [money] NULL,
	[SO_AMT_TTM] [money] NULL,
	[SO_AMT] [money] NULL,
	[SO_AMT_STD] [money] NULL,
	[SO_AMT_MLR] [money] NULL,
	[SO_AMT_STD_MLR] [money] NULL,
	[SO_QTY] [decimal](18, 4) NULL,
	[SO_AMT_TP1] [money] NULL,
	[SO_AMT_TP2] [money] NULL,
	[SO_AMT_STD_USER] [money] NULL,
	[SO_AMT_STD_USER_MLR] [money] NULL,
	[SO_AMT_SRP] [money] NULL,
	[id] [uniqueidentifier] NULL,
	[PRODUCT_DATASHEET_ID] [nvarchar](34) NULL
) ON [PS_PartitionByMonth_DM]([RECORD_DATE])
WITH
(
DATA_COMPRESSION = PAGE
)
GO

