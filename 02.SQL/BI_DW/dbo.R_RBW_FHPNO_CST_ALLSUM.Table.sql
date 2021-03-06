USE [BI_DW]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[R_RBW_FHPNO_CST_ALLSUM](
	[CUSTOMERCD] [nvarchar](12) NULL,
	[PARTNO] [nvarchar](40) NULL,
	[APPLCAT3CD] [nvarchar](3) NULL,
	[SALESAGENTCD] [nvarchar](12) NULL,
	[DATAMONTH] [date] NULL,
	[DATADATE] [date] NULL,
	[RESULTDIV] [nvarchar](1) NULL,
	[CURRENCYCD] [nvarchar](3) NULL,
	[SHIPPABLEAATPQTY] [decimal](20, 4) NULL,
	[SHIPPABLEAATPAMT] [money] NULL,
	[ADJUSTEDSFOUTQTY] [decimal](20, 4) NULL,
	[ADJUSTEDSFOUTAMT] [money] NULL,
	[AATPEXWORKQTY] [decimal](20, 4) NULL,
	[AATPEXWORKAMT] [money] NULL,
	[COUONETTEDOUTQTY] [decimal](20, 4) NULL,
	[COUONETTEDOUTAMT] [money] NULL,
	[NETTEDOUTQTY] [decimal](20, 4) NULL,
	[NETTEDOUTAMT] [money] NULL
) ON [BI_DW_Staging]

GO
