USE [BI_DM]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_SAL_BILL_DIN](
	[SCM_CUSTOMER_CD] [nvarchar](10) NULL,
	[B_WIN_SCM_CUSTOMER_CD] [nvarchar](10) NULL,
	[ORDER_PART_NO_CD] [nvarchar](18) NULL,
	[SEG_CD] [nvarchar](28) NULL,
	[CURRENCY] [nvarchar](5) NULL,
	[CURRENCY_EXCH] [nvarchar](14) NULL,
	[RECORD_DATE] [date] NULL,
	[ORDER_DATE] [date] NULL,
	[RDLV_DATE] [date] NULL,
	[SHIPTO_DATE] [date] NULL,
	[ACTUAL_UNMANAGED_FLG] [nvarchar](1) NULL,
	[TO_AMT_JPY] [money] NULL,
	[TO_AMT] [money] NULL,
	[TO_AMT_STD] [money] NULL,
	[TO_AMT_TP1] [money] NULL,
	[TO_AMT_TP2] [money] NULL,
	[TO_AMT_STD_USER] [money] NULL,
	[TO_AMT_SRP] [money] NULL,
	[GO_AMT_JPY] [money] NULL,
	[GO_AMT] [money] NULL,
	[GO_AMT_STD] [money] NULL,
	[GO_AMT_TP1] [money] NULL,
	[GO_AMT_TP2] [money] NULL,
	[GO_AMT_STD_USER] [money] NULL,
	[GO_AMT_SRP] [money] NULL,
	[SO_AMT_JPY] [money] NULL,
	[SO_AMT] [money] NULL,
	[SO_AMT_STD] [money] NULL,
	[SO_AMT_TP1] [money] NULL,
	[SO_AMT_TP2] [money] NULL,
	[SO_AMT_STD_USER] [money] NULL,
	[SO_AMT_SRP] [money] NULL,
	[OSC_MoveAve_Cst] [money] NULL,
	[OSC_MoveAve_GP_Amt] [money] NULL,
	[GO_QTY] [decimal](18, 4) NULL,
	[GO_Bill_Amt_NB_Bwin] [money] NULL,
	[GO_Bill_Amt_NB_Din] [money] NULL,
	[InsertDatetime] [datetime] NULL,
	[UpdateDatetime] [datetime] NULL,
	[TO_QTY] [decimal](18, 4) NULL,
	[SO_QTY] [decimal](18, 4) NULL,
	[TO_ANP_AMT] [money] NULL,
	[GO_ANP_AMT] [money] NULL
) ON [PS_PartitionByMonth_DM]([RECORD_DATE])
WITH
(
DATA_COMPRESSION = PAGE
)
GO
SET ANSI_PADDING ON
GO
CREATE CLUSTERED INDEX [I_T_SAL_BILL_DIN_1] ON [dbo].[T_SAL_BILL_DIN]
(
	[SCM_CUSTOMER_CD] ASC,
	[B_WIN_SCM_CUSTOMER_CD] ASC,
	[ORDER_PART_NO_CD] ASC,
	[SEG_CD] ASC,
	[CURRENCY] ASC,
	[CURRENCY_EXCH] ASC,
	[RECORD_DATE] ASC,
	[ORDER_DATE] ASC,
	[RDLV_DATE] ASC,
	[SHIPTO_DATE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, DATA_COMPRESSION = PAGE) ON [PS_PartitionByMonth_DM]([RECORD_DATE])
GO
