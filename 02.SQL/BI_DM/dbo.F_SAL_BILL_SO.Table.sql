USE [BI_DM]
GO
/****** Object:  Table [dbo].[F_SAL_BILL_SO]    Script Date: 2017/03/29 15:16:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[F_SAL_BILL_SO](
	[SCM_CUSTOMER_CD] [nvarchar](10) NULL,
	[ORDER_PART_NO_CD] [nvarchar](18) NULL,
	[SEG_CD] [nvarchar](28) NULL,
	[CURRENCY] [nvarchar](5) NULL,
	[RECORD_DATE] [date] NULL,
	[ORDER_DATE] [date] NULL,
	[RDLV_DATE] [date] NULL,
	[SHIPTO_DATE] [date] NULL,
	[SO_AMT_JPY] [money] NULL,
	[SO_AMT_TTM] [money] NULL,
	[SO_AMT_NET] [money] NULL,
	[SO_AMT_STD] [money] NULL,
	[SO_QTY] [decimal](18, 0) NULL,
	[SO_AMT_TP1] [money] NULL,
	[SO_AMT_TP2] [money] NULL,
	[SO_AMT_STD_USER] [money] NULL,
	[SO_AMT_SRP] [money] NULL,
	[REG_DATETIME] [smalldatetime] NULL,
	[UPD_DATETIME] [smalldatetime] NULL,
	[ACTUAL_UNMANAGED_FLG] [nvarchar](1) NULL,
	[ID] [uniqueidentifier] NULL,
	[PRODUCT_DATASHEET_ID] [nvarchar](34) NULL
) ON [PS_PartitionByMonth_DM]([RECORD_DATE])
WITH
(
DATA_COMPRESSION = PAGE
)

GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [I_F_SAL_BILL_SO_1]    Script Date: 2017/03/29 15:16:54 ******/
CREATE CLUSTERED INDEX [I_F_SAL_BILL_SO_1] ON [dbo].[F_SAL_BILL_SO]
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
ALTER TABLE [dbo].[F_SAL_BILL_SO] ADD  CONSTRAINT [DF_F_SAL_BILL_SO_REG_DATETIME]  DEFAULT (getdate()) FOR [REG_DATETIME]
GO
ALTER TABLE [dbo].[F_SAL_BILL_SO] ADD  CONSTRAINT [DF_F_SAL_BILL_SO_UPD_DATETIME]  DEFAULT (getdate()) FOR [UPD_DATETIME]
GO
ALTER TABLE [dbo].[F_SAL_BILL_SO] ADD  DEFAULT (newid()) FOR [ID]
GO
