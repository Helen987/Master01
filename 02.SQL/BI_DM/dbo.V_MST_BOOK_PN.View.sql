USE [BI_DM]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE VIEW [dbo].[V_MST_BOOK_PN]
AS
SELECT [BOOKING_PN]
      ,[BOOKING_PN_CD]
      ,[PRODUCT_PLAN_PN]
      ,[RENESAS_PN]
      ,[CAT1]
      ,[CAT1_TXT]
      ,[CAT2]
      ,[CAT2_TXT]
      ,[CAT3]
      ,[CAT3_TXT]
      ,[CAT4]
      ,[CAT4_TXT]
      ,[CAT5]
      ,[CAT5_TXT]
      ,[DESIGN_GROUP_BUSINESS]
      ,[DESIGN_GROUP_BUSINESS_TXT]
      ,[DESIGN_GROUP_UNIT]
      ,[DESIGN_GROUP_UNIT_TXT]
      ,[DESIGN_GROUP_DIVISION]
      ,[DESIGN_GROUP_DIVISION_TXT]
      ,[DESIGN_GROUP_DEPARTMENT]
      ,[DESIGN_GROUP_DEPARTMENT_TXT]
      ,[DESIGN_GROUP_SECTION]
      ,[DESIGN_GROUP_SECTION_TXT]
      ,[EISUI_BUSINESS]
      ,[EISUI_BUSINESS_TXT]
      ,[EISUI_UNIT]
      ,[EISUI_UNIT_TXT]
      ,[EISUI_DIVITION]
      ,[EISUI_DIVITION_TXT]
      ,[EISUI_DEPARTMENT]
      ,[EISUI_DEPARTMENT_TXT]
      ,[EISUI_SECTION]
      ,[EISUI_SECTION_TXT]
      ,[EISUI_DS_NO]
      ,[EISUI_FIRST_NAME]
      ,[EISUI_FAMILY_NAME]
      ,[POSITION_TXT]
      ,[POSITION_E_TXT]
      ,[E_MAIL]
      ,[PHONE_NO]
      ,[SEIKAN_GROUP_BUSINESS]
      ,[SEIKAN_GROUP_BUSINESS_TXT]
      ,[SEIKAN_GROUP_UNIT]
      ,[SEIKAN_GROUP_UNIT_TXT]
      ,[SEIKAN_GROUP_DIVISION]
      ,[SEIKAN_GROUP_DIVISION_TXT]
      ,[SEIKAN_GROUP_DEPT]
      ,[SEIKAN_GROUP_DEPT_TXT]
      ,[SEIKAN_GROUP_SECTION]
      ,[SEIKAN_GROUP_SECTION_TXT]
      ,[PN_TYPE]
      ,[PN_TYPE2]
      ,[SCM_CUSTOM_TYPE]
      ,[ORDER_PRODUCT_STATUS]
      ,[ORDER_PRODUCT_STATUS_TXT]
      ,[RENESAS_PRODUCT_FLAG]
      ,[RENESAS_PRODUCT_FLAG_TXT]
      ,[OMC_FLAG]
      ,[AUTOMATIC_ORDERING_FLAG]
      ,[BASE_PN_FLAG]
      ,[ROM_TYPE]
      ,[ROM_TYPE_TXT]
      ,[BOOKING_STATUS]
      ,[SCM_FLAG]
      ,[SCM_FLAG_TXT]
      ,[ORDER_LINK_TYPE]
      ,[INNER_BOX_QUANTITY]
      ,[OUTER_BOX_QUANTITY]
      ,[TUBE_OR_TRAY_QUANTITY]
      ,[TAPING_SPEC]
      ,[FULL_CARTON_SPEC]
      ,[MOQ]
      ,[SPQ]
      ,[TS_FLAG]
      ,[TS_FLAG_TXT]
      ,[PB_FREE_DIV]
      ,[PROCESS_CD]
      ,[PACKAGE_CODE]
      ,[STORAGE_PERIOD_BOOKING_PN]
      ,[TOTAL_WEIGHT]
      ,[SALES_ORDER_20_PART_NO]
      ,[ORIGINAL_PN]
      ,[PART_NO_FROM_DIV]
      ,[PART_NO_FROM_DIV_TXT]
      ,[ORDER_PART_NO_CD]
      ,[SPEC_JUDGE_FLG]
      ,[SO_PT_NO_K_A4_W]
      ,[ANCESTRAL_PART_NO]
      ,[ANCESTRAL_PART_NO_CD]
      ,[PN_MEMO]
      ,[CLASS_FLAG]
      ,[BOOKING_CLASS1]
      ,[BOOKING_CLASS2]
      ,[BOOKING_CLASS3]
      ,[WAREHOUSE_TYPE]
      ,[WAREHOUSE_TYPE_TXT]
      ,[WBS_NO_BOOKING_PN]
      ,[EXPORT_JUDGE_PN_BOOKING_PN]
      ,[CATALOG_PN]
      ,[CATALOG_FLAG_BOOKING_PN]
      ,[PRICE_PN]
      ,[BASE_PRICE_PART_NO]
      ,[PRODUCT_STATUS_RENESAS_PN]
      ,[DEVELOP_NO]
      ,[EXPORT_JUDGE_PN_RENESAS_PN]
      ,[CATALOG_PN_RENESAS_PN]
      ,[CATALOG_FLAG_RENESAS_PN]
      ,[SPEED]
      ,[VOLTAGE]
      ,[TEMPERATURE_RANGE]
      ,[MAX_TEMPERATURE]
      ,[MIN_TEMPERATURE]
      ,[GENERATION]
      ,[BIT_COMPOSITION]
      ,[WORD]
      ,[PRODUCT_CAPACITY]
      ,[HARDWARE_IP_USE]
      ,[SOFTWARE_IP_USE]
      ,[FRAME_2_4_DIV]
      ,[MP_DATE]
      ,[1ST_SHIP_DATE]
      ,[EOL_AFFECT_POLICY]
      ,[EOL_POLICY]
      ,[EOL_CURRENT_WP_WT]
      ,[EOL_POLICY_TYPE]
      ,[EOL_SITECHANGE_ASSY]
      ,[EOL_WPWT_DETAIL]
      ,[EOL_WPWT_FUTURE]
      ,[EOL_X1FREE_ITEM]
      ,[EOL_X2FREE_ITEM]
      ,[EOL_X3FREE_ITEM]
      ,[MCU_SOC_AP_KBN]
      ,[COST_CENTER_CD]
      ,[COST_CENTER_TXT]
      ,[DEVELOPMENT_YEAR_HARF]
      ,[PRODUCT_FAMILY_CD]
      ,[PRODUCT_FAMILY]
      ,[PRODUCT_GROUP_CD]
      ,[PRODUCT_GROUP]
      ,[CANCEL_FLG]
      ,[INS_DATE_RENESAS_PN]
      ,[INS_TIME_RENESAS_PN]
      ,[INS_DATE_BOOKING_PN]
      ,[INS_TIME_BOOKING_PN]
      ,[UPD_DATE]
      ,[UPD_TIME]
      ,[PROCESS_NICK_NAME]
      ,[TAB_PROCESS_NAME]
      ,[TAB_PROCESS_FOCUS_FLG]
      ,[REPRESENT_PART_NO_OYA]
	  ,[MCU_TYPE]
FROM [dbo].[M_PNO_BOOK_PN]




GO
