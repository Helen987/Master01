USE [BI_DW]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[R_CDH_M_L_C_CURRENCY_RATE](
	[TYPE] [nvarchar](4) NULL,
	[CURR_CD_FROM] [nvarchar](5) NULL,
	[CURR_CD_TO] [nvarchar](5) NULL,
	[VALID_FROM_YMD] [nvarchar](8) NULL,
	[RATE] [numeric](9, 5) NULL,
	[CURR_FACT_FROM] [numeric](9, 0) NULL,
	[CURR_FACT_TO] [numeric](9, 0) NULL
) ON [BI_DW_Staging]

GO
