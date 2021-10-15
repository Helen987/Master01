USE [BI_DM]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[F_SFM_AGGREGATE_L_TEMP](
	[DISP_UPDATE_DATE] [varchar](6) NULL,
	[UPDATE_DATE] [date] NULL,
	[CRM_TARGETNOMINATIONDATE] [date] NULL,
	[CRM_TARGETAWARDDATE] [date] NULL,
	[CRM_APPROVALDATE] [datetime] NULL,
	[CRM_MPSTART] [date] NULL,
	[CALENDAR_YM] [date] NULL,
	[OPPORTUNITY_NO] [varchar](7) NULL,
	[CRM_UNIQUEOPPORTUNITY_SEQ] [varchar](13) NULL,
	[CRM_FULFILLSCMCUSTOMERCODE] [nvarchar](20) NULL,
	[SALES_ORDER_PN_FOR_MTF] [nvarchar](18) NULL,
	[CURRENCYISOCODE] [nchar](3) NULL,
	[CRM_RFYCURRENTCOST] [decimal](18, 0) NULL,
	[CRM_RFYCURRENTGOGP] [decimal](18, 0) NULL,
	[CRM_RFYCURRENTGP] [decimal](18, 0) NULL,
	[CRM_RFYDINCOST] [decimal](18, 0) NULL,
	[CRM_RFYDINGOGP] [decimal](18, 0) NULL,
	[CRM_RFYDINGP] [decimal](18, 0) NULL,
	[CRM_RFYAPPROVEDAMOUNT] [decimal](18, 0) NULL,
	[CRM_RFYAPPROVEDQUANTITY] [decimal](18, 0) NULL,
	[CRM_RFYC] [decimal](18, 0) NULL,
	[CRM_RFYCURRENTAMOUNT] [decimal](18, 0) NULL,
	[CRM_RFYCURRENTGOAMOUNT] [decimal](18, 0) NULL,
	[CRM_RFYCURRENTQUANTITY] [decimal](18, 0) NULL,
	[CRM_RFYDINGOAMOUNT] [decimal](18, 0) NULL,
	[CRM_APPROVELREQUESTDATE] [datetime] NULL,
	[CRM_AWARDAPPROVEDDATE] [datetime] NULL,
	[CREATEDDATE] [datetime] NULL,
	[CRM_STATUSUPDATEDATE] [datetime] NULL,
	[CRM_DINACTUALDATE] [date] NULL,
	[CRM_DINACTUALNEWDATE] [date] NULL,
	[CRM_DINAPPROVEDDATE] [datetime] NULL,
	[CRM_DINDATE] [date] NULL,
	[CRM_DINREQUESTDATE] [datetime] NULL,
	[CRM_DINTARGETDATE] [date] NULL,
	[CRM_DRAPPROVEDDATE] [datetime] NULL,
	[CRM_DREXPIRATIONDATE] [date] NULL,
	[CRM_EXCLUDEDISTI_COMMENTDATE] [datetime] NULL,
	[LASTMODIFIEDDATE] [datetime] NULL,
	[CRM_LASTSTAGEMODIFIEDDATE] [datetime] NULL,
	[CRM_LATEST_COMMENTDATE] [datetime] NULL,
	[CRM_MPEND] [date] NULL,
	[CRM_NOMINATIONAPPROVEDDATE] [datetime] NULL,
	[CRM_NOMINATIONREQUESTDATE] [datetime] NULL,
	[CRM_S0ACTUALDATE] [datetime] NULL,
	[CRM_S1ACTUALDATE] [datetime] NULL,
	[CRM_S2ACTUALDATE] [datetime] NULL,
	[CRM_S3ACTUALDATE] [datetime] NULL,
	[CRM_S4ACTUALDATE] [datetime] NULL,
	[CRM_USERLASTMODIFIEDDATE] [datetime] NULL
) ON [BI_DM_Fact_NonPartition]
WITH
(
DATA_COMPRESSION = PAGE
)

GO
