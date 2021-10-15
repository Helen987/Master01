USE [BI_DW]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[R_CDH_V1T2630T](
	[IDOC_DATE] [nvarchar](8) NULL,
	[BILLDOC_NO] [nvarchar](10) NULL,
	[BILLDOC_ITEM_NO] [decimal](6, 0) NULL,
	[RCPT_RENESAS_GCD] [nvarchar](2) NULL,
	[RCPT_AGENT_CD] [nvarchar](2) NULL,
	[CUSTOMER_CD] [nvarchar](10) NULL,
	[PART_NO] [nvarchar](18) NULL,
	[CO_NO] [nvarchar](6) NULL,
	[PARTIAL_NO] [decimal](3, 0) NULL,
	[PM_CD] [nvarchar](1) NULL,
	[QUANTITY] [decimal](11, 0) NULL,
	[CURRENCY_CD] [nvarchar](3) NULL,
	[PRICE] [decimal](13, 4) NULL,
	[AMOUNT] [decimal](17, 4) NULL,
	[SHIPEDDATE] [nvarchar](8) NULL,
	[DATA_INPUT_DATE] [nvarchar](8) NULL,
	[CREATION_DATE] [nvarchar](8) NULL,
	[LAST_UPDATE_USER] [nvarchar](30) NULL,
	[LAST_UPDATE_DATE] [nvarchar](8) NULL,
	[PARTNO_CSTMR_CMB] [nvarchar](28) NULL,
	[UNIT_QUANTITY] [nvarchar](2) NULL,
	[DELETE_FLG] [nvarchar](1) NULL,
	[CDH_PROC_DATE] [nvarchar](8) NULL,
	[CDH_PROC_TIME] [nvarchar](6) NULL,
	[SALES_ORDER_SPEC_1] [nvarchar](3) NULL,
	[SALES_ORDER_SPEC_2] [nvarchar](3) NULL,
	[SALES_ORDER_SPEC_3] [nvarchar](3) NULL,
	[WAREHOUSING_SPEC] [nvarchar](3) NULL,
	[PART_NO_KEY_A4_B] [nvarchar](40) NULL
) ON [BI_DW_Staging]
WITH
(
DATA_COMPRESSION = PAGE
)

GO
SET ANSI_PADDING ON

GO
CREATE CLUSTERED INDEX [I_R_CDH_V1T2630T_1] ON [dbo].[R_CDH_V1T2630T]
(
	[CUSTOMER_CD] ASC,
	[PART_NO] ASC,
	[CURRENCY_CD] ASC,
	[DATA_INPUT_DATE] ASC,
	[RCPT_AGENT_CD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, DATA_COMPRESSION = PAGE) ON [BI_DW_Staging]
GO
