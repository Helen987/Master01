USE [BI_DW]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[R_NS_GO_MAveCst_BL](
	[BILLDOC_NO] [nvarchar](10) NOT NULL,
	[BILLDOC_ITEM_NO] [nvarchar](6) NOT NULL,
	[CUSTOMER_CD] [nvarchar](10) NULL,
	[ORDER_PART_NO_CD] [nvarchar](18) NULL,
	[SO_PART_NO_KEY_A4] [nvarchar](40) NULL,
	[COST_CURRENCY] [nvarchar](5) NULL,
	[BILL_QTY] [numeric](17, 3) NULL,
	[MOVE_AVE_COST_AMT] [numeric](18, 2) NULL,
	[CURRENCY] [nvarchar](5) NULL,
	[MOVE_AVE_COST_PRICE] [numeric](16, 2) NULL,
	[PRICE_UNIT] [numeric](5, 0) NULL,
	[RATE] [numeric](12, 5) NULL,
 CONSTRAINT [PK_R_NS_GO_MAveCst_BL] PRIMARY KEY CLUSTERED 
(
	[BILLDOC_NO] ASC,
	[BILLDOC_ITEM_NO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, DATA_COMPRESSION = PAGE) ON [BI_DW_Staging]
) ON [BI_DW_Staging]

GO
