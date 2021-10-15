USE [BI_DW]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[R_CDH_M_L_C_STANDARD_PRICE](
	[SO_PART_NO_A1] [nvarchar](18) NULL,
	[ZZWAERS] [nvarchar](5) NULL,
	[STANDARD_PRICE] [numeric](17, 3) NULL,
	[STANDARD_PRICE_UNIT] [numeric](17, 3) NULL,
	[SP_UNIT] [numeric](17, 3) NULL
) ON [BI_DW_Staging]

GO
