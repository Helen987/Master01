USE [BI_DW]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[R_DCP_KPI](
	[WBS] [nvarchar](30) NOT NULL,
	[DELIBERATION_CD] [nvarchar](6) NOT NULL,
	[CALENDAR_YM] [date] NOT NULL,
	[REVISION_ID] [int] NOT NULL,
	[HORIZON_ID] [int] NOT NULL,
	[VOLUME] [numeric](22, 10) NULL,
	[REVENUE] [money] NULL,
	[PRICE] [numeric](22, 10) NULL,
	[DEV_EXPENSE] [money] NULL,
	[PROFIT] [money] NULL,
	[PTI] [numeric](18, 2) NULL,
	[ROI] [numeric](18, 2) NULL,
	[GP_AMT] [money] NULL,
	[SC_AMT] [money] NULL,
	[WAFER] [numeric](18, 2) NULL,
	[TTP] [numeric](18, 2) NULL,
	[GP_AMT_HURDLE] [money] NULL,
	[PROFIT_AMT_HURDLE] [money] NULL,
	[ROI_HURDLE] [numeric](18, 2) NULL,
	[DEV_EXPENSE_HURDLE] [money] NULL,
	[PRELIMINARY1] [nvarchar](100) NULL,
	[PRELIMINARY2] [numeric](18, 2) NULL,
	[PRELIMINARY3] [numeric](18, 2) NULL,
	[PRELIMINARY4] [numeric](18, 2) NULL,
	[PRELIMINARY5] [numeric](18, 2) NULL,
	[PRELIMINARY6] [numeric](18, 2) NULL,
	[PRELIMINARY7] [numeric](18, 2) NULL,
	[PRELIMINARY8] [numeric](18, 2) NULL,
	[PRELIMINARY9] [numeric](18, 2) NULL,
	[PRELIMINARY10] [numeric](18, 2) NULL,
	[DCP_UPDATETIME] [smalldatetime] NULL
) ON [BI_DW_Staging]

GO
