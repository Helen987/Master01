USE [BI_DM]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_SAL_SHIPPING](
	[SCM_CUSTOMER_CD] [nvarchar](10) NULL,
	[ORDER_PART_NO_CD] [nvarchar](18) NULL,
	[SEG_CD] [nvarchar](28) NULL,
	[CURRENCY] [nvarchar](5) NULL,
	[RECORD_DATE] [date] NULL,
	[ORDER_DATE] [date] NULL,
	[CARRY_DATE] [date] NULL,
	[TO_AMT_JPY] [money] NULL,
	[TO_AMT_NET] [money] NULL,
	[TO_QTY] [decimal](18, 0) NULL
) ON [PS_PartitionByMonth_DM]([RECORD_DATE])
WITH
(
DATA_COMPRESSION = PAGE
)

GO
SET ANSI_PADDING ON

GO
CREATE CLUSTERED INDEX [I_T_SAL_SHIPPING_1] ON [dbo].[T_SAL_SHIPPING]
(
	[SCM_CUSTOMER_CD] ASC,
	[ORDER_PART_NO_CD] ASC,
	[SEG_CD] ASC,
	[CURRENCY] ASC,
	[RECORD_DATE] ASC,
	[ORDER_DATE] ASC,
	[CARRY_DATE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, DATA_COMPRESSION = PAGE) ON [PS_PartitionByMonth_DM]([RECORD_DATE])
GO
