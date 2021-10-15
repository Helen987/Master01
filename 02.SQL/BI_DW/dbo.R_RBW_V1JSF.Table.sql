USE [BI_DW]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[R_RBW_V1JSF](
	[CUSTOMERCD] [nvarchar](12) NULL,
	[PARTNO] [nvarchar](40) NULL,
	[APPLCAT3CD] [nvarchar](3) NULL,
	[SALESAGENTCD] [nvarchar](12) NULL,
	[DATAMONTH] [date] NULL,
	[DATADATE] [date] NULL,
	[RESULTDIV] [nvarchar](1) NULL,
	[CURRENCYCD] [nvarchar](3) NULL,
	[V0V1DIV] [nvarchar](2) NULL,
	[SHAREUPFLG] [decimal](1, 0) NULL,
	[AUTOJSFMONTHFLG] [decimal](1, 0) NULL,
	[GODEMANDQTY] [decimal](20, 4) NULL,
	[GODEMANDAMT] [money] NULL,
	[JSFDEMANDQTY] [decimal](20, 4) NULL,
	[JSFDEMANDAMT] [money] NULL
) ON [BI_DW_Staging]

GO
