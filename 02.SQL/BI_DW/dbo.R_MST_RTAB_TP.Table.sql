USE [BI_DW]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[R_MST_RTAB_TP](
	[BOOKING_PN] [nvarchar](40) NULL,
	[SCM_CUSTOMER_CD] [nvarchar](10) NULL,
	[STANDARD_PRICE] [money] NULL,
	[TP1_COST] [money] NULL,
	[TP2_COST] [money] NULL,
	[SRP_COST] [money] NULL,
	[TP1_RATE] [money] NULL,
	[TP2_RATE] [money] NULL
) ON [BI_DW_Staging]

GO
