USE [BI_DW]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[T_SFM_BCCV_PRODUCT_HISTORY_VIEW_H](
    [PRODUCT_HISTORY_NO] [NVARCHAR](13) NOT NULL,
    [OPPORTUNITY_SEQ] [NVARCHAR](13) NULL,
    [OPPORTUNITY_NO] [NVARCHAR](7) NULL,
    [PRODUCT_SEQ] [NVARCHAR](2) NULL,
    [PARTIAL_AWARD_SEQ] [NVARCHAR](2) NULL,
    [ACTUAL_TYPE] [NVARCHAR](2) NULL,
    [AMOUNT_DIFFERENCE] [NUMERIC](18,0) NULL,
    [AMOUNT] [NUMERIC](18,0) NULL,
    [D_IN_DATE] [DATE] NULL,
    [EVENT_TYPE] [NVARCHAR](2) NULL,
    [QUANTITY_DIFFERENCE] [NUMERIC](18,0) NULL,
    [QUANTITY] [NUMERIC](18,0) NULL,
    [STAGE_TYPE] [NVARCHAR](2) NULL,
    [CURRENCY_ISO_CODE] [NVARCHAR](3) NULL,
    [DELETE_FLAG] [NVARCHAR](1) NULL,
    [CREATED_DATE] [DATE] NULL,
    [LAST_MODIFIED_DATE] [DATE] NULL,
    [IF_LAST_MODIFIED_DATE] [DATE] NULL,
    [UPDATE_DATE] [DATE] NULL
) ON [PS_PartitionByMonth_DW]([UPDATE_DATE])
WITH
(
DATA_COMPRESSION = PAGE
)

GO
SET ANSI_PADDING ON

GO

CREATE CLUSTERED INDEX [I_T_SFM_BCCV_PRODUCT_HISTORY_VIEW_H_1] ON [dbo].[T_SFM_BCCV_PRODUCT_HISTORY_VIEW_H]
(
	[OPPORTUNITY_SEQ] ASC,
	[UPDATE_DATE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, DATA_COMPRESSION = PAGE) ON [PS_PartitionByMonth_DW]([UPDATE_DATE])
GO

