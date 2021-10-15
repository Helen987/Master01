USE [BI_DM]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [dbo].[VD_SFM_BCCV_AGGREGATE] AS

WITH AGG_DIM AS(
SELECT
 CRM_DINSALESORDERPARTNO
,CRM_DINPARTNONAME
,CRM_ACTUALAWARDDATE
,CRM_ACTUALNOMINATIONDATE
,CRM_COMMENT
,CRM_ALLUSER_COMMENTBY
,CRM_ALLUSER_COMMENTDATE
,CRM_APPROVALDATE
,CRM_APPROVELREQUESTDATE
,CRM_APPROVER_DSNO
,CRM_AVERAGEPRICE
,CRM_AWARDAPPROVEDDATE
,CRM_AWARDAPPROVER
,CRM_AWARDCONFIDENCELEVEL
,CRM_AWARDCONFIDENCELEVEL_CODE
,T23.CODE_NAME AS CRM_AWARDCONFIDENCELEVEL_TXT
,CRM_LATESTAWARDDATE
,CRM_AWARDREQUESTDATE
,CRM_AWARDREQUESTER
,CRM_CANRENESASMEETTHESCHEDULE
,T7.CODE_NAME AS CRM_CANRENESASMEETTHESCHEDULE_TXT
,CREATED_BY_DSNO
,CREATEDDATE
,CURRENCYISOCODE
,CRM_DATESINPAST
,CRM_AWARDSALESCOMPANY
,CRM_DAYSTOMP
,CRM_STATUSUPDATEDATE
,CRM_CLOSEREASON
,T.CODE_NAME AS CRM_CLOSEREASON_TXT
,CRM_DINACTUALDATE
,CRM_DINACTUALNEWDATE
,CRM_DINAPPROVEDDATE
,CRM_DINAPPROVER
,CRM_DINCONFIDENCE
,CRM_DINCONFIDENCE_CODE
,CRM_DINCONFIDENCE AS CRM_DINCONFIDENCE_TXT
,CRM_DINDATE
,CRM_DINREQUESTDATE
,CRM_DINREQUESTER
,CRM_DINTARGETDATE
,CRM_DRREQUESTEDPARTNOSTATUS
,CRM_DOESRENESASFITREQUIREMENT
,T6.CODE_NAME AS CRM_DOESRENESASFITREQUIREMENT_TXT
,CRM_DRAPPROVEDNOTE
,CRM_DRAPPROVEDDATE
,CRM_DRREQUESTEDAPPROVER_DSNO
,CRM_DRAPPROVER_DSNO
,CRM_DRAPPROVEDPARTNOSTATUS
,CRM_DREXPIRATIONDATE
,CRM_DRAPPROVEDPARTNO
,CRM_DRREQUESTEDDATE
,CRM_DRREQUESTEDPARTNO
,CRM_DR_REQUESTOR_DSNO
,CRM_DRSTATUS
,CRM_DURATIONINCURRENTSTAGE
,CRM_EXCLUDEDISTI_COMMENT
,CRM_EXCLUDEDISTI_COMMENTBY
,CRM_EXCLUDEDISTI_COMMENTDATE
,CRM_FORECASTTYPE
,T12.CODE_NAME AS CRM_FORECASTTYPE_TXT
,CRM_FULFILLMENTREGION
,T15.CODE_NAME AS CRM_FULFILLMENTREGION_TXT
,CRM_FULFILLSCMCUSTOMERCODE
,CRM_HASAPRICEBEENSUBMITTED
,T8.CODE_NAME AS CRM_HASAPRICEBEENSUBMITTED_TXT
,CRM_HASSAMPLEBEENDELIVERED
,T9.CODE_NAME AS CRM_HASSAMPLEBEENDELIVERED_TXT
,CRM_RENESASNEWPRODUCT
,LASTMODIFIED_BY_DSNO
,LASTMODIFIEDDATE
,CRM_LASTSTAGEMODIFIEDDATE
,CRM_ORIGINALLASTMODBY_DSNO
,CRM_ORIGINALLASTMODIFIEDDATE
,CRM_LATEST_COMMENT
,CRM_LATEST_COMMENTBY
,CRM_LATEST_COMMENTDATE
,CRM_COMMENT_FOR_MARKETPRICEBU
,CRM_MARKETPRICEBU_COMMENTBY
,CRM_MARKETPRICEBU_COMMENTDATE
,CRM_PARENTTYPE
,CRM_MPEND
,CRM_MPSTART
,CRM_MPSTARTOFREMAINING
,CRM_NICKNAMETEMPORARYPARTNO
,CRM_NOMINATIONAPPROVEDDATE
,CRM_NOMINATIONAPPROVER
,CRM_NOMINATIONCONFIDENCELEVEL
,CRM_NOMINATIONCONFIDENCELEVEL_CODE
,T22.CODE_NAME AS CRM_NOMINATIONCONFIDENCELEVEL_TXT
,CRM_LATESTNOMINATIONDATE
,CRM_NOMINATIONREQUESTDATE
,CRM_NOMINATIONREQUESTER
,CRM_NETBILLINGFLG
,CRM_OPPORTUNITYDISCERNMENT
,T13.CODE_NAME AS OPPORTUNITY_DISCERNMENT_TXT
,OPPORTUNITY_NAME
,CRM_SALESORDERPARTNO
,CRM_PPAP
,CRM_PRODUCTFAMILY
,CRM_PROGRESS
,CRM_PROGRESSCOLOR
,CRM_PROGRESSFROM
,CRM_PROGRESSTO
,CRM_PROJECTNAME
,CRM_PROMOTIONSAMPLE
,T5.CODE_NAME AS CRM_PROMOTIONSAMPLE_TXT
,CRM_AGGREGATEID
,CRM_COMMENT_FOR_RENESASONLY
,CRM_RENESASONLY_COMMENTBY
,CRM_RENESASONLY_COMMENTDATE
,CRM_S0ACTUALDATE
,CRM_S1ACTUALDATE
,CRM_S2ACTUALDATE
,CRM_S3ACTUALDATE
,CRM_S4ACTUALDATE
,CRM_SCHEDULE
,T14.CODE_NAME AS CRM_SCHEDULE_TXT
,CRM_SHARE
,CRM_STAGE
,CRM_STAGECODE
,CRM_STAGEDETAIL
,CRM_STAGETYPE
--20181109 Chi ���׃r���[��Aggregate�Ή�_2����C START
,T24.CODE_NAME AS CRM_STAGETYPE_TXT
--20181109 Chi ���׃r���[��Aggregate�Ή�_2����C END
,CRM_STARTMONTHOFCUSTOMERFY
,T2.CODE_NAME AS CRM_STARTMONTHOFCUSTOMERFY_TXT
,CRM_STATUS
,CRM_TARGETAWARDDATE
,CRM_TARGETNOMINATIONDATE
,CRM_TARGETPRICE
,T4.CODE_NAME AS CRM_TARGETPRICE_TXT
,CRM_TECHNICAL
,T3.CODE_NAME AS CRM_TECHNICAL_TXT
,CRM_UNIQUEOPPORTUNITY_SEQ
,CRM_USERLASTMODIFIEDDATE
,CRM_COMMENTCHECK_THISMONTH
,CRM_COMMENTCHECK_WITHIN3MONTHS
,CURRENCY_TYPE
FROM [BI_DM].[dbo].[F_SFM_AGGREGATE_SUMMARY_L] S
LEFT OUTER JOIN
  (
	SELECT
	  CODE_ID,
	  CODE_VALUE,
	  CODE_NAME
	FROM
	  [BI_DW].[dbo].[R_SFM_BCCT_BAMBOO_CODE_MST]
	WHERE
	  CODE_ID = 'C100'
  ) T13
ON
  S.CRM_OPPORTUNITYDISCERNMENT = T13.CODE_VALUE

LEFT OUTER JOIN
  (
	SELECT
	  CODE_ID,
	  CODE_VALUE,
	  CODE_NAME
	FROM
	  [BI_DW].[dbo].[R_SFM_BCCT_BAMBOO_CODE_MST]
	WHERE
	  CODE_ID = 'C130'
  ) T15
ON
  S.CRM_FULFILLMENTREGION = T15.CODE_VALUE

LEFT OUTER JOIN
  (
	SELECT
	  CODE_ID,
	  CODE_VALUE,
	  CODE_NAME
	FROM
	  [BI_DW].[dbo].[R_SFM_BCCT_BAMBOO_CODE_MST]
	WHERE
	  CODE_ID = 'C050'
  ) T
ON
  S.CRM_CLOSEREASON = T.CODE_VALUE

LEFT OUTER JOIN
  (
	SELECT
	  CODE_ID,
	  CODE_VALUE,
	  CODE_NAME
	FROM
	  [BI_DW].[dbo].[R_SFM_BCCT_BAMBOO_CODE_MST]
	WHERE
	  CODE_ID = 'C250'
  ) T2
ON
  S.CRM_STARTMONTHOFCUSTOMERFY = T2.CODE_VALUE

LEFT OUTER JOIN
  (
	SELECT
	  CODE_ID,
	  CODE_VALUE,
	  CODE_NAME
	FROM
	  [BI_DW].[dbo].[R_SFM_BCCT_BAMBOO_CODE_MST]
	WHERE
	  CODE_ID = 'C070'
  ) T3
ON
  S.CRM_TECHNICAL = T3.CODE_VALUE

LEFT OUTER JOIN
  (
	SELECT
	  CODE_ID,
	  CODE_VALUE,
	  CODE_NAME
	FROM
	  [BI_DW].[dbo].[R_SFM_BCCT_BAMBOO_CODE_MST]
	WHERE
	  CODE_ID = 'C070'
  ) T4
ON
  S.CRM_TARGETPRICE = T4.CODE_VALUE

LEFT OUTER JOIN
  (
	SELECT
	  CODE_ID,
	  CODE_VALUE,
	  CODE_NAME
	FROM
	  [BI_DW].[dbo].[R_SFM_BCCT_BAMBOO_CODE_MST]
	WHERE
	  CODE_ID = 'C070'
  ) T5
ON
  S.CRM_PROMOTIONSAMPLE = T5.CODE_VALUE

LEFT OUTER JOIN
  (
	SELECT
	  CODE_ID,
	  CODE_VALUE,
	  CODE_NAME
	FROM
	  [BI_DW].[dbo].[R_SFM_BCCT_BAMBOO_CODE_MST]
	WHERE
	  CODE_ID = 'C070'
  ) T6
ON
  S.CRM_DOESRENESASFITREQUIREMENT = T6.CODE_VALUE

LEFT OUTER JOIN
  (
	SELECT
	  CODE_ID,
	  CODE_VALUE,
	  CODE_NAME
	FROM
	  [BI_DW].[dbo].[R_SFM_BCCT_BAMBOO_CODE_MST]
	WHERE
	  CODE_ID = 'C070'
  ) T7
ON
  S.CRM_CANRENESASMEETTHESCHEDULE = T7.CODE_VALUE

LEFT OUTER JOIN
  (
	SELECT
	  CODE_ID,
	  CODE_VALUE,
	  CODE_NAME
	FROM
	  [BI_DW].[dbo].[R_SFM_BCCT_BAMBOO_CODE_MST]
	WHERE
	  CODE_ID = 'C070'
  ) T8
ON
  S.CRM_HASAPRICEBEENSUBMITTED = T8.CODE_VALUE

LEFT OUTER JOIN
  (
	SELECT
	  CODE_ID,
	  CODE_VALUE,
	  CODE_NAME
	FROM
	  [BI_DW].[dbo].[R_SFM_BCCT_BAMBOO_CODE_MST]
	WHERE
	  CODE_ID = 'C070'
  ) T9
ON
  S.CRM_HASSAMPLEBEENDELIVERED = T9.CODE_VALUE

LEFT OUTER JOIN
  (
	SELECT
	  CODE_ID,
	  CODE_VALUE,
	  CODE_NAME
	FROM
	  [BI_DW].[dbo].[R_SFM_BCCT_BAMBOO_CODE_MST]
	WHERE
	  CODE_ID = 'C520'
  ) T12
ON
  S.CRM_FORECASTTYPE = T12.CODE_VALUE

LEFT OUTER JOIN
  (
	SELECT
	  CODE_ID,
	  CODE_VALUE,
	  CODE_NAME
	FROM
	  [BI_DW].[dbo].[R_SFM_BCCT_BAMBOO_CODE_MST]
	WHERE
	  CODE_ID = 'C070'
  ) T14
ON
  S.CRM_SCHEDULE = T14.CODE_VALUE

LEFT OUTER JOIN
  (
	SELECT
	  CODE_ID,
	  CODE_VALUE,
	  CODE_NAME
	FROM
	  [BI_DW].[dbo].[R_SFM_BCCT_BAMBOO_CODE_MST]
	WHERE
	  CODE_ID = 'C080'
  ) T22
ON
  S.CRM_NOMINATIONCONFIDENCELEVEL = T22.CODE_VALUE
LEFT OUTER JOIN
  (
	SELECT
	  CODE_ID,
	  CODE_VALUE,
	  CODE_NAME
	FROM
	  [BI_DW].[dbo].[R_SFM_BCCT_BAMBOO_CODE_MST]
	WHERE
	  CODE_ID = 'C080'
  ) T23
ON
  S.CRM_AWARDCONFIDENCELEVEL = T23.CODE_VALUE
--20181109 Chi ���׃r���[��Aggregate�Ή�_2����C START
LEFT OUTER JOIN
  (
	SELECT
	  CODE_ID,
	  CODE_VALUE,
	  CODE_NAME
	FROM
	  [BI_DW].[dbo].[R_SFM_BCCT_BAMBOO_CODE_MST]
	WHERE
	  CODE_ID = 'C030'
  ) T24
ON
  S.CRM_STAGETYPE = T24.CODE_VALUE
--20181109 Chi ���׃r���[��Aggregate�Ή�_2����C END
WHERE CURRENCY_TYPE = 'Input Currency'
)

SELECT
 AGG_DIM.CRM_DINSALESORDERPARTNO
,AGG_DIM.CRM_DINPARTNONAME
,AGG_DIM.CRM_ACTUALAWARDDATE
,AGG_DIM.CRM_ACTUALNOMINATIONDATE
,AGG_DIM.CRM_COMMENT
,AGG_DIM.CRM_ALLUSER_COMMENTBY
,AGG_DIM.CRM_ALLUSER_COMMENTDATE
,AGG_DIM.CRM_APPROVALDATE
,AGG_DIM.CRM_APPROVELREQUESTDATE
,AGG_DIM.CRM_APPROVER_DSNO
,AGG_DIM.CRM_AVERAGEPRICE
,AGG_DIM.CRM_AWARDAPPROVEDDATE
,AGG_DIM.CRM_AWARDAPPROVER
,AGG_DIM.CRM_AWARDCONFIDENCELEVEL
,AGG_DIM.CRM_AWARDCONFIDENCELEVEL_CODE
,AGG_DIM.CRM_AWARDCONFIDENCELEVEL_TXT
,AGG_DIM.CRM_LATESTAWARDDATE
,AGG_DIM.CRM_AWARDREQUESTDATE
,AGG_DIM.CRM_AWARDREQUESTER
,AGG_DIM.CRM_CANRENESASMEETTHESCHEDULE
,AGG_DIM.CRM_CANRENESASMEETTHESCHEDULE_TXT
,AGG_DIM.CREATED_BY_DSNO
,AGG_DIM.CREATEDDATE
,AGG_DIM.CURRENCYISOCODE
,AGG_DIM.CRM_DATESINPAST
,AGG_DIM.CRM_AWARDSALESCOMPANY
,AGG_DIM.CRM_DAYSTOMP
,AGG_DIM.CRM_STATUSUPDATEDATE
,AGG_DIM.CRM_CLOSEREASON
,AGG_DIM.CRM_CLOSEREASON_TXT
,AGG_DIM.CRM_DINACTUALDATE
,AGG_DIM.CRM_DINACTUALNEWDATE
,AGG_DIM.CRM_DINAPPROVEDDATE
,AGG_DIM.CRM_DINAPPROVER
,AGG_DIM.CRM_DINCONFIDENCE
,AGG_DIM.CRM_DINCONFIDENCE_CODE
,AGG_DIM.CRM_DINCONFIDENCE_TXT
,AGG_DIM.CRM_DINDATE
,AGG_DIM.CRM_DINREQUESTDATE
,AGG_DIM.CRM_DINREQUESTER
,AGG_DIM.CRM_DINTARGETDATE
,AGG_DIM.CRM_DRREQUESTEDPARTNOSTATUS
,AGG_DIM.CRM_DOESRENESASFITREQUIREMENT
,AGG_DIM.CRM_DOESRENESASFITREQUIREMENT_TXT
,AGG_DIM.CRM_DRAPPROVEDNOTE
,AGG_DIM.CRM_DRAPPROVEDDATE
,AGG_DIM.CRM_DRREQUESTEDAPPROVER_DSNO
,AGG_DIM.CRM_DRAPPROVER_DSNO
,AGG_DIM.CRM_DRAPPROVEDPARTNOSTATUS
,AGG_DIM.CRM_DREXPIRATIONDATE
,AGG_DIM.CRM_DRAPPROVEDPARTNO
,AGG_DIM.CRM_DRREQUESTEDDATE
,AGG_DIM.CRM_DRREQUESTEDPARTNO
,AGG_DIM.CRM_DR_REQUESTOR_DSNO
,AGG_DIM.CRM_DRSTATUS
,AGG_DIM.CRM_DURATIONINCURRENTSTAGE
,AGG_DIM.CRM_EXCLUDEDISTI_COMMENT
,AGG_DIM.CRM_EXCLUDEDISTI_COMMENTBY
,AGG_DIM.CRM_EXCLUDEDISTI_COMMENTDATE
,AGG_DIM.CRM_FORECASTTYPE
,AGG_DIM.CRM_FORECASTTYPE_TXT
,AGG_DIM.CRM_FULFILLMENTREGION
,AGG_DIM.CRM_FULFILLMENTREGION_TXT
,AGG_DIM.CRM_FULFILLSCMCUSTOMERCODE
,AGG_DIM.CRM_HASAPRICEBEENSUBMITTED
,AGG_DIM.CRM_HASAPRICEBEENSUBMITTED_TXT
,AGG_DIM.CRM_HASSAMPLEBEENDELIVERED
,AGG_DIM.CRM_HASSAMPLEBEENDELIVERED_TXT
,AGG_DIM.CRM_RENESASNEWPRODUCT
,AGG_DIM.LASTMODIFIED_BY_DSNO
,AGG_DIM.LASTMODIFIEDDATE
,AGG_DIM.CRM_LASTSTAGEMODIFIEDDATE
,AGG_DIM.CRM_ORIGINALLASTMODBY_DSNO
,AGG_DIM.CRM_ORIGINALLASTMODIFIEDDATE
,AGG_DIM.CRM_LATEST_COMMENT
,AGG_DIM.CRM_LATEST_COMMENTBY
,AGG_DIM.CRM_LATEST_COMMENTDATE
,AGG_DIM.CRM_COMMENT_FOR_MARKETPRICEBU
,AGG_DIM.CRM_MARKETPRICEBU_COMMENTBY
,AGG_DIM.CRM_MARKETPRICEBU_COMMENTDATE
,AGG_DIM.CRM_PARENTTYPE
,AGG_DIM.CRM_MPEND
,AGG_DIM.CRM_MPSTART
,AGG_DIM.CRM_MPSTARTOFREMAINING
,AGG_DIM.CRM_NICKNAMETEMPORARYPARTNO
,AGG_DIM.CRM_NOMINATIONAPPROVEDDATE
,AGG_DIM.CRM_NOMINATIONAPPROVER
,AGG_DIM.CRM_NOMINATIONCONFIDENCELEVEL
,AGG_DIM.CRM_NOMINATIONCONFIDENCELEVEL_CODE
,AGG_DIM.CRM_NOMINATIONCONFIDENCELEVEL_TXT
,AGG_DIM.CRM_LATESTNOMINATIONDATE
,AGG_DIM.CRM_NOMINATIONREQUESTDATE
,AGG_DIM.CRM_NOMINATIONREQUESTER
,AGG_DIM.CRM_NETBILLINGFLG
,AGG_DIM.CRM_OPPORTUNITYDISCERNMENT
,AGG_DIM.OPPORTUNITY_DISCERNMENT_TXT
,AGG_DIM.OPPORTUNITY_NAME
,AGG_DIM.CRM_SALESORDERPARTNO
,AGG_DIM.CRM_PPAP
,AGG_DIM.CRM_PRODUCTFAMILY
,AGG_DIM.CRM_PROGRESS
,AGG_DIM.CRM_PROGRESSCOLOR
,AGG_DIM.CRM_PROGRESSFROM
,AGG_DIM.CRM_PROGRESSTO
,AGG_DIM.CRM_PROJECTNAME
,AGG_DIM.CRM_PROMOTIONSAMPLE
,AGG_DIM.CRM_PROMOTIONSAMPLE_TXT
,AGG_DIM.CRM_AGGREGATEID
,AGG_DIM.CRM_COMMENT_FOR_RENESASONLY
,AGG_DIM.CRM_RENESASONLY_COMMENTBY
,AGG_DIM.CRM_RENESASONLY_COMMENTDATE
,AGG_DIM.CRM_S0ACTUALDATE
,AGG_DIM.CRM_S1ACTUALDATE
,AGG_DIM.CRM_S2ACTUALDATE
,AGG_DIM.CRM_S3ACTUALDATE
,AGG_DIM.CRM_S4ACTUALDATE
,AGG_DIM.CRM_SCHEDULE
,AGG_DIM.CRM_SCHEDULE_TXT
,AGG_DIM.CRM_SHARE
,AGG_DIM.CRM_STAGE
,AGG_DIM.CRM_STAGECODE
,AGG_DIM.CRM_STAGEDETAIL
,AGG_DIM.CRM_STAGETYPE
--20181109 Chi ���׃r���[��Aggregate�Ή�_2����C START
,AGG_DIM.CRM_STAGETYPE_TXT
--20181109 Chi ���׃r���[��Aggregate�Ή�_2����C END
,AGG_DIM.CRM_STARTMONTHOFCUSTOMERFY
,AGG_DIM.CRM_STARTMONTHOFCUSTOMERFY_TXT
,AGG_DIM.CRM_STATUS
,AGG_DIM.CRM_TARGETAWARDDATE
,AGG_DIM.CRM_TARGETNOMINATIONDATE
,AGG_DIM.CRM_TARGETPRICE
,AGG_DIM.CRM_TARGETPRICE_TXT
,AGG_DIM.CRM_TECHNICAL
,AGG_DIM.CRM_TECHNICAL_TXT
,AGGREGATE_L.CRM_UNIQUEOPPORTUNITY_SEQ
,AGG_DIM.CRM_USERLASTMODIFIEDDATE
,AGG_DIM.CRM_COMMENTCHECK_THISMONTH
,AGG_DIM.CRM_COMMENTCHECK_WITHIN3MONTHS
FROM (SELECT DISTINCT ISNULL(CRM_UNIQUEOPPORTUNITY_SEQ,OPPORTUNITY_SEQ) AS CRM_UNIQUEOPPORTUNITY_SEQ 
      FROM [BI_DM].[dbo].[F_SFM_OPP_PRD_DEMAND_AGGREGATE_L] ) AGGREGATE_L
LEFT OUTER JOIN AGG_DIM
ON AGGREGATE_L.CRM_UNIQUEOPPORTUNITY_SEQ = AGG_DIM.CRM_UNIQUEOPPORTUNITY_SEQ





GO