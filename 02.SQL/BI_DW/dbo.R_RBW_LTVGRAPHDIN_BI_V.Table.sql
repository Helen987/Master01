USE [BI_DW]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[R_RBW_LTVGRAPHDIN_BI_V](
	[OPPSEQ] [nvarchar](13) NULL,
	[KCOMPANYG2CD] [nvarchar](300) NULL,
	[KSALESAGENTCD] [nvarchar](12) NULL,
	[KCUSTOMERCD] [nvarchar](12) NULL,
	[BASEPN] [nvarchar](30) NULL,
	[CUSTOMERCD] [nvarchar](10) NULL,
	[PARTNO] [nvarchar](40) NULL,
	[APPLCAT3CD] [nvarchar](3) NULL,
	[S1DATE] [date] NULL,
	[LATESTLTVCURRENCYCD] [nvarchar](3) NULL,
	[NBDIV] [nvarchar](1) NULL,
	[MONTH12] [date] NULL,
	[NENKI] [nvarchar](6) NULL,
	[LTVAMT] [numeric](18, 4) NULL,
	[BILLAMT] [numeric](18, 4) NULL,
	[ALLOCBILLAMT] [numeric](18, 4) NULL,
	[SFAMT] [numeric](18, 4) NULL,
	[ALLOCSFAMT] [numeric](18, 4) NULL,
	[BILLAMTBEYONDLTV] [numeric](18, 4) NULL,
	[SFAMTBEYONDLTV] [numeric](18, 4) NULL,
	[DATADATE] [date] NULL
) ON [BI_DW_Staging]

GO
