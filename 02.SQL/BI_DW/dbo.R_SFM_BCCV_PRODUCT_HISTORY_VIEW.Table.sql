USE [BI_DW]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[R_SFM_BCCV_PRODUCT_HISTORY_VIEW](
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
) ON [BI_DW_Staging]

GO

