USE [BI_DW]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_SFM_BCCV_AGGREGATE_VIEW](
	[CREATED_BY_DSNO] [varchar](10) NULL,
	[CREATED_BY_EMAIL] [varchar](128) NULL,
	[CREATEDDATE] [datetime] NOT NULL,
	[CURRENCYISOCODE] [nchar](3) NULL,
	[LASTMODIFIED_BY_DSNO] [varchar](10) NULL,
	[LASTMODIFIED_BY_EMAIL] [varchar](128) NULL,
	[LASTMODIFIEDDATE] [datetime] NOT NULL,
	[CRM_ACTUALAWARDDATE] [datetime] NULL,
	[CRM_ACTUALNOMINATIONDATE] [datetime] NULL,
	[CRM_APPROVALDATE] [datetime] NULL,
	[CRM_APPROVELREQUESTDATE] [datetime] NULL,
	[CRM_APPROVER_DSNO] [varchar](10) NULL,
	[CRM_APPROVER_EMAIL] [varchar](128) NULL,
	[CRM_AVERAGEPRICE] [decimal](18, 4) NULL,
	[CRM_AWARDCONFIDENCELEVEL] [varchar](4) NULL,
	[CRM_AWARDSALESCOMPANY] [nchar](2) NULL,
	[CRM_CANRENESASMEETTHESCHEDULE] [nchar](2) NULL,
	[CRM_CLOSEREASON] [nchar](2) NULL,
	[CRM_COMMENT] [nvarchar](255) NULL,
	[CRM_CURRENTLTQ] [decimal](18, 0) NULL,
	[CRM_CURRENTLTV] [decimal](18, 0) NULL,
	[CRM_DRSTATUS] [varchar](40) NULL,
	[CRM_DR_REQUESTOR_DSNO] [varchar](10) NULL,
	[CRM_DR_REQUESTOR_EMAIL] [varchar](128) NULL,
	[CRM_DATESINPAST] [nchar](1) NULL,
	[CRM_DAYSTOMP] [decimal](18, 0) NULL,
	[CRM_DELTAAMOUNTCURRENTANDDIN] [decimal](18, 0) NULL,
	[CRM_DINACTUALDATE] [date] NULL,
	[CRM_DINACTUALNEWDATE] [date] NULL,
	[CRM_DINCONFIDENCE] [varchar](8) NULL,
	[CRM_DINDATE] [date] NULL,
	[CRM_DINTARGETDATE] [date] NULL,
	[CRM_DOESRENESASFITREQUIREMENT] [nchar](2) NULL,
	[CRM_DRAPPROVEDDATE] [datetime] NULL,
	[CRM_DRAPPROVEDNOTE] [nvarchar](255) NULL,
	[CRM_DRAPPROVEDPARTNOSTATUS] [varchar](255) NULL,
	[CRM_DRAPPROVEDPARTNO] [varchar](255) NULL,
	[CRM_DRAPPROVER_DSNO] [varchar](10) NULL,
	[CRM_DRAPPROVER_EMAIL] [varchar](128) NULL,
	[CRM_DREXPIRATIONDATE] [date] NULL,
	[CRM_DRREQUESTEDAPPROVER_DSNO] [varchar](10) NULL,
	[CRM_DRREQUESTEDAPPROVER_EMAIL] [varchar](128) NULL,
	[CRM_DRREQUESTEDDATE] [datetime] NULL,
	[CRM_DRREQUESTEDPARTNOSTATUS] [varchar](255) NULL,
	[CRM_DRREQUESTEDPARTNO] [varchar](255) NULL,
	[CRM_FORECASTTYPE] [nchar](2) NULL,
	[CRM_FULFILLMENTREGION] [nchar](2) NULL,
	[CRM_FULFILLSCMCUSTOMERCODE] [varchar](20) NULL,
	[CRM_HASAPRICEBEENSUBMITTED] [nchar](2) NULL,
	[CRM_HASSAMPLEBEENDELIVERED] [nchar](2) NULL,
	[CRM_LATESTAWARDDATE] [date] NULL,
	[CRM_LATESTNOMINATIONDATE] [date] NULL,
	[CRM_MPEND] [date] NULL,
	[CRM_MPSTART] [date] NULL,
	[CRM_MPSTARTOFREMAINING] [date] NULL,
	[CRM_MOSTLATESTLTQ] [decimal](18, 0) NULL,
	[CRM_MOSTLATESTLTV] [decimal](18, 0) NULL,
	[CRM_NETBILLINGFLG] [nchar](1) NULL,
	[CRM_NICKNAMETEMPORARYPARTNO] [nvarchar](255) NULL,
	[CRM_NOMINATIONCONFIDENCELEVEL] [varchar](4) NULL,
	[CRM_OPPORTUNITYDISCERNMENT] [nchar](2) NULL,
	[CRM_ORIGINALLASTMODBY_DSNO] [varchar](10) NULL,
	[CRM_ORIGINALLASTMODBY_EMAIL] [varchar](128) NULL,
	[CRM_ORIGINALLASTMODIFIEDDATE] [datetime] NULL,
	[CRM_SALESORDERPARTNO] [varchar](40) NULL,
	[CRM_PPAP] [date] NULL,
	[CRM_PRODUCTFAMILY] [nchar](2) NULL,
	[CRM_PROGRESSCOLOR] [nchar](6) NULL,
	[CRM_PROGRESSFROM] [decimal](18, 0) NULL,
	[CRM_PROGRESSTO] [decimal](18, 0) NULL,
	[CRM_PROGRESS] [varchar](7) NULL,
	[CRM_PROJECTNAME] [nvarchar](60) NULL,
	[CRM_PROMOTIONSAMPLE] [nchar](2) NULL,
	[CRM_QTYUNIT] [decimal](18, 0) NULL,
	[CRM_RFY2015APPROVEDAMOUNT] [decimal](18, 0) NULL,
	[CRM_RFY2015APPROVEDQUANTITY] [decimal](18, 0) NULL,
	[CRM_RFY2015CURRENTAMOUNT] [decimal](18, 0) NULL,
	[CRM_RFY2015CURRENTQUANTITY] [decimal](18, 0) NULL,
	[CRM_RFY2016APPROVEDAMOUNT] [decimal](18, 0) NULL,
	[CRM_RFY2016APPROVEDQUANTITY] [decimal](18, 0) NULL,
	[CRM_RFY2016CURRENTAMOUNT] [decimal](18, 0) NULL,
	[CRM_RFY2016CURRENTQUANTITY] [decimal](18, 0) NULL,
	[CRM_RFY2017APPROVEDAMOUNT] [decimal](18, 0) NULL,
	[CRM_RFY2017APPROVEDQUANTITY] [decimal](18, 0) NULL,
	[CRM_RFY2017CURRENTAMOUNT] [decimal](18, 0) NULL,
	[CRM_RFY2017CURRENTQUANTITY] [decimal](18, 0) NULL,
	[CRM_RFY2018APPROVEDAMOUNT] [decimal](18, 0) NULL,
	[CRM_RFY2018APPROVEDQUANTITY] [decimal](18, 0) NULL,
	[CRM_RFY2018CURRENTAMOUNT] [decimal](18, 0) NULL,
	[CRM_RFY2018CURRENTQUANTITY] [decimal](18, 0) NULL,
	[CRM_RFY2019APPROVEDAMOUNT] [decimal](18, 0) NULL,
	[CRM_RFY2019APPROVEDQUANTITY] [decimal](18, 0) NULL,
	[CRM_RFY2019CURRENTAMOUNT] [decimal](18, 0) NULL,
	[CRM_RFY2019CURRENTQUANTITY] [decimal](18, 0) NULL,
	[CRM_RFY2020APPROVEDAMOUNT] [decimal](18, 0) NULL,
	[CRM_RFY2020APPROVEDQUANTITY] [decimal](18, 0) NULL,
	[CRM_RFY2020CURRENTAMOUNT] [decimal](18, 0) NULL,
	[CRM_RFY2020CURRENTQUANTITY] [decimal](18, 0) NULL,
	[CRM_RFY2021APPROVEDAMOUNT] [decimal](18, 0) NULL,
	[CRM_RFY2021APPROVEDQUANTITY] [decimal](18, 0) NULL,
	[CRM_RFY2021CURRENTAMOUNT] [decimal](18, 0) NULL,
	[CRM_RFY2021CURRENTQUANTITY] [decimal](18, 0) NULL,
	[CRM_RFY2022APPROVEDAMOUNT] [decimal](18, 0) NULL,
	[CRM_RFY2022APPROVEDQUANTITY] [decimal](18, 0) NULL,
	[CRM_RFY2022CURRENTAMOUNT] [decimal](18, 0) NULL,
	[CRM_RFY2022CURRENTQUANTITY] [decimal](18, 0) NULL,
	[CRM_RFY2023APPROVEDAMOUNT] [decimal](18, 0) NULL,
	[CRM_RFY2023APPROVEDQUANTITY] [decimal](18, 0) NULL,
	[CRM_RFY2023CURRENTAMOUNT] [decimal](18, 0) NULL,
	[CRM_RFY2023CURRENTQUANTITY] [decimal](18, 0) NULL,
	[CRM_RFY2024APPROVEDAMOUNT] [decimal](18, 0) NULL,
	[CRM_RFY2024APPROVEDQUANTITY] [decimal](18, 0) NULL,
	[CRM_RFY2024CURRENTAMOUNT] [decimal](18, 0) NULL,
	[CRM_RFY2024CURRENTQUANTITY] [decimal](18, 0) NULL,
	[CRM_RFY2025APPROVEDAMOUNT] [decimal](18, 0) NULL,
	[CRM_RFY2025APPROVEDQUANTITY] [decimal](18, 0) NULL,
	[CRM_RFY2025CURRENTAMOUNT] [decimal](18, 0) NULL,
	[CRM_RFY2025CURRENTQUANTITY] [decimal](18, 0) NULL,
	[CRM_RFY2026APPROVEDAMOUNT] [decimal](18, 0) NULL,
	[CRM_RFY2026APPROVEDQUANTITY] [decimal](18, 0) NULL,
	[CRM_RFY2026CURRENTAMOUNT] [decimal](18, 0) NULL,
	[CRM_RFY2026CURRENTQUANTITY] [decimal](18, 0) NULL,
	[CRM_RFY2027APPROVEDAMOUNT] [decimal](18, 0) NULL,
	[CRM_RFY2027APPROVEDQUANTITY] [decimal](18, 0) NULL,
	[CRM_RFY2027CURRENTAMOUNT] [decimal](18, 0) NULL,
	[CRM_RFY2027CURRENTQUANTITY] [decimal](18, 0) NULL,
	[CRM_RFY2028APPROVEDAMOUNT] [decimal](18, 0) NULL,
	[CRM_RFY2028APPROVEDQUANTITY] [decimal](18, 0) NULL,
	[CRM_RFY2028CURRENTAMOUNT] [decimal](18, 0) NULL,
	[CRM_RFY2028CURRENTQUANTITY] [decimal](18, 0) NULL,
	[CRM_RFY2029APPROVEDAMOUNT] [decimal](18, 0) NULL,
	[CRM_RFY2029APPROVEDQUANTITY] [decimal](18, 0) NULL,
	[CRM_RFY2029CURRENTAMOUNT] [decimal](18, 0) NULL,
	[CRM_RFY2029CURRENTQUANTITY] [decimal](18, 0) NULL,
	[CRM_RFY2030APPROVEDAMOUNT] [decimal](18, 0) NULL,
	[CRM_RFY2030APPROVEDQUANTITY] [decimal](18, 0) NULL,
	[CRM_RFY2030CURRENTAMOUNT] [decimal](18, 0) NULL,
	[CRM_RFY2030CURRENTQUANTITY] [decimal](18, 0) NULL,
	[CRM_RFY2031APPROVEDAMOUNT] [decimal](18, 0) NULL,
	[CRM_RFY2031APPROVEDQUANTITY] [decimal](18, 0) NULL,
	[CRM_RFY2031CURRENTAMOUNT] [decimal](18, 0) NULL,
	[CRM_RFY2031CURRENTQUANTITY] [decimal](18, 0) NULL,
	[CRM_RFY2032APPROVEDAMOUNT] [decimal](18, 0) NULL,
	[CRM_RFY2032APPROVEDQUANTITY] [decimal](18, 0) NULL,
	[CRM_RFY2032CURRENTAMOUNT] [decimal](18, 0) NULL,
	[CRM_RFY2032CURRENTQUANTITY] [decimal](18, 0) NULL,
	[CRM_RFY2033APPROVEDAMOUNT] [decimal](18, 0) NULL,
	[CRM_RFY2033APPROVEDQUANTITY] [decimal](18, 0) NULL,
	[CRM_RFY2033CURRENTAMOUNT] [decimal](18, 0) NULL,
	[CRM_RFY2033CURRENTQUANTITY] [decimal](18, 0) NULL,
	[CRM_RFY2034APPROVEDAMOUNT] [decimal](18, 0) NULL,
	[CRM_RFY2034APPROVEDQUANTITY] [decimal](18, 0) NULL,
	[CRM_RFY2034CURRENTAMOUNT] [decimal](18, 0) NULL,
	[CRM_RFY2034CURRENTQUANTITY] [decimal](18, 0) NULL,
	[CRM_RFY2035APPROVEDAMOUNT] [decimal](18, 0) NULL,
	[CRM_RFY2035APPROVEDQUANTITY] [decimal](18, 0) NULL,
	[CRM_RFY2035CURRENTAMOUNT] [decimal](18, 0) NULL,
	[CRM_RFY2035CURRENTQUANTITY] [decimal](18, 0) NULL,
	[CRM_RFY2036APPROVEDAMOUNT] [decimal](18, 0) NULL,
	[CRM_RFY2036APPROVEDQUANTITY] [decimal](18, 0) NULL,
	[CRM_RFY2036CURRENTAMOUNT] [decimal](18, 0) NULL,
	[CRM_RFY2036CURRENTQUANTITY] [decimal](18, 0) NULL,
	[CRM_RFY2037APPROVEDAMOUNT] [decimal](18, 0) NULL,
	[CRM_RFY2037APPROVEDQUANTITY] [decimal](18, 0) NULL,
	[CRM_RFY2037CURRENTAMOUNT] [decimal](18, 0) NULL,
	[CRM_RFY2037CURRENTQUANTITY] [decimal](18, 0) NULL,
	[CRM_RFY2038APPROVEDAMOUNT] [decimal](18, 0) NULL,
	[CRM_RFY2038APPROVEDQUANTITY] [decimal](18, 0) NULL,
	[CRM_RFY2038CURRENTAMOUNT] [decimal](18, 0) NULL,
	[CRM_RFY2038CURRENTQUANTITY] [decimal](18, 0) NULL,
	[CRM_RFY2039APPROVEDAMOUNT] [decimal](18, 0) NULL,
	[CRM_RFY2039APPROVEDQUANTITY] [decimal](18, 0) NULL,
	[CRM_RFY2039CURRENTAMOUNT] [decimal](18, 0) NULL,
	[CRM_RFY2039CURRENTQUANTITY] [decimal](18, 0) NULL,
	[CRM_RFY2040APPROVEDAMOUNT] [decimal](18, 0) NULL,
	[CRM_RFY2040APPROVEDQUANTITY] [decimal](18, 0) NULL,
	[CRM_RFY2040CURRENTAMOUNT] [decimal](18, 0) NULL,
	[CRM_RFY2040CURRENTQUANTITY] [decimal](18, 0) NULL,
	[CRM_RFY2041APPROVEDAMOUNT] [decimal](18, 0) NULL,
	[CRM_RFY2041APPROVEDQUANTITY] [decimal](18, 0) NULL,
	[CRM_RFY2041CURRENTAMOUNT] [decimal](18, 0) NULL,
	[CRM_RFY2041CURRENTQUANTITY] [decimal](18, 0) NULL,
	[CRM_RFY2042APPROVEDAMOUNT] [decimal](18, 0) NULL,
	[CRM_RFY2042APPROVEDQUANTITY] [decimal](18, 0) NULL,
	[CRM_RFY2042CURRENTAMOUNT] [decimal](18, 0) NULL,
	[CRM_RFY2042CURRENTQUANTITY] [decimal](18, 0) NULL,
	[CRM_RFY2043APPROVEDAMOUNT] [decimal](18, 0) NULL,
	[CRM_RFY2043APPROVEDQUANTITY] [decimal](18, 0) NULL,
	[CRM_RFY2043CURRENTAMOUNT] [decimal](18, 0) NULL,
	[CRM_RFY2043CURRENTQUANTITY] [decimal](18, 0) NULL,
	[CRM_RFY2044APPROVEDAMOUNT] [decimal](18, 0) NULL,
	[CRM_RFY2044APPROVEDQUANTITY] [decimal](18, 0) NULL,
	[CRM_RFY2044CURRENTAMOUNT] [decimal](18, 0) NULL,
	[CRM_RFY2044CURRENTQUANTITY] [decimal](18, 0) NULL,
	[CRM_RFY2045APPROVEDAMOUNT] [decimal](18, 0) NULL,
	[CRM_RFY2045APPROVEDQUANTITY] [decimal](18, 0) NULL,
	[CRM_RFY2045CURRENTAMOUNT] [decimal](18, 0) NULL,
	[CRM_RFY2045CURRENTQUANTITY] [decimal](18, 0) NULL,
	[CRM_RFYTOTALAWARDAPPROVEDAMT] [decimal](18, 0) NULL,
	[CRM_RFYTOTALCURRENTAMOUNT] [decimal](18, 0) NULL,
	[CRM_RFYTOTALCURRENTQUANTITY] [decimal](18, 0) NULL,
	[CRM_RFYTOTALDINAMOUNT] [decimal](18, 0) NULL,
	[CRM_RFYTOTALDINQUANTITY] [decimal](18, 0) NULL,
	[CRM_RENESASNEWPRODUCT] [nchar](1) NULL,
	[CRM_S0ACTUALDATE] [datetime] NULL,
	[CRM_SCHEDULE] [nchar](2) NULL,
	[CRM_SHARE] [decimal](3, 0) NULL,
	[CRM_STAGECODE] [nchar](2) NULL,
	[CRM_STAGEDETAIL] [varchar](255) NULL,
	[CRM_STAGETYPE] [nchar](2) NULL,
	[CRM_STAGE] [nchar](2) NOT NULL,
	[CRM_STARTMONTHOFCUSTOMERFY] [nchar](2) NULL,
	[CRM_STATUSUPDATEDATE] [datetime] NULL,
	[CRM_STATUS] [nchar](2) NULL,
	[CRM_TARGETAWARDDATE] [date] NULL,
	[CRM_TARGETNOMINATIONDATE] [date] NULL,
	[CRM_TECHNICAL] [nchar](2) NULL,
	[CRM_UNIQUEOPPORTUNITY_SEQ] [varchar](13) NOT NULL,
	[CRM_USERLASTMODIFIEDDATE] [datetime] NULL,
	[CRM_TARGETPRICE] [nchar](2) NULL,
	[CRM_ALLUSER_COMMENTBY] [varchar](255) NULL,
	[CRM_ALLUSER_COMMENTDATE] [datetime] NULL,
	[CRM_AWARDAPPROVEDDATE] [datetime] NULL,
	[CRM_AWARDAPPROVER] [varchar](255) NULL,
	[CRM_AWARDREQUESTDATE] [datetime] NULL,
	[CRM_AWARDREQUESTER] [varchar](255) NULL,
	[CRM_COMMENT_FOR_MARKETPRICEBU] [nvarchar](255) NULL,
	[CRM_COMMENT_FOR_RENESASONLY] [nvarchar](255) NULL,
	[CRM_DINAPPROVEDDATE] [datetime] NULL,
	[CRM_DINAPPROVER] [varchar](255) NULL,
	[CRM_DINPARTNONAME] [varchar](255) NULL,
	[CRM_DINSALESORDERPARTNO] [varchar](40) NULL,
	[CRM_DINREQUESTDATE] [datetime] NULL,
	[CRM_DINREQUESTER] [varchar](255) NULL,
	[CRM_DURATIONINCURRENTSTAGE] [varchar](10) NULL,
	[CRM_EXCLUDEDISTI_COMMENTBY] [varchar](255) NULL,
	[CRM_EXCLUDEDISTI_COMMENTDATE] [datetime] NULL,
	[CRM_EXCLUDEDISTI_COMMENT] [nvarchar](255) NULL,
	[CRM_LASTSTAGEMODIFIEDDATE] [datetime] NULL,
	[CRM_LATEST_COMMENTBY] [varchar](255) NULL,
	[CRM_LATEST_COMMENTDATE] [datetime] NULL,
	[CRM_LATEST_COMMENT] [nvarchar](255) NULL,
	[CRM_MARKETPRICEBU_COMMENTBY] [varchar](255) NULL,
	[CRM_MARKETPRICEBU_COMMENTDATE] [datetime] NULL,
	[CRM_NOMINATIONAPPROVEDDATE] [datetime] NULL,
	[CRM_NOMINATIONAPPROVER] [varchar](255) NULL,
	[CRM_NOMINATIONREQUESTDATE] [datetime] NULL,
	[CRM_NOMINATIONREQUESTER] [varchar](255) NULL,
	[CRM_PARENTTYPE] [varchar](10) NULL,
	[CRM_RFY2015C] [decimal](18, 0) NULL,
	[CRM_RFY2015CURRENTCOST] [decimal](18, 0) NULL,
	[CRM_RFY2015CURRENTGOGP] [decimal](18, 0) NULL,
	[CRM_RFY2015CURRENTGP] [decimal](18, 0) NULL,
	[CRM_RFY2015DINCOST] [decimal](18, 0) NULL,
	[CRM_RFY2015DINGOGP] [decimal](18, 0) NULL,
	[CRM_RFY2015DINGP] [decimal](18, 0) NULL,
	[CRM_RFY2016C] [decimal](18, 0) NULL,
	[CRM_RFY2016CURRENTCOST] [decimal](18, 0) NULL,
	[CRM_RFY2016CURRENTGOGP] [decimal](18, 0) NULL,
	[CRM_RFY2016CURRENTGP] [decimal](18, 0) NULL,
	[CRM_RFY2016DINCOST] [decimal](18, 0) NULL,
	[CRM_RFY2016DINGOGP] [decimal](18, 0) NULL,
	[CRM_RFY2016DINGP] [decimal](18, 0) NULL,
	[CRM_RFY2017C] [decimal](18, 0) NULL,
	[CRM_RFY2017CURRENTCOST] [decimal](18, 0) NULL,
	[CRM_RFY2017CURRENTGOGP] [decimal](18, 0) NULL,
	[CRM_RFY2017CURRENTGP] [decimal](18, 0) NULL,
	[CRM_RFY2017DINCOST] [decimal](18, 0) NULL,
	[CRM_RFY2017DINGOGP] [decimal](18, 0) NULL,
	[CRM_RFY2017DINGP] [decimal](18, 0) NULL,
	[CRM_RFY2018C] [decimal](18, 0) NULL,
	[CRM_RFY2018CURRENTCOST] [decimal](18, 0) NULL,
	[CRM_RFY2018CURRENTGOGP] [decimal](18, 0) NULL,
	[CRM_RFY2018CURRENTGP] [decimal](18, 0) NULL,
	[CRM_RFY2018DINCOST] [decimal](18, 0) NULL,
	[CRM_RFY2018DINGOGP] [decimal](18, 0) NULL,
	[CRM_RFY2018DINGP] [decimal](18, 0) NULL,
	[CRM_RFY2019C] [decimal](18, 0) NULL,
	[CRM_RFY2019CURRENTCOST] [decimal](18, 0) NULL,
	[CRM_RFY2019CURRENTGOGP] [decimal](18, 0) NULL,
	[CRM_RFY2019CURRENTGP] [decimal](18, 0) NULL,
	[CRM_RFY2019DINCOST] [decimal](18, 0) NULL,
	[CRM_RFY2019DINGOGP] [decimal](18, 0) NULL,
	[CRM_RFY2019DINGP] [decimal](18, 0) NULL,
	[CRM_RFY2020C] [decimal](18, 0) NULL,
	[CRM_RFY2020CURRENTCOST] [decimal](18, 0) NULL,
	[CRM_RFY2020CURRENTGOGP] [decimal](18, 0) NULL,
	[CRM_RFY2020CURRENTGP] [decimal](18, 0) NULL,
	[CRM_RFY2020DINCOST] [decimal](18, 0) NULL,
	[CRM_RFY2020DINGOGP] [decimal](18, 0) NULL,
	[CRM_RFY2020DINGP] [decimal](18, 0) NULL,
	[CRM_RFY2021C] [decimal](18, 0) NULL,
	[CRM_RFY2021CURRENTCOST] [decimal](18, 0) NULL,
	[CRM_RFY2021CURRENTGOGP] [decimal](18, 0) NULL,
	[CRM_RFY2021CURRENTGP] [decimal](18, 0) NULL,
	[CRM_RFY2021DINCOST] [decimal](18, 0) NULL,
	[CRM_RFY2021DINGOGP] [decimal](18, 0) NULL,
	[CRM_RFY2021DINGP] [decimal](18, 0) NULL,
	[CRM_RFY2022C] [decimal](18, 0) NULL,
	[CRM_RFY2022CURRENTCOST] [decimal](18, 0) NULL,
	[CRM_RFY2022CURRENTGOGP] [decimal](18, 0) NULL,
	[CRM_RFY2022CURRENTGP] [decimal](18, 0) NULL,
	[CRM_RFY2022DINCOST] [decimal](18, 0) NULL,
	[CRM_RFY2022DINGOGP] [decimal](18, 0) NULL,
	[CRM_RFY2022DINGP] [decimal](18, 0) NULL,
	[CRM_RFY2023C] [decimal](18, 0) NULL,
	[CRM_RFY2023CURRENTCOST] [decimal](18, 0) NULL,
	[CRM_RFY2023CURRENTGOGP] [decimal](18, 0) NULL,
	[CRM_RFY2023CURRENTGP] [decimal](18, 0) NULL,
	[CRM_RFY2023DINCOST] [decimal](18, 0) NULL,
	[CRM_RFY2023DINGOGP] [decimal](18, 0) NULL,
	[CRM_RFY2023DINGP] [decimal](18, 0) NULL,
	[CRM_RFY2024C] [decimal](18, 0) NULL,
	[CRM_RFY2024CURRENTCOST] [decimal](18, 0) NULL,
	[CRM_RFY2024CURRENTGOGP] [decimal](18, 0) NULL,
	[CRM_RFY2024CURRENTGP] [decimal](18, 0) NULL,
	[CRM_RFY2024DINCOST] [decimal](18, 0) NULL,
	[CRM_RFY2024DINGOGP] [decimal](18, 0) NULL,
	[CRM_RFY2024DINGP] [decimal](18, 0) NULL,
	[CRM_RFY2025C] [decimal](18, 0) NULL,
	[CRM_RFY2025CURRENTCOST] [decimal](18, 0) NULL,
	[CRM_RFY2025CURRENTGOGP] [decimal](18, 0) NULL,
	[CRM_RFY2025CURRENTGP] [decimal](18, 0) NULL,
	[CRM_RFY2025DINCOST] [decimal](18, 0) NULL,
	[CRM_RFY2025DINGOGP] [decimal](18, 0) NULL,
	[CRM_RFY2025DINGP] [decimal](18, 0) NULL,
	[CRM_RFY2026C] [decimal](18, 0) NULL,
	[CRM_RFY2026CURRENTCOST] [decimal](18, 0) NULL,
	[CRM_RFY2026CURRENTGOGP] [decimal](18, 0) NULL,
	[CRM_RFY2026CURRENTGP] [decimal](18, 0) NULL,
	[CRM_RFY2026DINCOST] [decimal](18, 0) NULL,
	[CRM_RFY2026DINGOGP] [decimal](18, 0) NULL,
	[CRM_RFY2026DINGP] [decimal](18, 0) NULL,
	[CRM_RFY2027C] [decimal](18, 0) NULL,
	[CRM_RFY2027CURRENTCOST] [decimal](18, 0) NULL,
	[CRM_RFY2027CURRENTGOGP] [decimal](18, 0) NULL,
	[CRM_RFY2027CURRENTGP] [decimal](18, 0) NULL,
	[CRM_RFY2027DINCOST] [decimal](18, 0) NULL,
	[CRM_RFY2027DINGOGP] [decimal](18, 0) NULL,
	[CRM_RFY2027DINGP] [decimal](18, 0) NULL,
	[CRM_RFY2028C] [decimal](18, 0) NULL,
	[CRM_RFY2028CURRENTCOST] [decimal](18, 0) NULL,
	[CRM_RFY2028CURRENTGOGP] [decimal](18, 0) NULL,
	[CRM_RFY2028CURRENTGP] [decimal](18, 0) NULL,
	[CRM_RFY2028DINCOST] [decimal](18, 0) NULL,
	[CRM_RFY2028DINGOGP] [decimal](18, 0) NULL,
	[CRM_RFY2028DINGP] [decimal](18, 0) NULL,
	[CRM_RFY2029C] [decimal](18, 0) NULL,
	[CRM_RFY2029CURRENTCOST] [decimal](18, 0) NULL,
	[CRM_RFY2029CURRENTGOGP] [decimal](18, 0) NULL,
	[CRM_RFY2029CURRENTGP] [decimal](18, 0) NULL,
	[CRM_RFY2029DINCOST] [decimal](18, 0) NULL,
	[CRM_RFY2029DINGOGP] [decimal](18, 0) NULL,
	[CRM_RFY2029DINGP] [decimal](18, 0) NULL,
	[CRM_RFY2030C] [decimal](18, 0) NULL,
	[CRM_RFY2030CURRENTCOST] [decimal](18, 0) NULL,
	[CRM_RFY2030CURRENTGOGP] [decimal](18, 0) NULL,
	[CRM_RFY2030CURRENTGP] [decimal](18, 0) NULL,
	[CRM_RFY2030DINCOST] [decimal](18, 0) NULL,
	[CRM_RFY2030DINGOGP] [decimal](18, 0) NULL,
	[CRM_RFY2030DINGP] [decimal](18, 0) NULL,
	[CRM_RFY2031C] [decimal](18, 0) NULL,
	[CRM_RFY2031CURRENTCOST] [decimal](18, 0) NULL,
	[CRM_RFY2031CURRENTGOGP] [decimal](18, 0) NULL,
	[CRM_RFY2031CURRENTGP] [decimal](18, 0) NULL,
	[CRM_RFY2031DINCOST] [decimal](18, 0) NULL,
	[CRM_RFY2031DINGOGP] [decimal](18, 0) NULL,
	[CRM_RFY2031DINGP] [decimal](18, 0) NULL,
	[CRM_RFY2032C] [decimal](18, 0) NULL,
	[CRM_RFY2032CURRENTCOST] [decimal](18, 0) NULL,
	[CRM_RFY2032CURRENTGOGP] [decimal](18, 0) NULL,
	[CRM_RFY2032CURRENTGP] [decimal](18, 0) NULL,
	[CRM_RFY2032DINCOST] [decimal](18, 0) NULL,
	[CRM_RFY2032DINGOGP] [decimal](18, 0) NULL,
	[CRM_RFY2032DINGP] [decimal](18, 0) NULL,
	[CRM_RFY2033C] [decimal](18, 0) NULL,
	[CRM_RFY2033CURRENTCOST] [decimal](18, 0) NULL,
	[CRM_RFY2033CURRENTGOGP] [decimal](18, 0) NULL,
	[CRM_RFY2033CURRENTGP] [decimal](18, 0) NULL,
	[CRM_RFY2033DINCOST] [decimal](18, 0) NULL,
	[CRM_RFY2033DINGOGP] [decimal](18, 0) NULL,
	[CRM_RFY2033DINGP] [decimal](18, 0) NULL,
	[CRM_RFY2034C] [decimal](18, 0) NULL,
	[CRM_RFY2034CURRENTCOST] [decimal](18, 0) NULL,
	[CRM_RFY2034CURRENTGOGP] [decimal](18, 0) NULL,
	[CRM_RFY2034CURRENTGP] [decimal](18, 0) NULL,
	[CRM_RFY2034DINCOST] [decimal](18, 0) NULL,
	[CRM_RFY2034DINGOGP] [decimal](18, 0) NULL,
	[CRM_RFY2034DINGP] [decimal](18, 0) NULL,
	[CRM_RFY2035C] [decimal](18, 0) NULL,
	[CRM_RFY2035CURRENTCOST] [decimal](18, 0) NULL,
	[CRM_RFY2035CURRENTGOGP] [decimal](18, 0) NULL,
	[CRM_RFY2035CURRENTGP] [decimal](18, 0) NULL,
	[CRM_RFY2035DINCOST] [decimal](18, 0) NULL,
	[CRM_RFY2035DINGOGP] [decimal](18, 0) NULL,
	[CRM_RFY2035DINGP] [decimal](18, 0) NULL,
	[CRM_RFY2036C] [decimal](18, 0) NULL,
	[CRM_RFY2036CURRENTCOST] [decimal](18, 0) NULL,
	[CRM_RFY2036CURRENTGOGP] [decimal](18, 0) NULL,
	[CRM_RFY2036CURRENTGP] [decimal](18, 0) NULL,
	[CRM_RFY2036DINCOST] [decimal](18, 0) NULL,
	[CRM_RFY2036DINGOGP] [decimal](18, 0) NULL,
	[CRM_RFY2036DINGP] [decimal](18, 0) NULL,
	[CRM_RFY2037C] [decimal](18, 0) NULL,
	[CRM_RFY2037CURRENTCOST] [decimal](18, 0) NULL,
	[CRM_RFY2037CURRENTGOGP] [decimal](18, 0) NULL,
	[CRM_RFY2037CURRENTGP] [decimal](18, 0) NULL,
	[CRM_RFY2037DINCOST] [decimal](18, 0) NULL,
	[CRM_RFY2037DINGOGP] [decimal](18, 0) NULL,
	[CRM_RFY2037DINGP] [decimal](18, 0) NULL,
	[CRM_RFY2038C] [decimal](18, 0) NULL,
	[CRM_RFY2038CURRENTCOST] [decimal](18, 0) NULL,
	[CRM_RFY2038CURRENTGOGP] [decimal](18, 0) NULL,
	[CRM_RFY2038CURRENTGP] [decimal](18, 0) NULL,
	[CRM_RFY2038DINCOST] [decimal](18, 0) NULL,
	[CRM_RFY2038DINGOGP] [decimal](18, 0) NULL,
	[CRM_RFY2038DINGP] [decimal](18, 0) NULL,
	[CRM_RFY2039C] [decimal](18, 0) NULL,
	[CRM_RFY2039CURRENTCOST] [decimal](18, 0) NULL,
	[CRM_RFY2039CURRENTGOGP] [decimal](18, 0) NULL,
	[CRM_RFY2039CURRENTGP] [decimal](18, 0) NULL,
	[CRM_RFY2039DINCOST] [decimal](18, 0) NULL,
	[CRM_RFY2039DINGOGP] [decimal](18, 0) NULL,
	[CRM_RFY2039DINGP] [decimal](18, 0) NULL,
	[CRM_RFY2040C] [decimal](18, 0) NULL,
	[CRM_RFY2040CURRENTCOST] [decimal](18, 0) NULL,
	[CRM_RFY2040CURRENTGOGP] [decimal](18, 0) NULL,
	[CRM_RFY2040CURRENTGP] [decimal](18, 0) NULL,
	[CRM_RFY2040DINCOST] [decimal](18, 0) NULL,
	[CRM_RFY2040DINGOGP] [decimal](18, 0) NULL,
	[CRM_RFY2040DINGP] [decimal](18, 0) NULL,
	[CRM_RFYTOTALCURRENTCOST] [decimal](18, 0) NULL,
	[CRM_RFYTOTALCURRENTGP] [decimal](18, 0) NULL,
	[CRM_RFYTOTALCURRNETGPPERCENT] [decimal](18, 1) NULL,
	[CRM_RFYTOTALDINCOST] [decimal](18, 0) NULL,
	[CRM_RFYTOTALDINGPPERCENT] [decimal](18, 1) NULL,
	[CRM_RFYTOTALDINGP] [decimal](18, 0) NULL,
	[CRM_RENESASONLY_COMMENTBY] [varchar](255) NULL,
	[CRM_RENESASONLY_COMMENTDATE] [datetime] NULL,
	[CRM_S1ACTUALDATE] [datetime] NULL,
	[CRM_S2ACTUALDATE] [datetime] NULL,
	[CRM_S3ACTUALDATE] [datetime] NULL,
	[CRM_S4ACTUALDATE] [datetime] NULL,
	[CRM_RFY2015CURRENTGOAMOUNT] [decimal](18, 0) NULL,
	[CRM_RFY2015DINGOAMOUNT] [decimal](18, 0) NULL,
	[CRM_RFY2016CURRENTGOAMOUNT] [decimal](18, 0) NULL,
	[CRM_RFY2016DINGOAMOUNT] [decimal](18, 0) NULL,
	[CRM_RFY2017CURRENTGOAMOUNT] [decimal](18, 0) NULL,
	[CRM_RFY2017DINGOAMOUNT] [decimal](18, 0) NULL,
	[CRM_RFY2018CURRENTGOAMOUNT] [decimal](18, 0) NULL,
	[CRM_RFY2018DINGOAMOUNT] [decimal](18, 0) NULL,
	[CRM_RFY2019CURRENTGOAMOUNT] [decimal](18, 0) NULL,
	[CRM_RFY2019DINGOAMOUNT] [decimal](18, 0) NULL,
	[CRM_RFY2020CURRENTGOAMOUNT] [decimal](18, 0) NULL,
	[CRM_RFY2020DINGOAMOUNT] [decimal](18, 0) NULL,
	[CRM_RFY2021CURRENTGOAMOUNT] [decimal](18, 0) NULL,
	[CRM_RFY2021DINGOAMOUNT] [decimal](18, 0) NULL,
	[CRM_RFY2022CURRENTGOAMOUNT] [decimal](18, 0) NULL,
	[CRM_RFY2022DINGOAMOUNT] [decimal](18, 0) NULL,
	[CRM_RFY2023CURRENTGOAMOUNT] [decimal](18, 0) NULL,
	[CRM_RFY2023DINGOAMOUNT] [decimal](18, 0) NULL,
	[CRM_RFY2024CURRENTGOAMOUNT] [decimal](18, 0) NULL,
	[CRM_RFY2024DINGOAMOUNT] [decimal](18, 0) NULL,
	[CRM_RFY2025CURRENTGOAMOUNT] [decimal](18, 0) NULL,
	[CRM_RFY2025DINGOAMOUNT] [decimal](18, 0) NULL,
	[CRM_RFY2026CURRENTGOAMOUNT] [decimal](18, 0) NULL,
	[CRM_RFY2026DINGOAMOUNT] [decimal](18, 0) NULL,
	[CRM_RFY2027CURRENTGOAMOUNT] [decimal](18, 0) NULL,
	[CRM_RFY2027DINGOAMOUNT] [decimal](18, 0) NULL,
	[CRM_RFY2028CURRENTGOAMOUNT] [decimal](18, 0) NULL,
	[CRM_RFY2028DINGOAMOUNT] [decimal](18, 0) NULL,
	[CRM_RFY2029CURRENTGOAMOUNT] [decimal](18, 0) NULL,
	[CRM_RFY2029DINGOAMOUNT] [decimal](18, 0) NULL,
	[CRM_RFY2030CURRENTGOAMOUNT] [decimal](18, 0) NULL,
	[CRM_RFY2030DINGOAMOUNT] [decimal](18, 0) NULL,
	[CRM_RFY2031CURRENTGOAMOUNT] [decimal](18, 0) NULL,
	[CRM_RFY2031DINGOAMOUNT] [decimal](18, 0) NULL,
	[CRM_RFY2032CURRENTGOAMOUNT] [decimal](18, 0) NULL,
	[CRM_RFY2032DINGOAMOUNT] [decimal](18, 0) NULL,
	[CRM_RFY2033CURRENTGOAMOUNT] [decimal](18, 0) NULL,
	[CRM_RFY2033DINGOAMOUNT] [decimal](18, 0) NULL,
	[CRM_RFY2034CURRENTGOAMOUNT] [decimal](18, 0) NULL,
	[CRM_RFY2034DINGOAMOUNT] [decimal](18, 0) NULL,
	[CRM_RFY2035CURRENTGOAMOUNT] [decimal](18, 0) NULL,
	[CRM_RFY2035DINGOAMOUNT] [decimal](18, 0) NULL,
	[CRM_RFY2036CURRENTGOAMOUNT] [decimal](18, 0) NULL,
	[CRM_RFY2036DINGOAMOUNT] [decimal](18, 0) NULL,
	[CRM_RFY2037CURRENTGOAMOUNT] [decimal](18, 0) NULL,
	[CRM_RFY2037DINGOAMOUNT] [decimal](18, 0) NULL,
	[CRM_RFY2038CURRENTGOAMOUNT] [decimal](18, 0) NULL,
	[CRM_RFY2038DINGOAMOUNT] [decimal](18, 0) NULL,
	[CRM_RFY2039CURRENTGOAMOUNT] [decimal](18, 0) NULL,
	[CRM_RFY2039DINGOAMOUNT] [decimal](18, 0) NULL,
	[CRM_RFY2040CURRENTGOAMOUNT] [decimal](18, 0) NULL,
	[CRM_RFY2040DINGOAMOUNT] [decimal](18, 0) NULL,
	[CRM_RFYTOTALCURRENTGOGPOFREM] [decimal](18, 0) NULL,
	[CRM_RFYTOTALCURRENTGOGPPERCENT] [decimal](18, 1) NULL,
	[CRM_RFYTOTALCURRENTGOGP] [decimal](18, 0) NULL,
	[CRM_RFYTOTALCURRENTGOAMOUNT] [decimal](18, 0) NULL,
	[CRM_RFYTOTALDINGOGPPERCENT] [decimal](18, 1) NULL,
	[CRM_RFYTOTALDINGOGP] [decimal](18, 0) NULL,
	[CRM_RFYTOTALDINGOAMOUNT] [decimal](18, 0) NULL,
	[CRM_RFYTOTALGOGPPERCENTOFREM] [decimal](18, 1) NULL,
	[CRM_COMMENTCHECK_THISMONTH] [nchar](1) NULL,
	[CRM_COMMENTCHECK_WITHIN3MONTHS] [nchar](1) NULL,
	[NDA_FLAG] [nchar](1) NOT NULL,
	[OPPORTUNITY_NAME] [nvarchar](120) NOT NULL,
	[CRM_AGGREGATEID] [varchar](18) NOT NULL,
	[IF_LAST_MODIFIED_DATE] [datetime] NOT NULL,
	[UPDATE_DATE] [date] NULL
) ON [PS_PartitionByMonth_DW]([UPDATE_DATE])
WITH
(
DATA_COMPRESSION = PAGE
)

GO
SET ANSI_PADDING ON

GO
CREATE CLUSTERED INDEX [I_T_SFM_BCCV_AGGREGATE_VIEW_1] ON [dbo].[T_SFM_BCCV_AGGREGATE_VIEW]
(
	[CRM_UNIQUEOPPORTUNITY_SEQ] ASC,
	[UPDATE_DATE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, DATA_COMPRESSION = PAGE) ON [PS_PartitionByMonth_DW]([UPDATE_DATE])
GO