USE [BI_DM]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_SAL_BILL_DIN_TEMP](
	[SCM_CUSTOMER_CD] [nvarchar](10) NULL,
	[B_WIN_SCM_CUSTOMER_CD] [nvarchar](10) NULL,
	[ORDER_PART_NO_CD] [nvarchar](18) NULL,
	[SEG_CD] [nvarchar](28) NULL,
	[CURRENCY] [nvarchar](5) NULL,
	[RECORD_DATE] [date] NULL,
	[ORDER_DATE] [date] NULL,
	[RDLV_DATE] [date] NULL,
	[SHIPTO_DATE] [date] NULL,
	[TO_AMT_JPY] [money] NULL,
	[TO_AMT_NET] [money] NULL,
	[TO_AMT_STD] [money] NULL,
	[TO_AMT_TP1] [money] NULL,
	[TO_AMT_TP2] [money] NULL,
	[TO_AMT_STD_USER] [money] NULL,
	[TO_AMT_SRP] [money] NULL,
	[GO_AMT_JPY] [money] NULL,
	[GO_AMT_NET] [money] NULL,
	[GO_AMT_STD] [money] NULL,
	[GO_AMT_TP1] [money] NULL,
	[GO_AMT_TP2] [money] NULL,
	[GO_AMT_STD_USER] [money] NULL,
	[GO_AMT_SRP] [money] NULL,
	[SO_AMT_JPY] [money] NULL,
	[SO_AMT_NET] [money] NULL,
	[SO_AMT_STD] [money] NULL,
	[SO_AMT_TP1] [money] NULL,
	[SO_AMT_TP2] [money] NULL,
	[SO_AMT_STD_USER] [money] NULL,
	[SO_AMT_SRP] [money] NULL,
	[OSC_MoveAve_Cst] [money] NULL,
	[OSC_MoveAve_GP_Amt] [money] NULL,
	[GO_QTY] [decimal](18, 4) NULL,
	[TO_QTY] [decimal](18, 4) NULL,
	[SO_QTY] [decimal](18, 4) NULL,
	[TO_ANP_AMT_NET] [money] NULL,
	[GO_ANP_AMT_NET] [money] NULL
) ON [BI_DM_Fact_NonPartition]
WITH
(
DATA_COMPRESSION = PAGE
)
GO
