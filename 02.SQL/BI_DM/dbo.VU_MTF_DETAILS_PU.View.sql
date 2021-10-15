USE [BI_DM]
GO
/****** Object:  View [dbo].[VU_MTF_DETAILS_PU]    Script Date: 2017/08/02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[VU_MTF_DETAILS_PU]
AS
SELECT 
       MTF.OPPSEQ			as	[Unique_Opportunity_Seq],
       MTF.CALENDAR_YM			as	[Registration_Month],
       MTF.UPDATE_DATE			as	[Rainbow_Registration_Date],
       CONVERT(DATE, LEFT(CONVERT(VARCHAR, DINPLANDATE, 112), 6) + '01')		as	[DIN_Plan_Month],
       MTF.DINPLANDATE			as	[DIN_Plan_Date],
       MTF.STAGEDIV			as	[Stage_Div],
       MTF.MTFRATE			as	[MTF_Rate],
       MTF.CURRENCY			as	[Currency],
       MTF.CURRENCY_EXCH		as	[Converted_Currency],
       MTF.QTY				as	[QTY],
       MTF.AMT				as	[Amount],
       MTF.AMT_EXCH			as	[Converted_Amount],
       MTF.AMT_EXCH_MLR			as	[Converted_Amount_Mid_Long_Rate],
       MTF.STDCST_AMT_EXCH		as	[Converted_Std_Cost_Amount],
       MTF.STDCST_AMT_EXCH_MLR		as	[Converted_Std_Cost_Amount_Mid_Long_Rate],
       MTF.PROBABILITY			as	[Probability],
       MTF.LTVACCURACY			as	[LTV_Accuracy],
       SCM.INTERNALFLG_TXT		as	[InternalFLG_txt],
       SCM.SALES_RT1_TXT		as	[Sales_Rt1_txt],
       SCM.SALES_RT2_TXT		as	[Sales_Rt2_txt],
       SCM.RECEIPT_RENESASGROUP		as	[Receipt_RenesasGroup],
       SCM.RECEIPT_RENESASGROUP_TXT	as	[Receipt_RenesasGroup_txt],
       SCM.RECEIPT_UNIT			as	[Receipt_Unit],
       SCM.RECEIPT_UNIT_TXT		as	[Receipt_Unit_txt],
       SCM.RECEIPT_DIVISION		as	[Receipt_Division],
       SCM.RECEIPT_DIVISION_TXT		as	[Receipt_Division_txt],
       SCM.RECEIPT_DEPT			as	[Receipt_Dept],
       SCM.RECEIPT_DEPT_TXT		as	[Receipt_Dept_txt],
       SCM.RECEIPT_AGENT		as	[Receipt_Agent],
       SCM.RECEIPT_AGENT_TXT		as	[Receipt_Agent_txt],
       --2018/07/19 Del H.Hailun <S>
       --SCM.REL_SALES_SITE		as	[REL_Sales_Site],
       --SCM.REL_SALES_SITE_TXT		as	[REL_Sales_Site_txt],
       --2018/07/19 Del H.Hailun <E>
       SCM.REL_SALES_UNIT		as	[REL_Sales_Unit],
       SCM.REL_SALES_UNIT_TXT		as	[REL_Sales_Unit_txt],
       SCM.REL_SALES_DIVISION		as	[REL_Sales_Division],
       SCM.REL_SALES_DIVISION_TXT	as	[REL_Sales_Division_txt],
       SCM.REL_SALES_DEPARTMENT		as	[REL_Sales_Department],
       SCM.REL_SALES_DEPARTMENT_TXT	as	[REL_Sales_Department_txt],
       SCM.SCM_CUSTOMER			as	[SCM_Customer],
       SCM.SCM_CUSTOMER_TXT_S		as	[SCM_Customer_txt_S],
       SCM.BF_CHANNEL			as	[BF_Channel],
       SCM.CUSTOMER_GRP1		as	[Customer_Grp1],
       SCM.CUSTOMER_GRP2		as	[Customer_Grp2],
       SCM.CUSTOMER_GRPCOUNTRY		as	[Customer_GrpCountry],
       SCM.NIKKEI_WW_FLG		as	[NIKKEI_WW_FLG],
       SCM.SALES_PLANNING_GRP		as	[Sales_Planning_Grp],
       SCM.SALEMAN			as	[Saleman],
       SCM.REGION			as	[Region],
       BOOK.RENESAS_PRODUCT_FLAG_TXT	as	[Renesas_Product_Flag_txt],
       BOOK.DESIGN_GROUP_UNIT		as	[Design_Group_Unit],
       BOOK.DESIGN_GROUP_UNIT_TXT	as	[Design_Group_Unit_txt],
       BOOK.DESIGN_GROUP_DIVISION	as	[Design_Group_Division],
       BOOK.DESIGN_GROUP_DIVISION_TXT	as	[Design_Group_Division_txt],
       BOOK.DESIGN_GROUP_DEPARTMENT	as	[Design_Group_Department],
       BOOK.DESIGN_GROUP_DEPARTMENT_TXT	as	[Design_Group_Department_txt],
       BOOK.CAT1			as	[CAT1],
       BOOK.CAT1_TXT			as	[CAT1_txt],
       BOOK.CAT2			as	[CAT2],
       BOOK.CAT2_TXT			as	[CAT2_txt],
       BOOK.CAT3			as	[CAT3],
       BOOK.CAT3_TXT			as	[CAT3_txt],
       BOOK.CAT4			as	[CAT4],
       BOOK.CAT4_TXT			as	[CAT4_txt],
       BOOK.CAT5			as	[CAT5],
       BOOK.CAT5_TXT			as	[CAT5_txt],
       BOOK.BOOKING_PN_CD		as	[Booking_PN_CD],
       BOOK.BOOKING_PN			as	[Booking_PN],
       BOOK.SO_PT_NO_K_A4_W		as	[Booking_PN_White40],
       BOOK.ORDER_PRODUCT_STATUS	as	[Order_Product_Status],
       BOOK.ORDER_PRODUCT_STATUS_TXT	as	[Order_Product_Status_txt],
       BOOK.EISUI_UNIT			as	[Eisui_Unit],
       BOOK.EISUI_UNIT_TXT		as	[Eisui_Unit_txt],
       BOOK.EISUI_DIVITION		as	[Eisui_Divition],
       BOOK.EISUI_DIVITION_TXT		as	[Eisui_Divition_txt],
       BOOK.EISUI_DEPARTMENT		as	[Eisui_Department],
       BOOK.EISUI_DEPARTMENT_TXT	as	[Eisui_Department_txt],
       BOOK.MP_DATE			as	[MP_Date],
       BOOK.[1ST_SHIP_DATE]		as	[1st_Ship_Date],
       BOOK.SCM_FLAG_TXT		as	[SCM_Flag_txt],
       BOOK.EOL_AFFECT_POLICY		as	[EOL_AFFECT_POLICY],
       BOOK.EOL_POLICY			as	[EOL_POLICY],
       BOOK.EOL_CURRENT_WP_WT		as	[EOL_CURRENT_WP_WT],
       BOOK.EOL_POLICY_TYPE		as	[EOL_POLICY_TYPE],
       BOOK.EOL_SITECHANGE_ASSY		as	[EOL_SITECHANGE_ASSY],
       BOOK.EOL_WPWT_DETAIL		as	[EOL_WPWT_DETAIL],
       BOOK.EOL_WPWT_FUTURE		as	[EOL_WPWT_FUTURE],
       BOOK.EOL_X1FREE_ITEM		as	[EOL_x1FREE_ITEM],
       BOOK.EOL_X2FREE_ITEM		as	[EOL_x2FREE_ITEM],
       BOOK.EOL_X3FREE_ITEM		as	[EOL_x3FREE_ITEM],
       BOOK.MCU_SOC_AP_KBN		as	[MCU_SOC_AP_KBN],
       BOOK.PROCESS_NICKNAME		as	[Process_Nick_Name],
       BOOK.TAB_PROCESS_NAME		as	[Process_Name_for_Summary],
       BOOK.TAB_PROCESS_FOCUS_FLG	as	[Process_Name_for_Summary_Focus_FLG],
       BOOK.REPRESENT_PART_NO_OYA	as	[Represent_PN],
       --2018/08/22 Upd H.Hailun <S>
       --BOOK.MCU_TYPE			as	[MCU_Type],
       BOOK.MCU_TYPE			as	[GP_Product_Type],
       --2018/08/22 Upd H.Hailun <E>
       APL.APL1				as	[APL1],
       APL.APL1_TXT			as	[APL1_txt],
       APL.APL2				as	[APL2],
       APL.APL2_TXT			as	[APL2_txt],
       APL.APL3				as	[APL3],
       APL.APL3_TXT			as	[APL3_txt],
       APL.AFFECT_GST			as	[GST_1_AFFECT],
       APL.GST_1			as	[GST_2],
       APL.GST_2			as	[GST_3],
       APL.LATEST_APL_REVENUE_BU_UNIT	as	[Latest_Revenue_Recognition_BU_Unit],
       APL.LATEST_APL_REVENUE_BU_DIVI	as	[Latest_Revenue_Recognition_BU_Division],
       APL.LATEST_APL_REVENUE_BU_DEPA	as	[Latest_Revenue_Recognition_BU_Department],
       APL.LATEST_APL_REVENUE_BU_SECT	as	[Latest_Revenue_Recognition_BU_Section],
       APL.LATEST_APL_SEGMENT		as	[Latest_Apl_Segment],
       APL.LATEST_APL_SUB_SEGMENT	as	[Latest_Apl_Sub_Segment],
       APL.LATEST_APL_INVEST_LABEL	as	[Latest_Apl_Invest_Label]
FROM BI_DM.dbo.F_RBW_MTF_L_EXCH_MLR as MTF
--20171214 mod aoki       INNER JOIN
       LEFT JOIN
       DM_MST.dbo.V_MST_BOOKPN_CUST_APL as APL
       ON MTF.ORDER_PART_NO_CD = APL.BOOKING_PN_CD
       AND MTF.SCM_CUSTOMER_CD = APL.SCM_CUSTOMER
--20171214 mod aoki       INNER JOIN
       LEFT JOIN
       DM_MST.dbo.V_MST_SCM_CUST as SCM
       ON MTF.SCM_CUSTOMER_CD = SCM.SCM_CUSTOMER
--20171214 mod aoki       INNER JOIN
       LEFT JOIN
       DM_MST.dbo.V_MST_BOOK_PN as BOOK
       ON MTF.ORDER_PART_NO_CD = BOOK.BOOKING_PN_CD
WHERE
       MTF.DUPLILTVDIV in ('1', '4')
