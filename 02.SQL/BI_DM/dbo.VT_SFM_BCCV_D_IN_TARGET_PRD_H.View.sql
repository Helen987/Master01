USE [BI_DM]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[VT_SFM_BCCV_D_IN_TARGET_PRD_H] AS
SELECT
   TARGET_H.OPPORTUNITY_SEQ
  ,LEFT(TARGET_H.OPPORTUNITY_SEQ,7) AS OPPORTUNITY_NO
  ,TARGET_H.D_IN_TARGET_YEAR
  ,TARGET_H.D_IN_INPUT_YEAR
  ,TARGET_H.CURRENCY_ISO_CODE
  ,TARGET_H.CURRENCY_TYPE
  ,TARGET_H.SCM_CUSTOMER_CODE
  ,TARGET_H.SALES_ORDER_PN_FOR_MTF
  ,TARGET_H.APPLICATION1_CODE
  ,TARGET_H.APPLICATION2_CODE 
  ,TARGET_H.APPLICATION3_CODE
  ,TARGET_H.UPDATE_DATE
  ,REPLACE(CAST(TARGET_H.UPDATE_DATE AS CHAR(10)) ,'-', '') AS DISP_UPDATE_DATE
  ,TARGET_H.D_IN_TARGET_ORIGINAL
  ,TARGET_H.D_IN_TARGET_STRETCH
  ,TARGET_H.D_IN_TARGET
FROM
  [BI_DM].[dbo].[F_SFM_D_IN_TARGET_H] TARGET_H

GO