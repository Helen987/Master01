USE [BI_DM]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[F_SAL_BILL_GO_EXCH_MLR](
	[SCM_CUSTOMER_CD] [nvarchar](10) NULL,
	[ORDER_PART_NO_CD] [nvarchar](18) NULL,
	[SEG_CD] [nvarchar](28) NULL,
	[CURRENCY] [nvarchar](5) NULL,
	[RECORD_DATE] [date] NULL,
	[ORDER_DATE] [date] NULL,
	[RDLV_DATE] [date] NULL,
	[SHIPTO_DATE] [date] NULL,
	[CURRENCY_EXCH] [nvarchar](5) NULL,
	[GO_AMT_NET_EXCH] [money] NULL,
	[GO_AMT_STD_EXCH] [money] NULL,
	[GO_AMT_NET_EXCH_MLR] [money] NULL,
	[GO_AMT_STD_EXCH_MLR] [money] NULL,
	[GO_QTY] [decimal](18, 0) NULL,
	[GO_AMT_STD_USER_EXCH] [money] NULL,
	[GO_AMT_STD_USER_EXCH_MLR] [money] NULL,
	[REG_DATETIME] [smalldatetime] NULL,
	[UPD_DATETIME] [smalldatetime] NULL,
	[ID] [uniqueidentifier] NULL,
	[PRODUCT_DATASHEET_ID] [nvarchar](34) NULL,
	[GO_ANP_AMT_NET_EXCH] [money] NULL
) ON [PS_PartitionByMonth_DM]([RECORD_DATE])
WITH
(
DATA_COMPRESSION = PAGE
)
GO
ALTER TABLE [dbo].[F_SAL_BILL_GO_EXCH_MLR] ADD  CONSTRAINT [DF_F_SAL_BILL_GO_EXCH_MLR_REG_DATETIME]  DEFAULT (getdate()) FOR [REG_DATETIME]
GO
ALTER TABLE [dbo].[F_SAL_BILL_GO_EXCH_MLR] ADD  CONSTRAINT [DF_F_SAL_BILL_GO_EXCH_MLR_UPD_DATETIME]  DEFAULT (getdate()) FOR [UPD_DATETIME]
GO
ALTER TABLE [dbo].[F_SAL_BILL_GO_EXCH_MLR] ADD  DEFAULT (newid()) FOR [ID]
GO