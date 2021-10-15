USE [BI_DM]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[F_SAL_BILL_GO_EXCH](
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
	[GO_QTY] [decimal](18, 0) NULL,
	[GO_AMT_STD_USER_EXCH] [money] NULL,
	[REG_DATETIME] [smalldatetime] NULL,
	[UPD_DATETIME] [smalldatetime] NULL,
	[ACTUAL_UNMANAGED_FLG] [nvarchar](1) NULL
) ON [PS_PartitionByMonth_DM]([RECORD_DATE])
WITH
(
DATA_COMPRESSION = PAGE
)

GO
SET ANSI_PADDING ON

GO
CREATE CLUSTERED INDEX [I_F_SAL_BILL_GO_EXCH] ON [dbo].[F_SAL_BILL_GO_EXCH]
(
	[SCM_CUSTOMER_CD] ASC,
	[ORDER_PART_NO_CD] ASC,
	[SEG_CD] ASC,
	[CURRENCY] ASC,
	[RECORD_DATE] ASC,
	[ORDER_DATE] ASC,
	[RDLV_DATE] ASC,
	[SHIPTO_DATE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, DATA_COMPRESSION = PAGE) ON [PS_PartitionByMonth_DM]([RECORD_DATE])
GO
ALTER TABLE [dbo].[F_SAL_BILL_GO_EXCH] ADD  CONSTRAINT [DF_F_SAL_BILL_GO_EXCH_REG_DATETIME]  DEFAULT (getdate()) FOR [REG_DATETIME]
GO
ALTER TABLE [dbo].[F_SAL_BILL_GO_EXCH] ADD  CONSTRAINT [DF_F_SAL_BILL_GO_EXCH_UPD_DATETIME]  DEFAULT (getdate()) FOR [UPD_DATETIME]
GO
