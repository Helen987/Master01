USE [BI_DM]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_PRO_EOLDETAILS](
	[SCM_CUSTOMER_CD] [nvarchar](10) NOT NULL,
	[ORDER_PART_NO_CD] [nvarchar](18) NOT NULL,
	[SEG_CD] [nvarchar](28) NULL,
	[RECORD_DATE] [date] NULL,
	[EOLQTY] [decimal](18, 4) NULL,
	[InsertDatetime] [datetime] NULL,
	[UpdateDatetime] [datetime] NULL
) ON [PS_PartitionByMonth_DM]([RECORD_DATE])
WITH
(
DATA_COMPRESSION = PAGE
)

GO
