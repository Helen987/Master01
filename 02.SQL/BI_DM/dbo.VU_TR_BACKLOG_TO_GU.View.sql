USE [BI_DM]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[VU_TR_BACKLOG_TO_GU] AS SELECT [PLANT]
      ,[REGISTRATION_MONTH]
      ,[SALES_ORDER_NO]
      ,[SALES_ORDER_TYPE]
      ,[SALES_ORDER_TYPE_TXT]
      ,[CUSTOMER_PO_NO]
      ,[CO_NO]
      ,[RECEIPT_GROUP_CD]
      ,[RECEIPT_RENESASGROUP_TXT]
      ,[RECEIPT_UNIT]
      ,[RECEIPT_UNIT_TXT]
      ,[RECEIPT_DIVISION]
      ,[RECEIPT_DIVISION_TXT]
      ,[RECEIPT_DEPT]
      ,[RECEIPT_DEPT_TXT]
      ,[RECEIPT_SECTION]
      ,[RECEIPT_SECTION_TXT]
      --2018/07/19 Del H.Hailun <S>
      --,[REL_SALES_SITE]
      --,[REL_SALES_SITE_TXT]
      --2018/07/19 Del H.Hailun <E>
      ,[REL_SALES_UNIT]
      ,[REL_SALES_UNIT_TXT]
      ,[REL_SALES_DIVISION]
      ,[REL_SALES_DIVISION_TXT]
      ,[REL_SALES_DEPARTMENT]
      ,[REL_SALES_DEPARTMENT_TXT]
      ,[REL_SALES_SECTION]
      ,[REL_SALES_SECTION_TXT]
      ,[RECEIPT_AGENT]
      ,[DOCUMENT_DATE]
      ,[PAYMENT_TERMS]
      ,[SOLD_TO]
      ,[SOLD_TO_TXT]
      ,[SHIP_TO]
      ,[SHIP_TO_TXT]
      ,[BILL_TO]
      ,[BILL_TO_TXT]
      ,[SCM_CUSTOMER]
      ,[SCM_CUSTOMER_TXT]
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
      ,[CUSTOMER_PART_NO]
      ,[RENESAS_PN]
      ,[TO_BOOK_QTY]
      ,[TO_SHIP_QTY]
      ,[TO_BKLG_QTY]
      ,[BASE_UNIT]
      ,[UNIT_PRICE]
      ,[CURRENCY]
      ,[TO_BKLG_AMT_RATE]
      ,[TO_BOOK_AMT]
      ,[TO_BOOK_AMT_JPY]
      ,[TO_BOOK_AMT_USD]
      ,[TO_BOOK_AMT_EUR]
      ,[TO Booking ANP Amt]
      ,[TO Booking ANP JPY Amt]
      ,[TO Booking ANP USD Amt]
      ,[TO Booking ANP EUR Amt]
      ,[TO_SHIP_AMT]
      ,[TO_SHIP_AMT_JPY]
      ,[TO_SHIP_AMT_USD]
      ,[TO_SHIP_AMT_EUR]
      ,[TO Shipping ANP Amt]
      ,[TO Shipping ANP JPY Amt]
      ,[TO Shipping ANP USD Amt]
      ,[TO Shipping ANP EUR Amt]
      ,[TO_BKLG_AMT]
      ,[TO_BKLG_AMT_JPY]
      ,[TO_BKLG_AMT_USD]
      ,[TO_BKLG_AMT_EUR]
      ,[TO Backlog ANP Amt]
      ,[TO Backlog ANP JPY Amt]
      ,[TO Backlog ANP USD Amt]
      ,[TO Backlog ANP EUR Amt]
      ,[REJECTION_REASON]
      ,[INCOTERMS]
      ,[OSC_SOLD_TO]
      ,[INCOTERMS2]
      ,[EXPORT_FORWARDER]
      ,[OSC_UNIT_PRICE]
      ,[WBS_ELEMENT]
      ,[SOURCE_SYSTEM_DOC_TYPE]
      ,[DOC_Type_Category1]
      ,[DOC_Type_Category1_txt]
      ,[DOC_Type_Category2]
      ,[DOC_Type_Category2_txt]
      ,[OSC_CURRENCY]
      ,[SHIP_TO_CUSTOMER_PO_NO]
      ,[REQUEST_DATE]
      ,[REMARKS_1]
      ,[REMARKS_2]
      ,[SHIP_TO_COUNTRY]
      ,[SHIP_TO_COUNTRY_TXT]
      ,[R1_AREA_NAME_TXT]
      ,[R2_AREA_NAME_TXT]
      ,[R3_AREA_NAME_TXT]
      ,[RECORD_REGISTRATION_DATE]
      ,[RECORD_REGISTRATION_TIME]
      ,[DOC_CURRENCY]
      ,[SCM_PRDCT_JDG_FLG]
      ,[CARRYING_ROUTE]
      ,[CARRY_FLAG]
      ,[CNTL_AREA]
      ,[CONDITION_RATE]
      ,[CONFIR_BKLG_QTY]
      ,[CONFIR_QTY]
      ,[CONSIGNMENT_FLAG]
      ,[COST_PRICE]
      ,[CO_ANNOUNCE_DATE]
      ,[CROSS_DOC_SEND_TO]
      ,[CUSTOMER_PO_ITEM_NO]
      ,[CUST_CARRY_PLACE_CD]
      ,[DELIVERY_METHOD_TO]
      ,[DELIVERY_TRADER]
      ,[DELIVERY_SCHEDULE_LINE_NO]
      ,[DELI_STATEMENT_SO]
      ,[DIST_CHANNEL]
      ,[DIST_FLAG]
      ,[ESTIMATEITEM_NO]
      ,[ESTIMATE_NO]
      ,[EXPORT_SO_RELAY_KEY]
      ,[FORJUDGE_PARTNO]
      ,[GI_DATE]
      ,[H_REFSO_NO]
      ,[INORDER_INVERT_FLAG]
      ,[INPUT_PART_NO]
      ,[INVOICE_NO]
      ,[ITEM_CATEGORY]
      ,[LATEST_RDLV_DATE]
      ,[LC_NO]
      ,[L_SALESDOCITEM_NO]
      ,[MAX_SPRIT_DELIVERY_FREQUENCY]
      ,[NET_AMOUNT]
      ,[NET_AMOUNT_JPY]
      ,[NET_AMOUNT_RATE]
      ,[NET_PRICE]
      ,[NET_WEIGHT]
      ,[ORDER_FLAG]
      ,[ORIGIN_DATA_FLAG]
      ,[OSC_TIEUP_KEY]
      ,[PART_NO_GROUP]
      ,[PAYER]
      ,[PD_END_USER]
      ,[ORDER_PART_NO_CD]
      ,[PLANT_CNTRY_CD]
      ,[PL_CNTRY_NAME_TXT]
      ,[PRICE_CONDITION_UNIT]
      ,[PRICE_UPDN_RELAY_FLG]
      ,[PRSSD_GOODS_FLG]
      ,[R3_COMPANY_CD]
      ,[RDLV_DATE]
      ,[REFSOITEM_NO]
      ,[RETURN_ITEM]
      ,[SALES_GRP]
      ,[SALES_ORDER_SPEC_1]
      ,[SALES_ORDER_SPEC_2]
      ,[SALES_ORDER_SPEC_3]
      ,[SALES_ORG]
      ,[SALES_ROUTE_FLAG]
      ,[SALES_UNIT]
      ,[SA_ROUTE_CD]
      ,[SCM_DOC_CATEGORY]
      ,[SCM_PROCESS_FLAG]
      ,[SECONDARY_CURRENCY]
      ,[SECONDARY_SO_NO]
      ,[SECONDARY_UNITPRICE]
      ,[SHIP_CONDITION]
      ,[SHIP_POINT]
      ,[SALES_ITEM_NO]
      ,[SOTO_COTO_FLAG]
      ,[SALES_CNTL_ORDER_CAT]
      ,[SO_COM]
      ,[SO_CONTRACTOR]
      ,[SO_CONTRACT_TO]
      ,[SO_DC_SHIPDOC_NO]
      ,[SO_NO]
      ,[SO_NO_22]
      ,[BOOKING_PN_CD]
      ,[SPRIT_DELIVERY_FLG]
      ,[SP_STOCK_PARTNER]
      ,[STORAGEPLC]
      ,[SUBSTITUTION_ITEM_NO]
      ,[TAX_AMOUNT]
      ,[UPDATE_KIND]
      ,[DESIGN_BU_2_CD]
      ,[DS_UNIT_NAME_TXT]
      ,[DESIGN_BU_3_CD]
      ,[DS_DIVISION_NAME_TXT]
      ,[APL1]
      ,[APL_1_TXT]
      ,[APL2]
      ,[APL_2_TXT]
      ,[APL3]
      ,[APL_3_TXT]
      ,[DATA_FROM_BIZ]
      ,[SEG_CD]
      ,[W_DS_TB_NAME]
      ,[SALES_ORDER_LINE_NO]
      ,[BUSINESS_SITE_TXT]
      ,[CUSTOMER_RANK_DIVISION]
      ,[BOOK_DATE]
      ,[SHIP_DATE]
      ,[FRIGHT_JUDGE_FLG]
      ,[FRIGHT_JUDGE]
      ,[SERVICE_JUDGE_FLG]
      ,[SERVICE_JUDGE]
      ,[FOREX_JUDGE_FLG]
      ,[FOREX_JUDGE]
      ,[SHIP_BLOCK]
      ,[EISUI_PERSONNEL_1_CD]
      ,[EISUI_PERSONNEL_2_CD]
      ,[PROD_2_E_PERSON_CD]
      ,[REQUEST_DIFF_TYPE]
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
      ,[MCU_SOC_AP_KBN]
      ,[COST_CENTER_CD]
      ,[COST_CENTER_TXT]
      ,[FREE_ITEM_01]
      ,[FREE_ITEM_02]
      ,[CUBE_LINK_FLG]
FROM [DM_SALES].dbo.VUSR_T_TO_BKLG_LATESTMASTER;


GO
