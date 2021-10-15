USE [BI_DW]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_SAL_SCMP_TRANSIT](
	[DATA_KIND_CD] [nvarchar](3) NULL,
	[BILL_NO] [nvarchar](35) NULL,
	[BILL_ITEM_NO] [decimal](6, 0) NULL,
	[BILLDOC_TYPE_CD] [nvarchar](4) NULL,
	[SODOC_TYPE_CD] [nvarchar](4) NULL,
	[BILLDOC_DATE] [nvarchar](8) NULL,
	[BILLDOC_QTY] [decimal](15, 0) NULL,
	[BILLDOC_UNIT_PRC] [decimal](20, 5) NULL,
	[BILLDOC_AMT] [decimal](20, 5) NULL,
	[BILLDOC_CRNCY_CD] [nvarchar](5) NULL,
	[BUSINESS_SITE_CD] [nvarchar](12) NULL,
	[SAP_COMPANY_CD] [nvarchar](4) NULL,
	[SCM_SOLD_TO_CD] [nvarchar](10) NULL,
	[SCM_FLG] [nvarchar](2) NULL,
	[TO_NO] [nvarchar](10) NULL,
	[TO_ITEM_NO] [decimal](6, 0) NULL,
	[PARTNO_18] [nvarchar](18) NULL,
	[TRANSPORT_QTY] [decimal](15, 0) NULL,
	[RT_COMPANY_CD] [nvarchar](12) NULL,
	[ORDER_NO] [nvarchar](6) NULL,
	[SF_PARTNO] [nvarchar](20) NULL,
	[ORIGINAL_PARTNO] [nvarchar](20) NULL,
	[OFFICE_CD] [nvarchar](3) NULL,
	[AGENT_CD] [nvarchar](3) NULL,
	[OSC_RELATION_KEY] [nvarchar](35) NULL,
	[ROUTE_DIV_CD] [nvarchar](2) NULL,
	[IN_KIND] [nvarchar](2) NULL,
	[IDOC_CREATE_DATE] [nvarchar](8) NULL,
	[IDOC_CREATE_TIME] [nvarchar](6) NULL,
	[UPDATE_USER_CD] [nvarchar](13) NULL,
	[UPDATE_DATE] [nvarchar](8) NULL,
	[UPDATE_TIME] [nvarchar](6) NULL,
	[STCK_CONFRM_DATE] [nvarchar](8) NULL,
	[PARTNO_CSTMR_CMB] [nvarchar](28) NULL,
	[UNIT_QUANTITY] [nvarchar](3) NULL,
	[DELETE_FLG] [nvarchar](1) NULL,
	[CDH_PROC_DATE] [nvarchar](8) NULL,
	[CDH_PROC_TIME] [nvarchar](6) NULL,
	[SLS_ORDER_SPEC_1] [nvarchar](3) NULL,
	[SLS_ORDER_SPEC_2] [nvarchar](3) NULL,
	[SLS_ORDER_SPEC_3] [nvarchar](3) NULL,
	[WAREHOUSING_SPEC] [nvarchar](3) NULL,
	[PART_NO_KEY_A4_B] [nvarchar](40) NULL,
	[DM_FLG] [nvarchar](1) NULL
) ON [BI_DW_Staging]
WITH
(
DATA_COMPRESSION = PAGE
)

GO
SET ANSI_PADDING ON

GO
CREATE CLUSTERED INDEX [I_T_SAL_SCMP_TRANSIT_1] ON [dbo].[T_SAL_SCMP_TRANSIT]
(
	[SCM_SOLD_TO_CD] ASC,
	[PARTNO_18] ASC,
	[BILLDOC_CRNCY_CD] ASC,
	[STCK_CONFRM_DATE] ASC,
	[BUSINESS_SITE_CD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, DATA_COMPRESSION = PAGE) ON [BI_DW_Staging]
GO
