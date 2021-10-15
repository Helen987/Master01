USE [BI_DM]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[F_SAL_BILL_GO_GENKA](
	[SCM_CUSTOMER_CD] [nvarchar](50) NULL,
	[ORDER_PART_NO_CD] [nvarchar](50) NULL,
	[SEG_CD] [nvarchar](50) NULL,
	[MONTH] [date] NULL,
	[Y_RATE] [decimal](9, 2) NULL,
	[GO_QTY] [decimal](18, 0) NULL,
	[GO_AMT] [money] NULL,
	[GO_AMT_USD] [money] NULL,
	[GO_AMT_EUR] [money] NULL,
	[GO_AMT_JPY] [money] NULL,
	[GO_STDCST_AMT] [money] NULL,
	[GO_STDCST_AMT_NEW] [money] NULL,
	[GO_STDCST_AMT_USD] [money] NULL,
	[GO_STDCST_AMT_JPY] [money] NULL,
	[GO_STDCST_AMT_JPY_NEW] [money] NULL,
	[GO_GP_AMT] [money] NULL,
	[GO_GP_AMT_NEW] [money] NULL,
	[GP_GRP_CD] [nvarchar](2) NULL,
	[GP_GRP_CD_NEW] [nvarchar](2) NULL,
	[PATTERN_CD] [nvarchar](2) NULL,
	[REG_DATETIME] [smalldatetime] NULL,
	[UPD_DATETIME] [smalldatetime] NULL,
	[GO_ANP_AMT] [money] NULL
) ON [PS_PartitionByMonth_DM]([MONTH])
WITH
(
DATA_COMPRESSION = PAGE
)
GO
