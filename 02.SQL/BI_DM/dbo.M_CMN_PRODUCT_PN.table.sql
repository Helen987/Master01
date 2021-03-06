USE [BI_DM]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[M_CMN_PRODUCT_PN](
	[PRODUCTION_PN] [nvarchar](40) NOT NULL,
	[PRODUCTION_PN_BODY] [nvarchar](30) NULL,
	[PRODUCTION_PN_INTERNAL_CODE] [nvarchar](10) NULL,
	[BOOKING_PN] [nvarchar](40) NULL,
	[BOOKING_PN_CD] [nvarchar](18) NULL,
	[RENESAS_PN] [nvarchar](30) NULL,
	[CAT1] [nvarchar](2) NULL,
	[CAT1_TXT] [nvarchar](40) NULL,
	[CAT2] [nvarchar](4) NULL,
	[CAT2_TXT] [nvarchar](40) NULL,
	[CAT3] [nvarchar](6) NULL,
	[CAT3_TXT] [nvarchar](40) NULL,
	[CAT4] [nvarchar](8) NULL,
	[CAT4_TXT] [nvarchar](40) NULL,
	[CAT5] [nvarchar](10) NULL,
	[CAT5_TXT] [nvarchar](40) NULL,
	[DESIGN_GROUP_BUSINESS] [nvarchar](2) NULL,
	[DESIGN_GROUP_BUSINESS_TXT] [nvarchar](40) NULL,
	[DESIGN_GROUP_UNIT] [nvarchar](4) NULL,
	[DESIGN_GROUP_UNIT_TXT] [nvarchar](40) NULL,
	[DESIGN_GROUP_DIVISION] [nvarchar](6) NULL,
	[DESIGN_GROUP_DIVISION_TXT] [nvarchar](40) NULL,
	[DESIGN_GROUP_DEPARTMENT] [nvarchar](8) NULL,
	[DESIGN_GROUP_DEPARTMENT_TXT] [nvarchar](40) NULL,
	[DESIGN_GROUP_SECTION] [nvarchar](10) NULL,
	[DESIGN_GROUP_SECTION_TXT] [nvarchar](40) NULL,
	[EISUI_BUSINESS] [nvarchar](2) NULL,
	[EISUI_BUSINESS_TXT] [nvarchar](40) NULL,
	[EISUI_UNIT] [nvarchar](4) NULL,
	[EISUI_UNIT_TXT] [nvarchar](40) NULL,
	[EISUI_DIVITION] [nvarchar](6) NULL,
	[EISUI_DIVITION_TXT] [nvarchar](40) NULL,
	[EISUI_DEPARTMENT] [nvarchar](8) NULL,
	[EISUI_DEPARTMENT_TXT] [nvarchar](40) NULL,
	[EISUI_SECTION] [nvarchar](10) NULL,
	[EISUI_SECTION_TXT] [nvarchar](40) NULL,
	[EISUI_DS_NO] [nvarchar](10) NULL,
	[EISUI_FIRST_NAME] [nvarchar](40) NULL,
	[EISUI_FAMILY_NAME] [nvarchar](40) NULL,
	[POSITION_TXT] [nvarchar](120) NULL,
	[POSITION_E_TXT] [nvarchar](120) NULL,
	[E_MAIL] [nvarchar](80) NULL,
	[PHONE_NO] [nvarchar](30) NULL,
	[SEIKAN_GROUP_BUSINESS] [nvarchar](2) NULL,
	[SEIKAN_GROUP_BUSINESS_TXT] [nvarchar](40) NULL,
	[SEIKAN_GROUP_UNIT] [nvarchar](4) NULL,
	[SEIKAN_GROUP_UNIT_TXT] [nvarchar](40) NULL,
	[SEIKAN_GROUP_DIVISION] [nvarchar](6) NULL,
	[SEIKAN_GROUP_DIVISION_TXT] [nvarchar](40) NULL,
	[SEIKAN_GROUP_DEPT] [nvarchar](8) NULL,
	[SEIKAN_GROUP_DEPT_TXT] [nvarchar](40) NULL,
	[SEIKAN_GROUP_SECTION] [nvarchar](10) NULL,
	[SEIKAN_GROUP_SECTION_TXT] [nvarchar](40) NULL,
	[PN_TYPE_PRODUCTION_PN] [nvarchar](100) NULL,
	[ORIGINAL_PN_TYPE_PRODUCTION_PN] [nvarchar](100) NULL,
	[RNESAS_PN_TYPE_PRODUCTION_PN] [nvarchar](100) NULL,
	[INPUT_FAB_WP] [nvarchar](40) NULL,
	[INPUT_WP_LOCATION] [nvarchar](2) NULL,
	[INPUT_FAB_WT] [nvarchar](40) NULL,
	[INPUT_FAB_DIC] [nvarchar](40) NULL,
	[INPUT_FAB_ASSY] [nvarchar](40) NULL,
	[INPUT_ASSY_LOCATION] [nvarchar](2) NULL,
	[INPUT_FAB_FT] [nvarchar](40) NULL,
	[INPUT_FT_LOCATION] [nvarchar](2) NULL,
	[INPUT_FAB_SHIP] [nvarchar](40) NULL,
	[INPUT_SHIP_LOCATION] [nvarchar](2) NULL,
	[INPUT_SPECIAL_PROCESS_1_CD] [nvarchar](3) NULL,
	[INPUT_SPECIAL_PROCESS_2_CD] [nvarchar](3) NULL,
	[APL_CD] [nvarchar](3) NULL,
	[HALF_FINISHED_TYPE] [nvarchar](100) NULL,
	[PRODUCT_TYPE_PRODUCTION_PN] [nvarchar](100) NULL,
	[ROM_NO] [nvarchar](5) NULL,
	[TS_FLAG_PRODUCTION_PN] [nvarchar](1) NULL,
	[TS_FLAG_TXT_PRODUCTION_PN] [nvarchar](100) NULL,
	[PB_FREE_PRODUCTION_PN] [nvarchar](100) NULL,
	[PACKING_SPEC] [nvarchar](100) NULL,
	[MASK_VER] [nvarchar](1) NULL,
	[SPECIFIED_CUSTOMER_DIV] [nvarchar](2) NULL,
	[PROCESS_NAME] [nvarchar](10) NULL,
	[RM_PACKAGE_NAME] [nvarchar](6) NULL,
	[RM_PACKAGE_CODE] [nvarchar](10) NULL,
	[RH_PACKAGE_CODE] [nvarchar](15) NULL,
	[EL_PACKAGE_CODE] [nvarchar](30) NULL,
	[RENESAS_PACKAGE_NAME] [nvarchar](10) NULL,
	[RENESAS_PACKAGE_FRAME_MARK] [nvarchar](1) NULL,
	[RENESAS_PACKAGE_CODE] [nvarchar](12) NULL,
	[FRONT_ED_PROCESS_COUNTRY] [nvarchar](15) NULL,
	[BACK_ED_PROCESS_1_COUNTRY] [nvarchar](15) NULL,
	[BACK_ED_PROCESS_2_COUNTRY] [nvarchar](15) NULL,
	[INSPECTION_COUNTRY] [nvarchar](15) NULL,
	[STORAGE_PERIOD_PRODUCTION_PN] [numeric](4, 0) NULL,
	[RH_WIP_PN] [nvarchar](16) NULL,
	[RM_WIP_PN] [nvarchar](20) NULL,
	[EL_WIP_PN] [nvarchar](50) NULL,
	[KEYA4] [nvarchar](30) NULL,
	[KEYA1] [nvarchar](18) NULL,
	[KEYA_S4] [nvarchar](40) NULL,
	[STORING_CLASS] [nvarchar](3) NULL,
	[STORING_CLASS_FLAG] [nvarchar](1) NULL,
	[STORING_CLASS_FLAG_TXT] [nvarchar](100) NULL,
	[SUB_WBS_NO] [nvarchar](10) NULL,
	[WBS_NO_PRODUCTION_PN] [nvarchar](10) NULL,
	[EXPORT_JUDGE_PN_PRODUCTION_PN] [nvarchar](30) NULL,
	[CATALOG_PN_PRODUCTION_PN] [nvarchar](30) NULL,
	[PRODUCT_STATUS_PRODUCTION_PN] [nvarchar](2) NULL,
	[PRODUCT_STATUS_PRODUCTION_PN_T] [nvarchar](100) NULL,
	[MASS_PRODUCTION_SHIFT_YM] [nvarchar](6) NULL,
	[END_OF_LIFE_YM] [nvarchar](6) NULL,
	[PART_NO_HOLD_SITE] [nvarchar](2) NULL,
	[OUTER_BOX_PART_NO] [nvarchar](10) NULL,
	[PRODUCT_PLAN_PN] [nvarchar](40) NULL,
	[SCM_CUSTOM_TYPE] [nvarchar](100) NULL,
	[PRODUCT_STATUS_BOOKING_PN] [nvarchar](2) NULL,
	[PRODUCT_STATUS_BOOKING_PN_T] [nvarchar](100) NULL,
	[RENESAS_PRODUCT_FLG] [nvarchar](1) NULL,
	[RENESAS_PRODUCT_FLAG_TXT] [nvarchar](100) NULL,
	[OMC_FLAG] [nvarchar](100) NULL,
	[AUTOMATIC_ORDERING_FLAG] [nvarchar](100) NULL,
	[BASE_PN_FLAG] [nvarchar](100) NULL,
	[ROM_TYPE] [nvarchar](1) NULL,
	[ROM_TYPE_TXT] [nvarchar](100) NULL,
	[BOOKING_STATUS] [nvarchar](100) NULL,
	[SCM_FLG] [nvarchar](1) NULL,
	[SCM_FLAG_TXT] [nvarchar](100) NULL,
	[ORDER_LINK_TYPE] [nvarchar](100) NULL,
	[INNER_BOX_QUANTITY] [numeric](13, 0) NULL,
	[OUTER_BOX_QUANTITY] [numeric](13, 0) NULL,
	[TUBE_OR_TRAY_QUANTITY] [numeric](13, 0) NULL,
	[TAPING_SPEC] [nvarchar](10) NULL,
	[FULL_CARTON_SPEC] [nvarchar](10) NULL,
	[MOQ] [numeric](10, 0) NULL,
	[SPQ] [numeric](10, 0) NULL,
	[TS_FLAG_BOOKING_PN] [nvarchar](2) NULL,
	[TS_FLAG_TXT_BOOKING_PN] [nvarchar](100) NULL,
	[PB_FREE_BOOKING_PN] [nvarchar](100) NULL,
	[PROCESS_CODE] [nvarchar](32) NULL,
	[PACKAGE_CODE] [nvarchar](18) NULL,
	[STORAGE_PERIOD_BOOKING_PN] [numeric](4, 0) NULL,
	[TOTAL_WEIGHT] [nvarchar](10) NULL,
	[CLASS_FLAG] [nvarchar](100) NULL,
	[WAREHOUSE_TYPE] [nvarchar](4) NULL,
	[WAREHOUSE_TYPE_TXT] [nvarchar](100) NULL,
	[WBS_NO_BOOKING_PN] [nvarchar](10) NULL,
	[EXPORT_JUDGE_PN_BOOKING_PN] [nvarchar](30) NULL,
	[CATALOG_PN_BOOKING_PN] [nvarchar](30) NULL,
	[CATALOG_FLAG_BOOKING_PN] [nvarchar](100) NULL,
	[PRICE_PN] [nvarchar](32) NULL,
	[EOL_AFFECT_POLICY] [nvarchar](300) NULL,
	[EOL_POLICY] [nvarchar](300) NULL,
	[EOL_CURRENT_WP_WT] [nvarchar](300) NULL,
	[EOL_POLICY_TYPE] [nvarchar](300) NULL,
	[EOL_SITECHANGE_ASSY] [nvarchar](300) NULL,
	[EOL_WPWT_DETAIL] [nvarchar](300) NULL,
	[EOL_WPWT_FUTURE] [nvarchar](300) NULL,
	[EOL_X1FREE_ITEM] [nvarchar](300) NULL,
	[EOL_X2FREE_ITEM] [nvarchar](300) NULL,
	[EOL_X3FREE_ITEM] [nvarchar](300) NULL,
	[MCU_SOC_AP_KBN] [nvarchar](300) NULL,
	[COST_CENTER_CD] [nvarchar](300) NULL,
	[COST_CENTER_TXT] [nvarchar](300) NULL,
	[DEVELOPMENT_YEAR_HARF] [nvarchar](300) NULL,
	[PRODUCT_FAMILY_CD] [nvarchar](300) NULL,
	[PRODUCT_FAMILY] [nvarchar](300) NULL,
	[PRODUCT_GROUP_CD] [nvarchar](300) NULL,
	[PRODUCT_GROUP] [nvarchar](300) NULL,
	[PRODUCT_STATUS_RENESAS_PN] [nvarchar](100) NULL,
	[DEVELOP_NO] [nvarchar](7) NULL,
	[EXPORT_JUDGE_PN_RENESAS_PN] [nvarchar](30) NULL,
	[CATALOG_PN_RENESAS_PN] [nvarchar](30) NULL,
	[CATALOG_FLAG_RENESAS_PN] [nvarchar](100) NULL,
	[SPEED] [numeric](5, 0) NULL,
	[VOLTAGE] [numeric](7, 2) NULL,
	[TEMPERATURE_RANGE] [nvarchar](1) NULL,
	[MAX_TEMPERATURE] [numeric](7, 0) NULL,
	[MIN_TEMPERATURE] [numeric](7, 0) NULL,
	[GENERATION] [nvarchar](1) NULL,
	[BIT_COMPOSITION] [nvarchar](5) NULL,
	[WORD] [nvarchar](12) NULL,
	[PRODUCT_CAPACITY] [nvarchar](12) NULL,
	[HARDWARE_IP_USE] [nvarchar](1) NULL,
	[SOFTWARE_IP_USE] [nvarchar](1) NULL,
	[FRAME_2_4_DIV] [nvarchar](1) NULL,
	[INS_DATE_RENESAS_PN] [nvarchar](8) NULL,
	[INS_TIME_RENESAS_PN] [nvarchar](6) NULL,
	[INS_DATE_BOOKING_PN] [nvarchar](8) NULL,
	[INS_TIME_BOOKING_PN] [nvarchar](6) NULL,
	[INS_DATE_PRODUCTION_PN] [nvarchar](8) NULL,
	[INS_TIME_PRODUCTION_PN] [nvarchar](6) NULL,
	[UPD_DATE] [nvarchar](8) NULL,
	[UPD_TIME] [nvarchar](6) NULL,
	[CANCEL_FLG] [nvarchar](1) NULL,
 CONSTRAINT [PK_M_CMN_PRODUCT_PN] PRIMARY KEY CLUSTERED 
(
	[PRODUCTION_PN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, DATA_COMPRESSION = PAGE) ON [BI_DM_Dimension]
) ON [BI_DM_Dimension]

GO
