USE [BI_DW]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[T_KPI_UNPVT](
	[SUMMARY_CODE] [varchar](10) NOT NULL,
	[SUMMARY_KEY_ORG] [varchar](100) NOT NULL,
	[SUMMARY_KEY_YM] [char](7) NOT NULL,
	[KPI_NAME] [nvarchar](100) NULL,
	[INPUT_YM] [date] NOT NULL,
	[KEY_RESERVE_01] [nvarchar](300) NULL,
	[KEY_RESERVE_02] [nvarchar](300) NULL,
	[KEY_RESERVE_03] [nvarchar](300) NULL,
	[FISCAL_YEAR] [int] NOT NULL,
	[FISCAL_HALF] [int] NOT NULL,
	[FISCAL_MONTH] [int] NOT NULL,
	[TARGET] [numeric](22, 6) NULL,
	[ACTUAL] [numeric](22, 6) NULL,
	[FORECAST] [numeric](22, 6) NULL,
	[INS_DATETIME] [datetime] NULL,
	[UPD_DATETIME] [datetime] NULL
) ON [PS_PartitionByMonth_DW]([INPUT_YM])

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[T_KPI_UNPVT] ADD  CONSTRAINT [DF_T_KPI_UNPVT_INS_DATETIME]  DEFAULT (getdate()) FOR [INS_DATETIME]
GO
ALTER TABLE [dbo].[T_KPI_UNPVT] ADD  CONSTRAINT [DF_T_KPI_UNPVT_UPD_DATETIME]  DEFAULT (getdate()) FOR [UPD_DATETIME]
GO
