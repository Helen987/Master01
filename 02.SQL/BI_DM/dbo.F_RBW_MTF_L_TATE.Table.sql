USE [BI_DM]
GO
/****** Object:  Table [dbo].[F_RBW_MTF_L_TATE]    Script Date: 2017/02/24 11:46:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[F_RBW_MTF_L_TATE](
	[OPPSEQ] [nvarchar](13) NULL,
	[SCM_CUSTOMER_CD] [nvarchar](10) NOT NULL,
	[CUSTOMERNAME] [nvarchar](20) NOT NULL,
	[PARTNO] [nvarchar](40) NOT NULL,
	[BUSINESS_SITE] [nvarchar](300) NULL,
	[CALENDAR_YM] [date] NULL,
	[HANKI] [date] NULL,
	[UPDATE_DATE] [date] NULL,
	[NBDIV] [nvarchar](2) NULL,
	[FTCUSTOMERCD] [nvarchar](10) NULL,
	[DINPLANDATE] [date] NULL,
	[STAGEDIV] [nvarchar](5) NULL,
	[OFFSHOREFLG] [nvarchar](1) NULL,
	[STAGEDETAIL] [nvarchar](255) NULL,
	[OPPNAME] [nvarchar](120) NULL,
	[DAUGHTERPROJECTNAME] [nvarchar](60) NULL,
	[DUPLILTVDIV] [numeric](18, 0) NOT NULL,
	[MTFRATE] [numeric](3, 0) NULL,
	[MTFDATADIV] [numeric](18, 0) NOT NULL,
	[CURRENCY] [nvarchar](5) NULL,
	[QTY] [numeric](18, 4) NULL,
	[AMT] [numeric](18, 4) NULL,
	[COMPANYG2CD] [nvarchar](300) NULL,
	[COMPANYG2NAME] [nvarchar](300) NULL,
	[COMPANYG2SORTKEY] [nvarchar](300) NULL,
	[COMPANYG1CD] [nvarchar](300) NULL,
	[COMPANYG1NAME] [nvarchar](300) NULL,
	[COMPANYG1SORTKEY] [nvarchar](300) NULL,
	[COUNTRYCD] [nvarchar](300) NULL,
	[COUNTRYNAME] [nvarchar](300) NULL,
	[COUNTRYSORTKEY] [nvarchar](300) NULL,
	[AREACD] [nvarchar](300) NULL,
	[AREANAME] [nvarchar](300) NULL,
	[OVERSEASFLG] [numeric](1, 0) NULL,
	[PRODFAMILYCD] [nvarchar](300) NULL,
	[PRODFAMILYNAME] [nvarchar](300) NULL,
	[PRODGROUPCD] [nvarchar](300) NULL,
	[PRODGROUPNAME] [nvarchar](300) NULL,
	[AUTOGPDIV] [nvarchar](1) NULL,
	[PROBABILITY] [nvarchar](300) NULL,
	[LTVACCURACY] [numeric](18, 4) NULL,
	[APLCD1] [nvarchar](300) NULL,
	[APLCD2] [nvarchar](300) NULL,
	[APLCD3] [nvarchar](300) NULL
) ON [BI_DM_Fact_NonPartition]
WITH
(
DATA_COMPRESSION = PAGE
)

GO
