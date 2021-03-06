USE [BI_DM]
GO
/****** Object:  View [dbo].[VT_SFM_OPP_PRD_COST_H]    Script Date: 2017/03/13 11:58:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[VT_SFM_OPP_PRD_COST_H] AS
SELECT
   OPPORTUNITY_SEQ
  ,OPPORTUNITY_NO
  ,D_IN_SCM_CUST_CODE_FOR_MTF
  ,D_IN_SCM_CUST_CODE_FOR_SCM_OPE
  ,B_WIN_SCM_CUSTOMER_CODE
  ,SALES_ORDER_PN_FOR_MTF
  ,SALES_ORDER_PN_FOR_SCM_OPE
  ,OPP_APPLICATION3_CODE
--LatestキューブへのAggregate対応 遅 20181001 START
  ,CONVERT(DATE,APPROVED_DATE) AS APPROVED_DATE
  ,APPROVED_DATE AS APPROVED_DATE_SALES
--LatestキューブへのAggregate対応 遅 20181001 END
  ,CURRENCY
  ,CURRENCY_TYPE 
  ,CALENDAR_YM
  ,AMOUNT
  ,UPDATE_DATE
  ,DISP_UPDATE_DATE
  ,TARGET_NOMINATION_DATE_D
  ,TARGET_AWARD_DATE_D
  ,OPP_APPLICATION1_CODE
  ,OPP_APPLICATION2_CODE
  ,MP_START_DATE
  ,GP_AMOUNT
FROM
  [BI_DM].[dbo].[F_SFM_OPP_PRD_DEMAND_H]
UNION ALL
SELECT
   OPPORTUNITY_SEQ
  ,OPPORTUNITY_NO
  ,D_IN_SCM_CUST_CODE_FOR_MTF
  ,D_IN_SCM_CUST_CODE_FOR_SCM_OPE
  ,B_WIN_SCM_CUSTOMER_CODE
  ,SALES_ORDER_PN_FOR_MTF
  ,SALES_ORDER_PN_FOR_SCM_OPE
  ,OPP_APPLICATION3_CODE
--LatestキューブへのAggregate対応 遅 20181001 START
  ,CONVERT(DATE,APPROVED_DATE) AS APPROVED_DATE
  ,APPROVED_DATE AS APPROVED_DATE_SALES
--LatestキューブへのAggregate対応 遅 20181001 END
  ,CURRENCY
  ,CURRENCY_TYPE 
  ,CASE WHEN MONTH(CALENDAR_YM) IN ('1','4','7','10')
      THEN CAST(CAST(YEAR(CALENDAR_YM) AS VARCHAR) +'0101' AS DATE)
   ELSE CALENDAR_YM END AS CALENDAR_YM
  ,SUM(AMOUNT) AS AMOUNT
  ,UPDATE_DATE
  ,DISP_UPDATE_DATE
  ,TARGET_NOMINATION_DATE_D
  ,TARGET_AWARD_DATE_D
  ,OPP_APPLICATION1_CODE
  ,OPP_APPLICATION2_CODE
  ,MP_START_DATE
  ,SUM(GP_AMOUNT) AS GP_AMOUNT
FROM
  [BI_DM].[dbo].[F_SFM_OPP_PRD_DEMAND_L]
GROUP BY
   OPPORTUNITY_SEQ
  ,OPPORTUNITY_NO
  ,D_IN_SCM_CUST_CODE_FOR_MTF
  ,D_IN_SCM_CUST_CODE_FOR_SCM_OPE
  ,B_WIN_SCM_CUSTOMER_CODE
  ,SALES_ORDER_PN_FOR_MTF
  ,SALES_ORDER_PN_FOR_SCM_OPE
  ,OPP_APPLICATION3_CODE
--LatestキューブへのAggregate対応 遅 20181001 START
  ,CONVERT(DATE,APPROVED_DATE)
  ,APPROVED_DATE
--LatestキューブへのAggregate対応 遅 20181001 END
  ,CURRENCY
  ,CURRENCY_TYPE 
  ,CASE WHEN MONTH(CALENDAR_YM) IN ('1','4','7','10')
      THEN CAST(CAST(YEAR(CALENDAR_YM) AS VARCHAR) +'0101' AS DATE)
   ELSE CALENDAR_YM END
  ,UPDATE_DATE
  ,DISP_UPDATE_DATE
  ,TARGET_NOMINATION_DATE_D
  ,TARGET_AWARD_DATE_D
  ,OPP_APPLICATION1_CODE
  ,OPP_APPLICATION2_CODE
  ,MP_START_DATE








GO
