USE [BI_DM]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE VIEW [dbo].[VU_TR_RAINBOWDATA_HISTORY]
AS
SELECT
 [RAINBOWDATA].[UPDATE_DATE]                     AS [UPDATE_DATE]
,[RAINBOWDATA].[CALENDAR_YM]                     AS [CALENDAR_YM]
,[RAINBOWDATA].[SCM_CUSTOMER_CD]                 AS [SCM_Customer]
,[SCM_MST].[SCM_CUSTOMER_TXT_S]                  AS [SCM_Customer_txt_S]
,[SCM_MST].[INTERNALFLG_TXT]                     AS [InternalFLG_txt]
,[SCM_MST].[SALES_RT1_TXT]                       AS [Sales_Rt1_txt]
,[SCM_MST].[SALES_RT2_TXT]                       AS [Sales_Rt2_txt]
,[SCM_MST].[RECEIPT_RENESASGROUP_TXT]            AS [Receipt_RenesasGroup_txt]
,[SCM_MST].[RECEIPT_UNIT_TXT]                    AS [Receipt_Unit_txt]
,[SCM_MST].[RECEIPT_DIVISION_TXT]                AS [Receipt_Division_txt]
,[SCM_MST].[RECEIPT_DEPT_TXT]                    AS [Receipt_Dept_txt]
,[SCM_MST].[RECEIPT_SECTION_TXT]                 AS [Receipt_Section_txt]
,[SCM_MST].[RECEIPT_AGENT_TXT]                   AS [Receipt_Agent_txt]
,[SCM_MST].[REL_SALES_SITE]                      AS [REL_Sales_Site]
,[SCM_MST].[REL_SALES_UNIT_TXT]                  AS [REL_Sales_Unit_txt]
,[SCM_MST].[REL_SALES_DIVISION_TXT]              AS [REL_Sales_Division_txt]
,[SCM_MST].[REL_SALES_DEPARTMENT_TXT]            AS [REL_Sales_Department_txt]
,[SCM_MST].[REL_SALES_SECTION_TXT]               AS [REL_Sales_Section_txt]
,[SCM_MST].[PRICE_CODE]                          AS [Price_Code]
,[SCM_MST].[AGENT_LOCATION]                      AS [Agent_Location]
,[SCM_MST].[SCM_CUSTOMER_COUNTRY]                AS [SCM_Customer_Country]
,[SCM_MST].[BF_CHANNEL]                          AS [BF_Channel]
,[SCM_MST].[CUSTOMER_GRP1]                       AS [Customer_Grp1]
,[SCM_MST].[CUSTOMER_GRP2]                       AS [Customer_Grp2]
,[SCM_MST].[CUSTOMER_GRPCOUNTRY]                 AS [Customer_GrpCountry]
,[SCM_MST].[NIKKEI_WW_FLG]                       AS [NIKKEI_WW_FLG]
,[SCM_MST].[SALES_PLANNING_GRP]                  AS [Sales_Planning_Grp]
,[RAINBOWDATA].[ORDER_PART_NO_CD]                AS [Booking_PN_CD]
,[BOOK_MST].[SO_PT_NO_K_A4_W]                    AS [Booking_PN_White40]
,[BOOK_MST].[BOOKING_PN]                         AS [Booking_PN]
,[BOOK_MST].[RENESAS_PRODUCT_FLAG_TXT]           AS [Renesas_Product_Flag_txt]
,[BOOK_MST].[DESIGN_GROUP_UNIT_TXT]              AS [Design_Group_Unit_txt]
,[BOOK_MST].[DESIGN_GROUP_DIVISION_TXT]          AS [Design_Group_Division_txt]
,[BOOK_MST].[DESIGN_GROUP_DEPARTMENT_TXT]        AS [Design_Group_Department_txt]
,[BOOK_MST].[DESIGN_GROUP_SECTION_TXT]           AS [Design_Group_Section_txt]
,[BOOK_MST].[CAT1]                               AS [CAT1]
,[BOOK_MST].[CAT1_TXT]                           AS [CAT1_txt]
,[BOOK_MST].[CAT2]                               AS [CAT2]
,[BOOK_MST].[CAT2_TXT]                           AS [CAT2_txt]
,[BOOK_MST].[CAT3]                               AS [CAT3]
,[BOOK_MST].[CAT3_TXT]                           AS [CAT3_txt]
,[BOOK_MST].[CAT4]                               AS [CAT4]
,[BOOK_MST].[CAT4_TXT]                           AS [CAT4_txt]
,[BOOK_MST].[CAT5]                               AS [CAT5]
,[BOOK_MST].[CAT5_TXT]                           AS [CAT5_txt]
,[BOOK_MST].[RENESAS_PN]                         AS [Renesas_PN]
,[BOOK_MST].[ORDER_PRODUCT_STATUS_TXT]           AS [Order_Product_Status_txt]
,[BOOK_MST].[MOQ]                                AS [MOQ]
,[BOOK_MST].[SPQ]                                AS [SPQ]
,[BOOK_MST].[TS_FLAG_TXT]                        AS [TS_Flag_txt]
,[BOOK_MST].[WAREHOUSE_TYPE_TXT]                 AS [Warehouse_Type_txt]
,[BOOK_MST].[ROM_TYPE_TXT]                       AS [ROM_Type_txt]
,[BOOK_MST].[PACKAGE_CODE]                       AS [Package_Code]
,[BOOK_MST].[CATALOG_PN]                         AS [Catalog_PN]
,[BOOK_MST].[FRAME_2_4_DIV]                      AS [Frame_2_4_Div]
,[BOOK_MST].[EISUI_UNIT_TXT]                     AS [Eisui_Unit_txt]
,[BOOK_MST].[EISUI_DIVITION_TXT]                 AS [Eisui_Divition_txt]
,[BOOK_MST].[EISUI_DEPARTMENT_TXT]               AS [Eisui_Department_txt]
,[BOOK_MST].[EISUI_SECTION_TXT]                  AS [Eisui_Section_txt]
,[BOOK_MST].[MP_DATE]                            AS [MP_Date]
,[BOOK_MST].[1ST_SHIP_DATE]                      AS [1st_Ship_Date]
,[BOOK_MST].[SCM_FLAG_TXT]                       AS [SCM_Flag_txt]
,[BOOK_MST].[PART_NO_FROM_DIV_TXT]               AS [Original_PN_Type_txt]
,[BOOK_MST].[EOL_AFFECT_POLICY]                  AS [EOL_AFFECT_POLICY]
,[BOOK_MST].[EOL_CURRENT_WP_WT]                  AS [EOL_CURRENT_WP_WT]
,[BOOK_MST].[EOL_POLICY]                         AS [EOL_POLICY]
,[BOOK_MST].[EOL_POLICY_TYPE]                    AS [EOL_POLICY_TYPE]
,[BOOK_MST].[EOL_SITECHANGE_ASSY]                AS [EOL_SITECHANGE_ASSY]
,[BOOK_MST].[EOL_WPWT_DETAIL]                    AS [EOL_WPWT_DETAIL]
,[BOOK_MST].[EOL_WPWT_FUTURE]                    AS [EOL_WPWT_FUTURE]
,[BOOK_MST].[EOL_X1FREE_ITEM]                    AS [EOL_x1FREE_ITEM]
,[BOOK_MST].[EOL_X2FREE_ITEM]                    AS [EOL_x2FREE_ITEM]
,[BOOK_MST].[EOL_X3FREE_ITEM]                    AS [EOL_x3FREE_ITEM]
--20181205 Liang �W�������}�X�^IF��~�ɔ���AM�c�������̉��C START
--,[STD_PRC].[STANDARD_PRICE]                      AS [StdCst]
--,[STD_PRC].[StdCst_Flg]                          AS [StdCst_Flg]
,[BOOK_PN].[COST]                                AS [StdCst]
,[BOOK_PN].[STDCST_FLG]                          AS [StdCst_Flg]
--20181205 Liang �W�������}�X�^IF��~�ɔ���AM�c�������̉��C END
,[BOOK_MST].[MCU_SOC_AP_KBN]                     AS [MCU_SOC_AP_KBN]
,[BOOK_MST].[COST_CENTER_CD]                     AS [Cost_Center_CD]
,[BOOK_MST].[COST_CENTER_TXT]                    AS [Cost_Center_txt]
,[BOOK_MST].[DEVELOPMENT_YEAR_HARF]              AS [Development_Year_Harf]
,[RAINBOWDATA].[SEG_CD]                          AS [SEG_CD]
,[APL_MST].[APL1_TXT]                            AS [APL1_txt]
,[APL_MST].[APL2_TXT]                            AS [APL2_txt]
,[APL_MST].[APL3_TXT]                            AS [APL3_txt]
,[APL_MST].[AFFECT_GST]                          AS [GST_1_AFFECT]
,[APL_MST].[GST_1]                               AS [GST_2]
,[APL_MST].[GST_2]                               AS [GST_3]
,[RAINBOWDATA].[CURRENCY]                        AS [Cur]
,[RAINBOWDATA].[BUSINESS_SITE]                   AS [Business_Site]
,[APL_MST].[RR_BU_UNIT_TXT]                      AS [Revenue_Recognition_BU_Unit_txt]
,[APL_MST].[RR_BU_DIVISION_TXT]                  AS [Revenue_Recognition_BU_Division_txt]
,[APL_MST].[RR_BU_DEPARTMENT_TXT]                AS [Revenue_Recognition_BU_Department_txt]
,[APL_MST].[RR_BU_SECTION_TXT]                   AS [Revenue_Recognition_BU_Section_txt]
,[APL_MST].[SEGMENT_BU]                          AS [Segment_BU]
,[APL_MST].[FREE_ITEM_01]                        AS [Free_Item_01]
,[APL_MST].[FREE_ITEM_02]                        AS [Free_Item_02]
,[RAINBOWDATA].[TODemand_Amt]                    AS [TO_Demand_Amt]
,[RAINBOWDATA].[TODemand_Qty]                    AS [TO_Demand_Qty]
,[RAINBOWDATA].[TOReply_Amt]                     AS [TO_Reply_Amt]
,[RAINBOWDATA].[TOReply_Qty]                     AS [TO_Reply_Qty]
,[RAINBOWDATA].[GODemand_Amt]                    AS [GO_Demand_Amt]
,[RAINBOWDATA].[GODemand_V0_Amt]                 AS [GO_Demand_V0_Amt]
,[RAINBOWDATA].[GODemand_V1_Amt]                 AS [GO_Demand_V1_Amt]
,[RAINBOWDATA].[GODemand_Std]                    AS [GO_Demand_StdCst_Amt]
,[RAINBOWDATA].[GODemand_V0_Std]                 AS [GO_Demand_V0_StdCst_Amt]
,[RAINBOWDATA].[GODemand_V1_Std]                 AS [GO_Demand_V1_StdCst_Amt]
,[RAINBOWDATA].[GODemand_Qty]                    AS [GO_Demand_Qty]
,[RAINBOWDATA].[GODemand_V0_Qty]                 AS [GO_Demand_V0_Qty]
,[RAINBOWDATA].[GODemand_V1_Qty]                 AS [GO_Demand_V1_Qty]
,[RAINBOWDATA].[GOReply_Amt]                     AS [GO_Reply_Amt]
,[RAINBOWDATA].[GOReply_Std]                     AS [GO_Reply_StdCst_Amt]
,[RAINBOWDATA].[GOReply_Qty]                     AS [GO_Reply_Qty]
,[RAINBOWDATA].[ShippableAATP_Amt]               AS [Shippable_AATP_Amt]
,[RAINBOWDATA].[ShippableAATP_Qty]               AS [Shippable_AATP_Qty]
,[RAINBOWDATA].[AdjustedSFOut_Amt]               AS [Adjusted_SF_Out_Amt]
,[RAINBOWDATA].[AdjustedSFOut_Qty]               AS [Adjusted_SF_Out_Qty]
,[RAINBOWDATA].[JSF_Amt]                         AS [JSF_Amt]
,[RAINBOWDATA].[JSF_V0_Amt]                      AS [JSF_V0_Amt]
,[RAINBOWDATA].[JSF_V1_Amt]                      AS [JSF_V1_Amt]
,[RAINBOWDATA].[JSF_Qty]                         AS [JSF_Qty]
,[RAINBOWDATA].[JSF_V0_Qty]                      AS [JSF_V0_Qty]
,[RAINBOWDATA].[JSF_V1_Qty]                      AS [JSF_V1_Qty]
--20190225_mod_c.ma_�f�[�^�J�o���b�W�Ή�_START
--,[RAINBOWDATA].[ProductionPlanning_Amt]          AS [Production_pln_Amt]
--,[RAINBOWDATA].[ProductionPlanning_Qty]          AS [Production_pln_Qty]
,[RAINBOWDATA].[ProductionPlanning_Amt]          AS [Production_Plan_Reply_Amt]
,[RAINBOWDATA].[ProductionPlanning_Qty]          AS [Production_Plan_Reply_Qty]
--20190225_mod_c.ma_�f�[�^�J�o���b�W�Ή�_START
,[RAINBOWDATA].[OSC_MoveAve_Cst]                 AS [GO_Reply_MoveAve_Amt]
,[RAINBOWDATA].[OSC_MoveAve_GP_Amt]              AS [GO_Reply_Margin_Amt]
 
FROM [BI_DM].[dbo].[VF_SAL_RAINBOWDATA] [RAINBOWDATA]
  LEFT OUTER JOIN [BI_DM].[dbo].[M_SCM_CUST] [SCM_MST]
    ON [SCM_MST].[SCM_CUSTOMER] = [RAINBOWDATA].[SCM_CUSTOMER_CD]

  LEFT OUTER JOIN [BI_DM].[dbo].[M_PNO_BOOK_PN] [BOOK_MST]
    ON [BOOK_MST].[BOOKING_PN_CD] = [RAINBOWDATA].[ORDER_PART_NO_CD]

  LEFT OUTER JOIN [BI_DM].[dbo].[M_APL_CUST_BOOK_PN] [APL_MST]
    ON [APL_MST].[SCM_CUSTOMER] = [RAINBOWDATA].[SCM_CUSTOMER_CD]
    AND [APL_MST].[BOOKING_PN_CD] = [RAINBOWDATA].[ORDER_PART_NO_CD]

--20181205 Liang �W�������}�X�^IF��~�ɔ���AM�c�������̉��C START
  --LEFT OUTER JOIN [BI_DM].[dbo].[M_PNO_STANDARD_PRICE] [STD_PRC]
  --  ON [STD_PRC].[ORDER_PART_NO_CD] = [BOOK_MST].[ANCESTRAL_PART_NO_CD]
  LEFT OUTER JOIN [DM_MST].[dbo].[V_MST_BOOK_PN] [BOOK_PN]
    ON [BOOK_PN].[BOOKING_PN_CD] = [RAINBOWDATA].[ORDER_PART_NO_CD]
--20181205 Liang �W�������}�X�^IF��~�ɔ���AM�c�������̉��C END

 WHERE [UPDATE_DATE] in (SELECT [UPDATE_DATE]
                           FROM [BI_DM].[dbo].[VD_SAL_RAINBOW_UPDATE]
                          WHERE [LATEST_DATE_TYPE] is null)
 -- AND [CURRENCY_EXCH] = 'Input Currency'
  AND [CURRENCY_EXCH] = 'JPY'




GO