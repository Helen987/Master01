USE [BI_DM]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO






CREATE view [DCP].[V_MST_BOOK_PN]
AS

SELECT 
 BOOKING_PN
, ISNULL(BOOKING_PN_CD, '$Unknown$') AS BOOKING_PN_CD
, PRODUCT_PLAN_PN
, RENESAS_PN
, CAT1
, CAT1_TXT
, CAT2
, CAT2_TXT
, CAT3
, CAT3_TXT
, CAT4
, CAT4_TXT
, CAT5
, CAT5_TXT
, DESIGN_GROUP_BUSINESS
, DESIGN_GROUP_BUSINESS_TXT
, DESIGN_GROUP_UNIT
, DESIGN_GROUP_UNIT_TXT
, DESIGN_GROUP_DIVISION
, DESIGN_GROUP_DIVISION_TXT
, DESIGN_GROUP_DEPARTMENT
, DESIGN_GROUP_DEPARTMENT_TXT
, DESIGN_GROUP_SECTION
, DESIGN_GROUP_SECTION_TXT
, EISUI_BUSINESS
, EISUI_BUSINESS_TXT
, EISUI_UNIT
, EISUI_UNIT_TXT
, EISUI_DIVITION
, EISUI_DIVITION_TXT
, EISUI_DEPARTMENT
, EISUI_DEPARTMENT_TXT
, EISUI_SECTION
, EISUI_SECTION_TXT
, EISUI_DS_NO
, EISUI_FIRST_NAME
, EISUI_FAMILY_NAME
, POSITION_TXT
, POSITION_E_TXT
, E_MAIL
, PHONE_NO
, SEIKAN_GROUP_BUSINESS
, SEIKAN_GROUP_BUSINESS_TXT
, SEIKAN_GROUP_UNIT
, SEIKAN_GROUP_UNIT_TXT
, SEIKAN_GROUP_DIVISION
, SEIKAN_GROUP_DIVISION_TXT
, SEIKAN_GROUP_DEPT
, SEIKAN_GROUP_DEPT_TXT
, SEIKAN_GROUP_SECTION
, SEIKAN_GROUP_SECTION_TXT
, PN_TYPE
, PN_TYPE2
, SCM_CUSTOM_TYPE
, ORDER_PRODUCT_STATUS
, ORDER_PRODUCT_STATUS_TXT
, RENESAS_PRODUCT_FLAG
, RENESAS_PRODUCT_FLAG_TXT
, OMC_FLAG
, AUTOMATIC_ORDERING_FLAG
, BASE_PN_FLAG
, ROM_TYPE
, ROM_TYPE_TXT
, BOOKING_STATUS
, SCM_FLAG
, SCM_FLAG_TXT
, ORDER_LINK_TYPE
, INNER_BOX_QUANTITY
, OUTER_BOX_QUANTITY
, TUBE_OR_TRAY_QUANTITY
, TAPING_SPEC
, FULL_CARTON_SPEC
, MOQ
, SPQ
, TS_FLAG
, TS_FLAG_TXT
, PB_FREE_DIV
, PROCESS_CD
, PACKAGE_CODE
, STORAGE_PERIOD_BOOKING_PN
, TOTAL_WEIGHT
, SALES_ORDER_20_PART_NO
, ORIGINAL_PN
, PART_NO_FROM_DIV_TXT
, ORDER_PART_NO_CD
, SPEC_JUDGE_FLG
, SO_PT_NO_K_A4_W
, PN_MEMO
, CLASS_FLAG
, BOOKING_CLASS1
, BOOKING_CLASS2
, BOOKING_CLASS3
, WAREHOUSE_TYPE
, WAREHOUSE_TYPE_TXT
, WBS_NO_BOOKING_PN
, EXPORT_JUDGE_PN_BOOKING_PN
, CATALOG_PN
, CATALOG_FLAG_BOOKING_PN
, PRICE_PN
, BASE_PRICE_PART_NO
, PRODUCT_STATUS_RENESAS_PN
, DEVELOP_NO
, EXPORT_JUDGE_PN_RENESAS_PN
, CATALOG_PN_RENESAS_PN
, CATALOG_FLAG_RENESAS_PN
, SPEED
, VOLTAGE
, TEMPERATURE_RANGE
, MAX_TEMPERATURE
, MIN_TEMPERATURE
, GENERATION
, BIT_COMPOSITION
, WORD
, PRODUCT_CAPACITY
, HARDWARE_IP_USE
, SOFTWARE_IP_USE
, FRAME_2_4_DIV
, MP_DATE
, [1ST_SHIP_DATE]
, EOL_AFFECT_POLICY
, EOL_POLICY
, EOL_CURRENT_WP_WT
, EOL_POLICY_TYPE
, EOL_SITECHANGE_ASSY
, EOL_WPWT_DETAIL
, EOL_WPWT_FUTURE
, EOL_X1FREE_ITEM
, EOL_X2FREE_ITEM
, EOL_X3FREE_ITEM
, MCU_SOC_AP_KBN
, CAST(ISNULL(REPLACE(COST_CENTER_CD, '-', '$Unknown$'), '$Unknown$') AS nvarchar(300)) AS COST_CENTER_CD
, COST_CENTER_TXT
, DEVELOPMENT_YEAR_HARF
, PRODUCT_FAMILY_CD
, PRODUCT_FAMILY
, PRODUCT_GROUP_CD
, PRODUCT_GROUP
, CANCEL_FLG
, INS_DATE_RENESAS_PN
, INS_TIME_RENESAS_PN
, INS_DATE_BOOKING_PN
, INS_TIME_BOOKING_PN
, UPD_DATE
, UPD_TIME
, ISNULL(DESIGN_GROUP_BUSINESS + DESIGN_GROUP_UNIT + DESIGN_GROUP_DIVISION, '$Unknown$') AS DIVISION_CD
FROM [dbo].[M_PNO_BOOK_PN]
--FROM DCP.M_PNO_BOOK_PN_20160404
--QVWダミー用
UNION ALL

SELECT
CAST('$QVW$' AS NVARCHAR(40)) AS BOOKING_PN
, CAST('$QVW$' AS NVARCHAR(18)) AS BOOKING_PN_CD
, NULL AS PRODUCT_PLAN_PN
, NULL AS RENESAS_PN
, NULL AS CAT1
, NULL AS CAT1_TXT
, NULL AS CAT2
, NULL AS CAT2_TXT
, NULL AS CAT3
, NULL AS CAT3_TXT
, NULL AS CAT4
, NULL AS CAT4_TXT
, NULL AS CAT5
, NULL AS CAT5_TXT
, NULL AS DESIGN_GROUP_BUSINESS
, NULL AS DESIGN_GROUP_BUSINESS_TXT
, '_QVW' AS DESIGN_GROUP_UNIT
, 'QVW表示用' AS DESIGN_GROUP_UNIT_TXT
, '_QVW' AS DESIGN_GROUP_DIVISION
, 'QVW表示用' AS DESIGN_GROUP_DIVISION_TXT
, NULL AS DESIGN_GROUP_DEPARTMENT
, NULL AS DESIGN_GROUP_DEPARTMENT_TXT
, NULL AS DESIGN_GROUP_SECTION
, NULL AS DESIGN_GROUP_SECTION_TXT
, NULL AS EISUI_BUSINESS
, NULL AS EISUI_BUSINESS_TXT
, NULL AS EISUI_UNIT
, NULL AS EISUI_UNIT_TXT
, NULL AS EISUI_DIVITION
, NULL AS EISUI_DIVITION_TXT
, NULL AS EISUI_DEPARTMENT
, NULL AS EISUI_DEPARTMENT_TXT
, NULL AS EISUI_SECTION
, NULL AS EISUI_SECTION_TXT
, NULL AS EISUI_DS_NO
, NULL AS EISUI_FIRST_NAME
, NULL AS EISUI_FAMILY_NAME
, NULL AS POSITION_TXT
, NULL AS POSITION_E_TXT
, NULL AS E_MAIL
, NULL AS PHONE_NO
, NULL AS SEIKAN_GROUP_BUSINESS
, NULL AS SEIKAN_GROUP_BUSINESS_TXT
, NULL AS SEIKAN_GROUP_UNIT
, NULL AS SEIKAN_GROUP_UNIT_TXT
, NULL AS SEIKAN_GROUP_DIVISION
, NULL AS SEIKAN_GROUP_DIVISION_TXT
, NULL AS SEIKAN_GROUP_DEPT
, NULL AS SEIKAN_GROUP_DEPT_TXT
, NULL AS SEIKAN_GROUP_SECTION
, NULL AS SEIKAN_GROUP_SECTION_TXT
, NULL AS PN_TYPE
, NULL AS PN_TYPE2
, NULL AS SCM_CUSTOM_TYPE
, NULL AS ORDER_PRODUCT_STATUS
, NULL AS ORDER_PRODUCT_STATUS_TXT
, NULL AS RENESAS_PRODUCT_FLAG
, NULL AS RENESAS_PRODUCT_FLAG_TXT
, NULL AS OMC_FLAG
, NULL AS AUTOMATIC_ORDERING_FLAG
, NULL AS BASE_PN_FLAG
, NULL AS ROM_TYPE
, NULL AS ROM_TYPE_TXT
, NULL AS BOOKING_STATUS
, NULL AS SCM_FLAG
, NULL AS SCM_FLAG_TXT
, NULL AS ORDER_LINK_TYPE
, NULL AS INNER_BOX_QUANTITY
, NULL AS OUTER_BOX_QUANTITY
, NULL AS TUBE_OR_TRAY_QUANTITY
, NULL AS TAPING_SPEC
, NULL AS FULL_CARTON_SPEC
, NULL AS MOQ
, NULL AS SPQ
, NULL AS TS_FLAG
, NULL AS TS_FLAG_TXT
, NULL AS PB_FREE_DIV
, NULL AS PROCESS_CD
, NULL AS PACKAGE_CODE
, NULL AS STORAGE_PERIOD_BOOKING_PN
, NULL AS TOTAL_WEIGHT
, NULL AS SALES_ORDER_20_PART_NO
, NULL AS ORIGINAL_PN
, NULL AS PART_NO_FROM_DIV_TXT
, NULL AS ORDER_PART_NO_CD
, NULL AS SPEC_JUDGE_FLG
, NULL AS SO_PT_NO_K_A4_W
, NULL AS PN_MEMO
, NULL AS CLASS_FLAG
, NULL AS BOOKING_CLASS1
, NULL AS BOOKING_CLASS2
, NULL AS BOOKING_CLASS3
, NULL AS WAREHOUSE_TYPE
, NULL AS WAREHOUSE_TYPE_TXT
, NULL AS WBS_NO_BOOKING_PN
, NULL AS EXPORT_JUDGE_PN_BOOKING_PN
, NULL AS CATALOG_PN
, NULL AS CATALOG_FLAG_BOOKING_PN
, NULL AS PRICE_PN
, NULL AS BASE_PRICE_PART_NO
, NULL AS PRODUCT_STATUS_RENESAS_PN
, NULL AS DEVELOP_NO
, NULL AS EXPORT_JUDGE_PN_RENESAS_PN
, NULL AS CATALOG_PN_RENESAS_PN
, NULL AS CATALOG_FLAG_RENESAS_PN
, NULL AS SPEED
, NULL AS VOLTAGE
, NULL AS TEMPERATURE_RANGE
, NULL AS MAX_TEMPERATURE
, NULL AS MIN_TEMPERATURE
, NULL AS GENERATION
, NULL AS BIT_COMPOSITION
, NULL AS WORD
, NULL AS PRODUCT_CAPACITY
, NULL AS HARDWARE_IP_USE
, NULL AS SOFTWARE_IP_USE
, NULL AS FRAME_2_4_DIV
, NULL AS MP_DATE
, NULL AS [1ST_SHIP_DATE]
, NULL AS EOL_AFFECT_POLICY
, NULL AS EOL_POLICY
, NULL AS EOL_CURRENT_WP_WT
, NULL AS EOL_POLICY_TYPE
, NULL AS EOL_SITECHANGE_ASSY
, NULL AS EOL_WPWT_DETAIL
, NULL AS EOL_WPWT_FUTURE
, NULL AS EOL_X1FREE_ITEM
, NULL AS EOL_X2FREE_ITEM
, NULL AS EOL_X3FREE_ITEM
, NULL AS MCU_SOC_AP_KBN
, CAST('_QVW'  AS nvarchar(300))AS COST_CENTER_CD
, 'QVW表示用' AS COST_CENTER_TXT
, NULL AS DEVELOPMENT_YEAR_HARF
, NULL AS PRODUCT_FAMILY_CD
, NULL AS PRODUCT_FAMILY
, NULL AS PRODUCT_GROUP_CD
, NULL AS PRODUCT_GROUP
, NULL AS CANCEL_FLG
, NULL AS INS_DATE_RENESAS_PN
, NULL AS INS_TIME_RENESAS_PN
, NULL AS INS_DATE_BOOKING_PN
, NULL AS INS_TIME_BOOKING_PN
, NULL AS UPD_DATE
, NULL AS UPD_TIME
, NULL AS DIVISION_CD

--DCPダミー用
UNION ALL

SELECT
CAST('$DCP$' AS NVARCHAR(40)) AS BOOKING_PN
, CAST('$DCP$' AS NVARCHAR(18)) AS BOOKING_PN_CD
, NULL AS PRODUCT_PLAN_PN
, NULL AS RENESAS_PN
, NULL AS CAT1
, NULL AS CAT1_TXT
, NULL AS CAT2
, NULL AS CAT2_TXT
, NULL AS CAT3
, NULL AS CAT3_TXT
, NULL AS CAT4
, NULL AS CAT4_TXT
, NULL AS CAT5
, NULL AS CAT5_TXT
, NULL AS DESIGN_GROUP_BUSINESS
, NULL AS DESIGN_GROUP_BUSINESS_TXT
, '_DCP' AS DESIGN_GROUP_UNIT
, 'DCP 表示用' AS DESIGN_GROUP_UNIT_TXT
, '_DCP' AS DESIGN_GROUP_DIVISION
, 'DCP 表示用' AS DESIGN_GROUP_DIVISION_TXT
, NULL AS DESIGN_GROUP_DEPARTMENT
, NULL AS DESIGN_GROUP_DEPARTMENT_TXT
, NULL AS DESIGN_GROUP_SECTION
, NULL AS DESIGN_GROUP_SECTION_TXT
, NULL AS EISUI_BUSINESS
, NULL AS EISUI_BUSINESS_TXT
, NULL AS EISUI_UNIT
, NULL AS EISUI_UNIT_TXT
, NULL AS EISUI_DIVITION
, NULL AS EISUI_DIVITION_TXT
, NULL AS EISUI_DEPARTMENT
, NULL AS EISUI_DEPARTMENT_TXT
, NULL AS EISUI_SECTION
, NULL AS EISUI_SECTION_TXT
, NULL AS EISUI_DS_NO
, NULL AS EISUI_FIRST_NAME
, NULL AS EISUI_FAMILY_NAME
, NULL AS POSITION_TXT
, NULL AS POSITION_E_TXT
, NULL AS E_MAIL
, NULL AS PHONE_NO
, NULL AS SEIKAN_GROUP_BUSINESS
, NULL AS SEIKAN_GROUP_BUSINESS_TXT
, NULL AS SEIKAN_GROUP_UNIT
, NULL AS SEIKAN_GROUP_UNIT_TXT
, NULL AS SEIKAN_GROUP_DIVISION
, NULL AS SEIKAN_GROUP_DIVISION_TXT
, NULL AS SEIKAN_GROUP_DEPT
, NULL AS SEIKAN_GROUP_DEPT_TXT
, NULL AS SEIKAN_GROUP_SECTION
, NULL AS SEIKAN_GROUP_SECTION_TXT
, NULL AS PN_TYPE
, NULL AS PN_TYPE2
, NULL AS SCM_CUSTOM_TYPE
, NULL AS ORDER_PRODUCT_STATUS
, NULL AS ORDER_PRODUCT_STATUS_TXT
, NULL AS RENESAS_PRODUCT_FLAG
, NULL AS RENESAS_PRODUCT_FLAG_TXT
, NULL AS OMC_FLAG
, NULL AS AUTOMATIC_ORDERING_FLAG
, NULL AS BASE_PN_FLAG
, NULL AS ROM_TYPE
, NULL AS ROM_TYPE_TXT
, NULL AS BOOKING_STATUS
, NULL AS SCM_FLAG
, NULL AS SCM_FLAG_TXT
, NULL AS ORDER_LINK_TYPE
, NULL AS INNER_BOX_QUANTITY
, NULL AS OUTER_BOX_QUANTITY
, NULL AS TUBE_OR_TRAY_QUANTITY
, NULL AS TAPING_SPEC
, NULL AS FULL_CARTON_SPEC
, NULL AS MOQ
, NULL AS SPQ
, NULL AS TS_FLAG
, NULL AS TS_FLAG_TXT
, NULL AS PB_FREE_DIV
, NULL AS PROCESS_CD
, NULL AS PACKAGE_CODE
, NULL AS STORAGE_PERIOD_BOOKING_PN
, NULL AS TOTAL_WEIGHT
, NULL AS SALES_ORDER_20_PART_NO
, NULL AS ORIGINAL_PN
, NULL AS PART_NO_FROM_DIV_TXT
, NULL AS ORDER_PART_NO_CD
, NULL AS SPEC_JUDGE_FLG
, NULL AS SO_PT_NO_K_A4_W
, NULL AS PN_MEMO
, NULL AS CLASS_FLAG
, NULL AS BOOKING_CLASS1
, NULL AS BOOKING_CLASS2
, NULL AS BOOKING_CLASS3
, NULL AS WAREHOUSE_TYPE
, NULL AS WAREHOUSE_TYPE_TXT
, NULL AS WBS_NO_BOOKING_PN
, NULL AS EXPORT_JUDGE_PN_BOOKING_PN
, NULL AS CATALOG_PN
, NULL AS CATALOG_FLAG_BOOKING_PN
, NULL AS PRICE_PN
, NULL AS BASE_PRICE_PART_NO
, NULL AS PRODUCT_STATUS_RENESAS_PN
, NULL AS DEVELOP_NO
, NULL AS EXPORT_JUDGE_PN_RENESAS_PN
, NULL AS CATALOG_PN_RENESAS_PN
, NULL AS CATALOG_FLAG_RENESAS_PN
, NULL AS SPEED
, NULL AS VOLTAGE
, NULL AS TEMPERATURE_RANGE
, NULL AS MAX_TEMPERATURE
, NULL AS MIN_TEMPERATURE
, NULL AS GENERATION
, NULL AS BIT_COMPOSITION
, NULL AS WORD
, NULL AS PRODUCT_CAPACITY
, NULL AS HARDWARE_IP_USE
, NULL AS SOFTWARE_IP_USE
, NULL AS FRAME_2_4_DIV
, NULL AS MP_DATE
, NULL AS [1ST_SHIP_DATE]
, NULL AS EOL_AFFECT_POLICY
, NULL AS EOL_POLICY
, NULL AS EOL_CURRENT_WP_WT
, NULL AS EOL_POLICY_TYPE
, NULL AS EOL_SITECHANGE_ASSY
, NULL AS EOL_WPWT_DETAIL
, NULL AS EOL_WPWT_FUTURE
, NULL AS EOL_X1FREE_ITEM
, NULL AS EOL_X2FREE_ITEM
, NULL AS EOL_X3FREE_ITEM
, NULL AS MCU_SOC_AP_KBN
, CAST('_DCP' AS nvarchar(300)) AS COST_CENTER_CD
, 'DCP表示用' AS COST_CENTER_TXT
, NULL AS DEVELOPMENT_YEAR_HARF
, NULL AS PRODUCT_FAMILY_CD
, NULL AS PRODUCT_FAMILY
, NULL AS PRODUCT_GROUP_CD
, NULL AS PRODUCT_GROUP
, NULL AS CANCEL_FLG
, NULL AS INS_DATE_RENESAS_PN
, NULL AS INS_TIME_RENESAS_PN
, NULL AS INS_DATE_BOOKING_PN
, NULL AS INS_TIME_BOOKING_PN
, NULL AS UPD_DATE
, NULL AS UPD_TIME
, NULL AS DIVISION_CD







GO
