USE [BI_DM]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[F_RBW_MTF_L_EXCH_MLR_WORK](
	[OPPSEQ] [nvarchar](13) NULL,
	[SCM_CUSTOMER_CD] [nvarchar](10) NOT NULL,
	[CUSTOMERNAME] [nvarchar](20) NOT NULL,
	[PARTNO] [nvarchar](40) NOT NULL,
	[ORDER_PART_NO_CD] [nvarchar](18) NOT NULL,
	[SEG_CD] [nvarchar](28) NULL,
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
	[CURRENCY_EXCH] [nvarchar](5) NULL,
	[GORESULTQTYPRE2H1] [numeric](18, 4) NOT NULL,
	[GORESULTQTYPRE2H2] [numeric](18, 4) NOT NULL,
	[GORESULTQTYPRE1H1] [numeric](18, 4) NOT NULL,
	[GORESULTQTYPRE1H2] [numeric](18, 4) NOT NULL,
	[GORESULTQTYCURH1] [numeric](18, 4) NOT NULL,
	[GORESULTQTYCURH2] [numeric](18, 4) NOT NULL,
	[GORESULTAMTPRE2H1] [numeric](18, 4) NOT NULL,
	[GORESULTAMTPRE2H2] [numeric](18, 4) NOT NULL,
	[GORESULTAMTPRE1H1] [numeric](18, 4) NOT NULL,
	[GORESULTAMTPRE1H2] [numeric](18, 4) NOT NULL,
	[GORESULTAMTCURH1] [numeric](18, 4) NOT NULL,
	[GORESULTAMTCURH2] [numeric](18, 4) NOT NULL,
	[GORESULTAMTPRE2H1_EXCH] [numeric](18, 4) NOT NULL,
	[GORESULTAMTPRE2H2_EXCH] [numeric](18, 4) NOT NULL,
	[GORESULTAMTPRE1H1_EXCH] [numeric](18, 4) NOT NULL,
	[GORESULTAMTPRE1H2_EXCH] [numeric](18, 4) NOT NULL,
	[GORESULTAMTCURH1_EXCH] [numeric](18, 4) NOT NULL,
	[GORESULTAMTCURH2_EXCH] [numeric](18, 4) NOT NULL,
	[GORESULTAMTPRE2H1_EXCH_MLR] [numeric](18, 4) NOT NULL,
	[GORESULTAMTPRE2H2_EXCH_MLR] [numeric](18, 4) NOT NULL,
	[GORESULTAMTPRE1H1_EXCH_MLR] [numeric](18, 4) NOT NULL,
	[GORESULTAMTPRE1H2_EXCH_MLR] [numeric](18, 4) NOT NULL,
	[GORESULTAMTCURH1_EXCH_MLR] [numeric](18, 4) NOT NULL,
	[GORESULTAMTCURH2_EXCH_MLR] [numeric](18, 4) NOT NULL,
	[QTYCURH1] [numeric](18, 4) NULL,
	[QTYCURH2] [numeric](18, 4) NULL,
	[QTYNEX1H1] [numeric](18, 4) NULL,
	[QTYNEX1H2] [numeric](18, 4) NULL,
	[QTYNEX2H1] [numeric](18, 4) NULL,
	[QTYNEX2H2] [numeric](18, 4) NULL,
	[QTYNEX3H1] [numeric](18, 4) NULL,
	[QTYNEX3H2] [numeric](18, 4) NULL,
	[QTYNEX4H1] [numeric](18, 4) NULL,
	[QTYNEX4H2] [numeric](18, 4) NULL,
	[QTYNEX5H1] [numeric](18, 4) NULL,
	[QTYNEX5H2] [numeric](18, 4) NULL,
	[QTYNEX6H1] [numeric](18, 4) NULL,
	[QTYNEX6H2] [numeric](18, 4) NULL,
	[QTYNEX7LATER] [numeric](18, 4) NULL,
	[AMTCURH1] [numeric](18, 4) NULL,
	[AMTCURH2] [numeric](18, 4) NULL,
	[AMTNEX1H1] [numeric](18, 4) NULL,
	[AMTNEX1H2] [numeric](18, 4) NULL,
	[AMTNEX2H1] [numeric](18, 4) NULL,
	[AMTNEX2H2] [numeric](18, 4) NULL,
	[AMTNEX3H1] [numeric](18, 4) NULL,
	[AMTNEX3H2] [numeric](18, 4) NULL,
	[AMTNEX4H1] [numeric](18, 4) NULL,
	[AMTNEX4H2] [numeric](18, 4) NULL,
	[AMTNEX5H1] [numeric](18, 4) NULL,
	[AMTNEX5H2] [numeric](18, 4) NULL,
	[AMTNEX6H1] [numeric](18, 4) NULL,
	[AMTNEX6H2] [numeric](18, 4) NULL,
	[AMTNEX7LATER] [numeric](18, 4) NULL,
	[AMTCURH1_EXCH] [numeric](18, 4) NULL,
	[AMTCURH2_EXCH] [numeric](18, 4) NULL,
	[AMTNEX1H1_EXCH] [numeric](18, 4) NULL,
	[AMTNEX1H2_EXCH] [numeric](18, 4) NULL,
	[AMTNEX2H1_EXCH] [numeric](18, 4) NULL,
	[AMTNEX2H2_EXCH] [numeric](18, 4) NULL,
	[AMTNEX3H1_EXCH] [numeric](18, 4) NULL,
	[AMTNEX3H2_EXCH] [numeric](18, 4) NULL,
	[AMTNEX4H1_EXCH] [numeric](18, 4) NULL,
	[AMTNEX4H2_EXCH] [numeric](18, 4) NULL,
	[AMTNEX5H1_EXCH] [numeric](18, 4) NULL,
	[AMTNEX5H2_EXCH] [numeric](18, 4) NULL,
	[AMTNEX6H1_EXCH] [numeric](18, 4) NULL,
	[AMTNEX6H2_EXCH] [numeric](18, 4) NULL,
	[AMTCURH1_EXCH_MLR] [numeric](18, 4) NULL,
	[AMTCURH2_EXCH_MLR] [numeric](18, 4) NULL,
	[AMTNEX1H1_EXCH_MLR] [numeric](18, 4) NULL,
	[AMTNEX1H2_EXCH_MLR] [numeric](18, 4) NULL,
	[AMTNEX2H1_EXCH_MLR] [numeric](18, 4) NULL,
	[AMTNEX2H2_EXCH_MLR] [numeric](18, 4) NULL,
	[AMTNEX3H1_EXCH_MLR] [numeric](18, 4) NULL,
	[AMTNEX3H2_EXCH_MLR] [numeric](18, 4) NULL,
	[AMTNEX4H1_EXCH_MLR] [numeric](18, 4) NULL,
	[AMTNEX4H2_EXCH_MLR] [numeric](18, 4) NULL,
	[AMTNEX5H1_EXCH_MLR] [numeric](18, 4) NULL,
	[AMTNEX5H2_EXCH_MLR] [numeric](18, 4) NULL,
	[AMTNEX6H1_EXCH_MLR] [numeric](18, 4) NULL,
	[AMTNEX6H2_EXCH_MLR] [numeric](18, 4) NULL,
	[STDQTYCURH1_EXCH] [numeric](18, 4) NULL,
	[STDQTYCURH2_EXCH] [numeric](18, 4) NULL,
	[STDQTYNEX1H1_EXCH] [numeric](18, 4) NULL,
	[STDQTYNEX1H2_EXCH] [numeric](18, 4) NULL,
	[STDQTYNEX2H1_EXCH] [numeric](18, 4) NULL,
	[STDQTYNEX2H2_EXCH] [numeric](18, 4) NULL,
	[STDQTYNEX3H1_EXCH] [numeric](18, 4) NULL,
	[STDQTYNEX3H2_EXCH] [numeric](18, 4) NULL,
	[STDQTYNEX4H1_EXCH] [numeric](18, 4) NULL,
	[STDQTYNEX4H2_EXCH] [numeric](18, 4) NULL,
	[STDQTYNEX5H1_EXCH] [numeric](18, 4) NULL,
	[STDQTYNEX5H2_EXCH] [numeric](18, 4) NULL,
	[STDQTYNEX6H1_EXCH] [numeric](18, 4) NULL,
	[STDQTYNEX6H2_EXCH] [numeric](18, 4) NULL,
	[STDQTYCURH1_EXCH_MLR] [numeric](18, 4) NULL,
	[STDQTYCURH2_EXCH_MLR] [numeric](18, 4) NULL,
	[STDQTYNEX1H1_EXCH_MLR] [numeric](18, 4) NULL,
	[STDQTYNEX1H2_EXCH_MLR] [numeric](18, 4) NULL,
	[STDQTYNEX2H1_EXCH_MLR] [numeric](18, 4) NULL,
	[STDQTYNEX2H2_EXCH_MLR] [numeric](18, 4) NULL,
	[STDQTYNEX3H1_EXCH_MLR] [numeric](18, 4) NULL,
	[STDQTYNEX3H2_EXCH_MLR] [numeric](18, 4) NULL,
	[STDQTYNEX4H1_EXCH_MLR] [numeric](18, 4) NULL,
	[STDQTYNEX4H2_EXCH_MLR] [numeric](18, 4) NULL,
	[STDQTYNEX5H1_EXCH_MLR] [numeric](18, 4) NULL,
	[STDQTYNEX5H2_EXCH_MLR] [numeric](18, 4) NULL,
	[STDQTYNEX6H1_EXCH_MLR] [numeric](18, 4) NULL,
	[STDQTYNEX6H2_EXCH_MLR] [numeric](18, 4) NULL,
	[GOHANKIPRE2H1] [date] NULL,
	[GOHANKIPRE2H2] [date] NULL,
	[GOHANKIPRE1H1] [date] NULL,
	[GOHANKIPRE1H2] [date] NULL,
	[GOHANKICURH1] [date] NULL,
	[GOHANKICURH2] [date] NULL,
	[HANKICURH1] [date] NULL,
	[HANKICURH2] [date] NULL,
	[HANKINEX1H1] [date] NULL,
	[HANKINEX1H2] [date] NULL,
	[HANKINEX2H1] [date] NULL,
	[HANKINEX2H2] [date] NULL,
	[HANKINEX3H1] [date] NULL,
	[HANKINEX3H2] [date] NULL,
	[HANKINEX4H1] [date] NULL,
	[HANKINEX4H2] [date] NULL,
	[HANKINEX5H1] [date] NULL,
	[HANKINEX5H2] [date] NULL,
	[HANKINEX6H1] [date] NULL,
	[HANKINEX6H2] [date] NULL,
	[DATADATE] [date] NULL,
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
	[AREASORTKEY] [nvarchar](300) NULL,
	[OVERSEASFLG] [numeric](1, 0) NULL,
	[PRODFAMILYCD] [nvarchar](300) NULL,
	[PRODFAMILYNAME] [nvarchar](300) NULL,
	[PRODGROUPCD] [nvarchar](300) NULL,
	[PRODGROUPNAME] [nvarchar](300) NULL,
	[AUTOGPDIV] [nvarchar](1) NULL,
	[UPDATE_DATE] [date] NULL,
	[PROBABILITY] [nvarchar](300) NULL,
	[LTVACCURACY] [numeric](18, 4) NULL,
	[APLCD1] [nvarchar](300) NULL,
	[APLCD2] [nvarchar](300) NULL,
	[APLCD3] [nvarchar](300) NULL
) ON [PS_PartitionByMonth_DM]([DATADATE])
WITH
(
DATA_COMPRESSION = PAGE
)

GO
