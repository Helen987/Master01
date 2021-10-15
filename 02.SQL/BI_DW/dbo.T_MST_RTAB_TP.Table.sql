USE [BI_DW]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_MST_RTAB_TP](
	[CALENDAR_YM] [nvarchar](6) NULL,
	[ORDER_PART_NO_CD] [nvarchar](18) NULL,
	[SCM_CUSTOMER_CD] [nvarchar](10) NULL,
	[STANDARD_PRICE] [money] NULL,
	[TP1_COST] [money] NULL,
	[TP2_COST] [money] NULL,
	[SRP_COST] [money] NULL,
	[TP1_RATE] [money] NULL,
	[TP2_RATE] [money] NULL
) ON [BI_DW_Staging]
WITH
(
DATA_COMPRESSION = PAGE
)

GO
SET ANSI_PADDING ON

GO
CREATE CLUSTERED INDEX [I_T_MST_RTAB_TP_1] ON [dbo].[T_MST_RTAB_TP]
(
	[CALENDAR_YM] ASC,
	[ORDER_PART_NO_CD] ASC,
	[SCM_CUSTOMER_CD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, DATA_COMPRESSION = PAGE) ON [BI_DW_Staging]
GO
