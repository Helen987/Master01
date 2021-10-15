USE [BI_DW]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_SFM_BCCV_DEMAND_VIEW](
	[OPPORTUNITY_SEQ] [nvarchar](13) NULL,
	[OPPORTUNITY_NO] [nvarchar](7) NULL,
	[PRODUCT_SEQ] [nvarchar](2) NULL,
	[PARTIAL_AWARD_SEQ] [nvarchar](2) NULL,
	[YEAR] [numeric](4, 0) NULL,
	[MONTH] [numeric](2, 0) NULL,
	[QUANTITY_1PIECE] [numeric](18, 0) NULL,
	[PRICE] [numeric](18, 4) NULL,
	[AMOUNT] [numeric](18, 0) NULL,
	[S2_QUANTITY] [numeric](18, 0) NULL,
	[S1_QUANTITY] [numeric](18, 0) NULL,
	[S0_QUANTITY] [numeric](18, 0) NULL,
	[S2_AMOUNT] [numeric](18, 0) NULL,
	[S1_AMOUNT] [numeric](18, 0) NULL,
	[S0_AMOUNT] [numeric](18, 0) NULL,
	[NOMINATION_REMAINING_QUANTITY] [numeric](18, 0) NULL,
	[NOMINATION_REMAINING_AMOUNT] [numeric](18, 0) NULL,
	[PARENT_TYPE] [nvarchar](2) NULL,
	[DELETE_FLAG] [nvarchar](1) NULL,
	[CREATED_BY_FEDERATION_ID] [nvarchar](4000) NULL,
	[CREATED_BY_EMAIL] [nvarchar](128) NULL,
	[CREATED_DATE] [date] NULL,
	[LAST_MODIFIED_BY_FEDERATION_ID] [nvarchar](4000) NULL,
	[LAST_MODIFIED_BY_EMAIL] [nvarchar](128) NULL,
	[LAST_MODIFIED_DATE] [date] NULL,
	[IF_LAST_MODIFIED_DATE] [date] NULL,
	[UPDATE_DATE] [date] NULL,
	[GP_AMOUNT] [numeric](18, 0) NULL,
	[GP_AMOUNT_GO] [numeric](18, 0) NULL,
	[GO_PRICE] [numeric](18, 4) NULL,
	[GO_AMOUNT] [numeric](18, 4) NULL
) ON [PS_PartitionByMonth_DW]([UPDATE_DATE])
WITH
(
DATA_COMPRESSION = PAGE
)

GO
SET ANSI_PADDING ON

GO
CREATE CLUSTERED INDEX [I_T_SFM_BCCV_DEMAND_VIEW_1] ON [dbo].[T_SFM_BCCV_DEMAND_VIEW]
(
	[OPPORTUNITY_SEQ] ASC,
	[UPDATE_DATE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, DATA_COMPRESSION = PAGE) ON [PS_PartitionByMonth_DW]([UPDATE_DATE])
GO
SET ANSI_PADDING ON

GO
CREATE NONCLUSTERED INDEX [I_T_SFM_BCCV_DEMAND_VIEW_2] ON [dbo].[T_SFM_BCCV_DEMAND_VIEW]
(
	[OPPORTUNITY_NO] ASC,
	[UPDATE_DATE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, DATA_COMPRESSION = PAGE) ON [PS_PartitionByMonth_DW]([UPDATE_DATE])
GO
