USE [BI_DW]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[R_G3_GO_MAveCst_BL](
	[CMTH] [nvarchar](6) NULL,
	[INVC_NO] [nvarchar](12) NULL,
	[INVC_LINE] [nvarchar](3) NULL,
	[CUST_ORDR] [nvarchar](10) NULL,
	[CUST_ORDR_LINE] [nvarchar](3) NULL,
	[CURC] [nvarchar](3) NULL,
	[COST_CURC] [nvarchar](3) NULL,
	[QTY] [numeric](9, 0) NULL,
	[COST_CURC_RATE] [numeric](10, 6) NULL,
	[COST_CURC_AMT] [numeric](13, 2) NULL,
	[COST_PRCE] [numeric](15, 4) NULL,
	[COST_AMT] [numeric](13, 2) NULL
) ON [BI_DW_Staging]

GO
