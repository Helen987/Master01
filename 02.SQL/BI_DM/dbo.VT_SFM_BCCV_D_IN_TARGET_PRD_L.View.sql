USE [BI_DM]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[VT_SFM_BCCV_D_IN_TARGET_PRD_L] AS
SELECT
   TARGET_L.OPPORTUNITY_SEQ
  ,LEFT(TARGET_L.OPPORTUNITY_SEQ,7) AS OPPORTUNITY_NO
  ,TARGET_L.D_IN_TARGET_YEAR
  ,TARGET_L.D_IN_INPUT_YEAR
  ,TARGET_L.CURRENCY_ISO_CODE
  ,TARGET_L.CURRENCY_TYPE
  ,TARGET_L.SCM_CUSTOMER_CODE
  ,TARGET_L.SALES_ORDER_PN_FOR_MTF
  ,TARGET_L.APPLICATION1_CODE
  ,TARGET_L.APPLICATION2_CODE 
  ,TARGET_L.APPLICATION3_CODE
--CDC 20180522 Latest�L���[�u�ւ�Aggregate��BI_ExecutionLog�Ή� Start
--  ,CONVERT(DATE,NULL) AS UPDATE_DATE
  ,T_CTRL.DEEMED_DATE   AS UPDATE_DATE
--CDC 20180522 Latest�L���[�u�ւ�Aggregate��BI_ExecutionLog�Ή� End
  ,'Latest' AS DISP_UPDATE_DATE
  ,TARGET_L.D_IN_TARGET_ORIGINAL
  ,TARGET_L.D_IN_TARGET_STRETCH
  ,TARGET_L.D_IN_TARGET
FROM
  [BI_DM].[dbo].[F_SFM_D_IN_TARGET_L] TARGET_L
--CDC 20180522 Latest�L���[�u�ւ�Aggregate��BI_ExecutionLog�Ή� Start
LEFT JOIN
  [BI_DW].[dbo].[Z_SSIS_CTRL] T_CTRL
ON  T_CTRL.[SSIS_PACKAGE] = N'Bamboo_D_IN_TARGET_PRD'
AND T_CTRL.[JOB_TYPE]   = '1'
AND T_CTRL.[DS_TB_NAME] = '0'
--CDC 20180522 Latest�L���[�u�ւ�Aggregate��BI_ExecutionLog�Ή� End

GO