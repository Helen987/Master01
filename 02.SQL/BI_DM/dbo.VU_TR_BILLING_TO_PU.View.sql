USE [BI_DM]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--2018/07/19 Upd H.Hailun <S>
--CREATE VIEW [dbo].[VU_TR_BILLING_TO_PU] AS SELECT * FROM [DM_SALES].dbo.VUSR_T_TO_BILL_LATESTMASTER;
CREATE VIEW [dbo].[VU_TR_BILLING_TO_PU] AS SELECT [PLANT]
      ,[REGISTRATION_MONTH]
      ,[REGISTRATION_DATE]
      ,[REGISTRATION_MONTH_END]
      ,[BILLING_DOCUMENT_NO]
      ,[BILLDOCITEM_NO]
      ,[SALES_ORDER_NO]
      ,[SHIPPING_DOCUMENT_NO]
      ,[DELIVERY_DOCUMENT_NO_NULL]
      ,[DELIVERY_DOCUMENT_LINE_NO]
      ,[CUSTOMER_PO_NO]
      ,[CO_NO]
      ,[SPRIT_DELIVERY_NO]
      ,[BILLING_TYPE]
      ,[BILLING_TYPE_TXT]
      ,[BUSINESS_SITE]
      ,[RECEIPT_UNIT]
      ,[RECEIPT_DIVISION]
      ,[RECEIPT_DEPT]
      ,[RECEIPT_SECTION]
      ,[REL_SALES_UNIT]
      ,[REL_SALES_DIVISION]
      ,[REL_SALES_DEPARTMENT]
      ,[REL_SALES_SECTION]
      ,[RECEIPT_AGENT]
      ,[PAYMENT_TERMS]
      ,[IMPORTING_COUNTRY_NAME_TXT]
      ,[R1_AREA_NAME_TXT]
      ,[R2_AREA_NAME_TXT]
      ,[R3_AREA_NAME_TXT]
      ,[SHIP_TO_COUNTRY_TXT]
      ,[SOLD_TO]
      ,[SOLD_TO_TXT]
      ,[SHIP_TO]
      ,[SHIP_TO_TXT]
      ,[BILL_TO]
      ,[BILL_TO_TXT]
      ,[SCM_CUSTOMER]
      ,[SCM_CUSTOMER_TXT_S]
      ,[VERIFICATION_KEY]
      ,[BOOKING_DATE]
      ,[RENESAS_PN]
      ,[BOOKING_PN]
      ,[BOOKING_PN_WHITE40]
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
      ,[BILL_QTY]
      ,[SALES_UNIT]
      ,[BILL_UNIT_PRICE]
      ,[CURRENCY]
      ,[TO_BILL_AMT]
      ,[TO_BILL_AMT_JPY]
      ,[TO_BILL_AMT_USD]
      ,[TO_BILL_AMT_EUR]
      ,[TO_BILL_AMT_RATE]
      ,[STDCST]
      ,[TO_BILL_STDCST_AMT_JPY]
      ,[TO_BILL_STDCST_AMT_USD]
      ,[TO_BILL_STDCST_AMT_EUR]
      ,[TO_BILL_AMT_TTM]
      ,[TO_BILL_AMT_TP1]
      ,[TO_BILL_AMT_TP2]
      ,[TO_BILL_AMT_STD_USER]
      ,[TO_BILL_AMT_SRP]
      ,[TO Billing ANP Amt]
      ,[TO Billing ANP JPY Amt]
      ,[TO Billing ANP USD Amt]
      ,[TO Billing ANP EUR Amt]
      ,[TO Billing ANP TTM Amt]
      ,[WBS_ELEMENT]
      ,[SOURCE_SYSTEM_DOC_TYPE]
      ,[DOC_Type_Category1]
      ,[DOC_Type_Category1_txt]
      ,[DOC_Type_Category2]
      ,[DOC_Type_Category2_txt]
      ,[REQUEST_DATE]
      ,[RECORD_REGISTRATION_DATE]
      ,[RECORD_REGISTRATION_TIME]
      ,[TO_SHIP_DATE]
      ,[DESIGN_GRP_UNIT]
      ,[DESIGN_GRP_UNIT_TXT]
      ,[DESIGN_GRP_DIVISION]
      ,[DESIGN_GRP_DIVISION_TXT]
      ,[BF_CHANNEL]
      ,[CUSTOMER_GRP1]
      ,[CUSTOMER_GRP2]
      ,[NIKKEI_WW_FLG]
      ,[SALES_PLANNING_GRP]
      ,[EOL_AFFECT_POLICY]
      ,[EOL_CURRENT_WP_WT]
      ,[EOL_POLICY]
      ,[EOL_POLICY_TYPE]
      ,[EOL_SITECHANGE_ASSY]
      ,[EOL_WPWT_DETAIL]
      ,[EOL_WPWT_FUTURE]
      ,[DEVELOPMENT_YEAR_HALF]
      ,[GST_1_AFFECT]
      ,[GST_2]
      ,[GST_3]
      ,[REVENUE_RECOGNITION_BU_UNIT_TXT]
      ,[REVENUE_RECOGNITION_BU_DIVISION_TXT]
      ,[REVENUE_RECOGNITION_BU_DEPARTMENT_TXT]
      ,[REVENUE_RECOGNITION_BU_SECTION_TXT]
      ,[SEGMENT_BU]
      ,[ALLOCATION_NO]
      ,[AREA]
      ,[BASE_UNIT]
      ,[BILLORG_ADD1]
      ,[BILLORG_ADD2]
      ,[BILLORG_TEL_NO]
      ,[BILLORG_ZIP_CD]
      ,[BILLTO_CUSTNAME_TXT]
      ,[BILL_CATEGORY]
      ,[COMPANY_NAME]
      ,[CROSS_DOC_SEND_TO]
      ,[CUSTTAX_FLAG]
      ,[CUST_CARRY_PLACE_CD]
      ,[DATA_FROM_BIZ]
      ,[DELIVERY_METHOD_TO]
      ,[DELIVERY_TRADER]
      ,[EXCHANGE_RATE]
      ,[EXP_FWDR]
      ,[EXTERNAL_DELIVERY_ID]
      ,[FIRST_REC_INS_MONTH]
      ,[HIGHER_LEVEL_ITEM_NO]
      ,[H_DIST_CHANNEL]
      ,[H_SALES_GRP]
      ,[H_SALES_ORG]
      ,[TAX_AMT]
      ,[INCOTERMS]
      ,[INCOTERMS2]
      ,[INPUT_PART_NO]
      ,[LOT]
      ,[L_REGIST_DATE]
      ,[L_REGIST_NAME]
      ,[L_REGIST_TIME]
      ,[NET_PRICE]
      ,[NET_WEIGHT]
      ,[PAYER]
      ,[PD_END_USER]
      ,[ORDER_PART_NO_CD]
      ,[PRE_DOC_CATEGORY]
      ,[PRICE_CONDITION_UNIT]
      ,[PRICING_DATE]
      ,[R3_COMPANY_CD]
      ,[SALESDOCITEM_NO]
      ,[SALES_ORDER_SPEC_1]
      ,[SALES_ORDER_SPEC_2]
      ,[SALES_ORDER_SPEC_3]
      ,[SA_ROUTE_CD]
      ,[SHIP_CONDITION]
      ,[SODOC_TYPE]
      ,[SO_CNTL_DOC_CAT]
      ,[SO_CONTRACTOR]
      ,[SO_CONTRACT_TO]
      ,[BOOKING_PN_CD]
      ,[SP_STOCK_PRTNR]
      ,[TAX_CD]
      ,[TAX_CNTRY_NAME_TXT]
      ,[TAX_SHIPTO_CNTRY]
      ,[T_WEIGHT]
      ,[ULPORT_CNTRY]
      ,[UNIT_W]
      ,[UPDATE_MONTH]
      ,[W_DS_TB_NAME]
      ,[SEG_CD]
      ,[ACTUAL_UNMANAGED_FLG]
      ,[AGENT_LOCATION]
      ,[SCM_CUSTOMER_COUNTRY]
      ,[CUSTOMER_GRPCOUNTRY]
      ,[DESIGN_GROUP_DEPARTMENT_TXT]
      ,[DESIGN_GROUP_SECTION_TXT]
      ,[ORDER_PRODUCT_STATUS_TXT]
      ,[MOQ]
      ,[SPQ]
      ,[TS_FLAG_TXT]
      ,[WAREHOUSE_TYPE_TXT]
      ,[ROM_TYPE_TXT]
      ,[PACKAGE_CODE]
      ,[CATALOG_PN]
      ,[FRAME_2_4_DIV]
      ,[EISUI_UNIT_TXT]
      ,[EISUI_DIVITION_TXT]
      ,[EISUI_DEPARTMENT_TXT]
      ,[EISUI_SECTION_TXT]
      ,[MP_DATE]
      ,[1ST_SHIP_DATE]
      ,[SCM_FLAG_TXT]
      ,[ORIGINAL_PN_TYPE_TXT]
      ,[STDCST_FLG]
      ,[MCU_SOC_AP_KBN]
      ,[COST_CENTER_CD]
      ,[COST_CENTER_TXT]
      ,[FREE_ITEM_01]
      ,[FREE_ITEM_02]
      ,[CUBE_LINK_FLG]
FROM [DM_SALES].dbo.VUSR_T_TO_BILL_LATESTMASTER;
--2018/07/19 Upd H.Hailun <E>
GO
