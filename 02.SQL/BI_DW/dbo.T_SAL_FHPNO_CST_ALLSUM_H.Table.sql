USE [BI_DW]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_SAL_FHPNO_CST_ALLSUM_H](
	[SCM_CUSTOMER_CD] [nvarchar](10) NULL,
	[ORDER_PART_NO_CD] [nvarchar](18) NULL,
	[SEG_CD] [nvarchar](28) NULL,
	[BUSINESS_SITE] [nvarchar](2) NULL,
	[CALENDAR_YM] [date] NULL,
	[UPDATE_DATE] [date] NULL,
	[RESULTDIV] [nvarchar](1) NULL,
	[CURRENCY] [nvarchar](5) NULL,
	[ShippableAATP_Amt_JPY] [money] NULL,
	[ShippableAATP_Qty] [decimal](20, 4) NULL,
	[AdjustedSFOut_Amt_JPY] [money] NULL,
	[AdjustedSFOut_Qty] [decimal](20, 4) NULL,
	[AATPEXWork_Amt_JPY] [money] NULL,
	[AATPEXWork_Qty] [decimal](20, 4) NULL,
	[COUONettedOut_Amt_JPY] [money] NULL,
	[COUONettedOut_Qty] [decimal](20, 4) NULL,
	[NettedOut_Amt_JPY] [money] NULL,
	[NettedOut_Qty] [decimal](20, 4) NULL
) ON [PS_PartitionByMonth_DW]([UPDATE_DATE])
WITH
(
DATA_COMPRESSION = PAGE
)

GO
SET ANSI_PADDING ON

GO
CREATE CLUSTERED INDEX [I_T_SAL_FHPNO_CST_ALLSUM_H_1] ON [dbo].[T_SAL_FHPNO_CST_ALLSUM_H]
(
	[SCM_CUSTOMER_CD] ASC,
	[ORDER_PART_NO_CD] ASC,
	[CALENDAR_YM] ASC,
	[UPDATE_DATE] ASC,
	[RESULTDIV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, DATA_COMPRESSION = PAGE) ON [PS_PartitionByMonth_DW]([UPDATE_DATE])
GO
