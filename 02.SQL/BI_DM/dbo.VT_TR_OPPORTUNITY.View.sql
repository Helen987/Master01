USE [BI_DM]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE VIEW [dbo].[VT_TR_OPPORTUNITY]
AS
WITH [VD_APL1_ALL] AS
(
SELECT DISTINCT
       [APL1]
      ,[APL1_TXT]
FROM [dbo].[M_APL_CUST_BOOK_PN]
)
,[VD_APL2_ALL] AS
(
SELECT DISTINCT
       [APL2]
      ,[APL2_TXT]
FROM [dbo].[M_APL_CUST_BOOK_PN]
)
,
[VD_APL3_ALL] AS
(
SELECT DISTINCT
       [APL3]
      ,[APL3_TXT]
      ,[AFFECT_GST]
      ,[GST_1]
      ,[GST_2]
FROM [dbo].[M_APL_CUST_BOOK_PN]
)
SELECT 
   CRM.CURRENCY_TYPE                                       AS    [A010_Conversion_Currency]
  ,OPP.D_IN_SALES_COMPANY_TXT                              AS    [A020_Design_Region]
  ,OPP.TRACKING_TYPE_STATUS_TXT                            AS    [A030_Tracking_Type]
  ,PROD.OPEN_DEAD_STATUS_TXT                               AS    [A041_Open_Dead_txt]
  ,PROD.TYPE_STAGE                                         AS    [A050_Mother_Daughter]
  ,OPP.STAGE_TYPE_TXT                                      AS    [A060_DPA_DPNA]
  ,PROD.STAGE_SUB_TYPE                                     AS    [A070_Stage_Sub_Type]
  ,PROD.STAGE                                              AS    [A075_Stage_Code]
  ,PROD.STAGE_TXT                                          AS    [A080_Stage]
  ,PROD.STAGE_DETAIL                                       AS    [A090_Stage_Detail]
  ,PROD.CREATED_DATE                                       AS    [A100_Created_Date]
  ,PROD.LAST_MODIFIED_DATE                                 AS    [A110_Last_Update_Date]
  ,PRD.OPP_APPLICATION3_CODE                               AS    [B010_APL3]
  ,APL3.APL3_TXT                                           AS    [B020_APL3_txt]
  ,PRD.OPP_APPLICATION1_CODE                               AS    [B030_APL1]
  ,APL1.APL1_TXT                                           AS    [B040_APL1_txt]
  ,PRD.OPP_APPLICATION2_CODE                               AS    [B050_APL2]
  ,APL2.APL2_TXT                                           AS    [B060_APL2_txt]
  ,APL3.AFFECT_GST                                         AS    [B090_GST_1_AFFECT]
  ,APL3.GST_1                                              AS    [B100_GST_2]
  ,APL3.GST_2                                              AS    [B110_GST_3]
  ,OPP.OPPORTUNITY_INDUSTRY_TXT                            AS    [B120_Opportunity_Industry]
  ,OPP.SEGMENT_TXT                                         AS    [B130_Segment_txt]
  ,OPP.SEGMENT                                             AS    [B140_Segment]
  ,OPP.APPLICATION_NOTE                                    AS    [B150_Application_Note]
  ,NOMINATION.MONTH_TEXT                                   AS    [C010_Target_Nomination_Month]
  ,PRD.TARGET_NOMINATION_DATE_D                            AS    [C020_Target_Nomination_Date]
  ,AWARD.MONTH_TEXT                                        AS    [C030_Target_Award_Month]
  ,PRD.TARGET_AWARD_DATE_D                                 AS    [C040_Target_Award_Date]
  ,APPROVED.MONTH_TEXT                                     AS    [C050_Approved_Month]
  ,PRD.APPROVED_DATE                                       AS    [C060_Approved_Date]
  ,MP.MONTH_TEXT                                           AS    [C070_MP_Start_Month]
  ,PRD.MP_START_DATE                                       AS    [C080_MP_Start_Date]
  ,OPP.OPPORTUNITY_NO                                      AS    [D010_Opportunity]
  ,OPP.ACCOUNT_NAME                                        AS    [D020_Account_Group_Name]
  ,OPP.ACCOUNT_GROUP_CODE                                  AS    [D030_Account_Group_Code]
  ,OPP.END_CUSTOMER_NAME                                   AS    [D040_End_Customer]
  ,OPP.END_CUSTOMER_COUNTRY                                AS    [D050_End_Customer_Country]
  ,PROD.AUTOMOTIVE_OEM                                     AS    [D060_Automotive_OEM]
  ,PROD.PPAP_BY                                            AS    [D070_PPAP_Due_Date]
  ,OPP.NDA_FLAG                                            AS    [D080_NDA]
  ,OPP.CHANNEL_PARTNER_NAME                                AS    [D090_Channel_Partner_Name]
  ,OPP.CHANNEL_PARTNER_CODE                                AS    [D100_Channel_Partner_Number]
  ,OPP.OPPORTUNITY_NAME                                    AS    [E010_Opportunity_Name]
  ,PROD.OPPORTUNITY_SEQ_PRD                                AS    [E020_Product_Seq]
  ,PROD.DAUGHTER_PROJECT_NAME                              AS    [E030_Project_Name]
  ,OPP.MP_START_MONTH                                      AS    [E040_MP_Start_Opportunity]
  ,OPP.DURATION_MONTH                                      AS    [E050_Duration_Month]
  ,OPP.ESTIMATED_ANNUAL_USAGE                              AS    [E060_Customer_Annual_Usage]
  ,PROD.QTY_UNIT                                           AS    [E070_Pieces_Par_Customer_Set]
  ,PROD.SHARE_PERCENT                                      AS    [E080_Target_Share_Rate]
  ,PROD.DEMAND_TYPE_TXT                                    AS    [E090_Demand_Quantity_Simple]
  ,PROD.ANNUAL_DEMAND_QUANTITIY_TOTAL                      AS    [E100_Product_LTQ]
  ,PROD.AVERAGE_PRICE                                      AS    [E110_Average_Price]
  ,PROD.CURRENCY                                           AS    [E120_Average_Price_Currency]
  ,PROD.ANNUAL_DEMAND_LTV_TOTAL                            AS    [E130_Product_LTV]
  ,PROD.PRODUCT_SHARE_TXT                                  AS    [E140_Share_txt]
  ,PROD.PRODUCT_SHARE                                      AS    [E150_Share]
  ,PROD.OPPORTUNITY_SEQ                                    AS    [E180_Opportunity_Seq]
  ,T_LTV.LATESTLTVCURRENCYCD                               AS    [F005_Rainbow_Currency]
  ,LTV.[LTVAMT]                                            AS    [F010_D-inLTV]
  ,CRM.[Qty_N-1]                                           AS    [F020_Under_FY(N-1)_Qty]
  ,CAST(ISNULL(CRM.[Amt_N-1]/NULLIF(CRM.[Qty_N-1],0),0) AS NUMERIC(37,4))         AS    [F030_Under_FY(N-1)_Pr]
  ,CRM.[Amt_N-1]                                           AS    [F040_Under_FY(N-1)_Amt]
  ,CRM.[Qty_N_1Q]                                          AS    [F050_1Q_FY(N)_1-3_Qty]
  ,CAST(ISNULL(CRM.[Amt_N_1Q]/NULLIF(CRM.[Qty_N_1Q],0),0) AS NUMERIC(37,4))       AS    [F060_1Q_FY(N)_1-3_Pr]
  ,CRM.[Amt_N_1Q]                                          AS    [F070_1Q_FY(N)_1-3_Amt]
  ,CRM.[Qty_N_2Q]                                          AS    [F080_2Q_FY(N)_4-6_Qty]
  ,CAST(ISNULL(CRM.[Amt_N_2Q]/NULLIF(CRM.[Qty_N_2Q],0),0) AS NUMERIC(37,4))       AS    [F090_2Q_FY(N)_4-6_Pr]
  ,CRM.[Amt_N_2Q]                                          AS    [F100_2Q_FY(N)_4-6_Amt]
  ,CRM.[Qty_N_3Q]                                          AS    [F110_3Q_FY(N)_7-9_Qty]
  ,CAST(ISNULL(CRM.[Amt_N_3Q]/NULLIF(CRM.[Qty_N_3Q],0),0) AS NUMERIC(37,4))       AS    [F120_3Q_FY(N)_7-9_Pr]
  ,CRM.[Amt_N_3Q]                                          AS    [F130_3Q_FY(N)_7-9_Amt]
  ,CRM.[Qty_N_4Q]                                          AS    [F140_4Q_FY(N)_10-12_Qty]
  ,CAST(ISNULL(CRM.[Amt_N_4Q]/NULLIF(CRM.[Qty_N_4Q],0),0) AS NUMERIC(37,4))       AS    [F150_4Q_FY(N)_10-12_Pr]
  ,CRM.[Amt_N_4Q]                                          AS    [F160_4Q_FY(N)_10-12_Amt]
  ,CRM.[Qty_N+1_1H]                                        AS    [F170_1H_FY(N+1)_Qty]
  ,CAST(ISNULL(CRM.[Amt_N+1_1H]/NULLIF(CRM.[Qty_N+1_1H],0),0) AS NUMERIC(37,4))   AS    [F180_1H_FY(N+1)_Pr]
  ,CRM.[Amt_N+1_1H]                                        AS    [F190_1H_FY(N+1)_Amt]
  ,CRM.[Qty_N+1_2H]                                        AS    [F200_2H_FY(N+1)_Qty]
  ,CAST(ISNULL(CRM.[Amt_N+1_2H]/NULLIF(CRM.[Qty_N+1_2H],0),0) AS NUMERIC(37,4))   AS    [F210_2H_FY(N+1)_Pr]
  ,CRM.[Amt_N+1_2H]                                        AS    [F220_2H_FY(N+1)_Amt]
  ,CRM.[Qty_N+2_1H]                                        AS    [F230_1H_FY(N+2)_Qty]
  ,CAST(ISNULL(CRM.[Amt_N+2_1H]/NULLIF(CRM.[Qty_N+2_1H],0),0) AS NUMERIC(37,4))   AS    [F240_1H_FY(N+2)_Pr]
  ,CRM.[Amt_N+2_1H]                                        AS    [F250_1H_FY(N+2)_Amt]
  ,CRM.[Qty_N+2_2H]                                        AS    [F260_2H_FY(N+2)_Qty]
  ,CAST(ISNULL(CRM.[Amt_N+2_2H]/NULLIF(CRM.[Qty_N+2_2H],0),0) AS NUMERIC(37,4))   AS    [F270_2H_FY(N+2)_Pr]
  ,CRM.[Amt_N+2_2H]                                        AS    [F280_2H_FY(N+2)_Amt]
  ,CRM.[Qty_N+3]                                           AS    [F290_FY(N+3)_Qty]
  ,CAST(ISNULL(CRM.[Amt_N+3]/NULLIF(CRM.[Qty_N+3],0),0) AS NUMERIC(37,4))         AS    [F300_FY(N+3)_Pr]
  ,CRM.[Amt_N+3]                                           AS    [F310_FY(N+3)_Amt]
  ,CRM.[Qty_N+4]                                           AS    [F320_FY(N+4)_Qty]
  ,CAST(ISNULL(CRM.[Amt_N+4]/NULLIF(CRM.[Qty_N+4],0),0) AS NUMERIC(37,4))         AS    [F330_FY(N+4)_Pr]
  ,CRM.[Amt_N+4]                                           AS    [F340_FY(N+4)_Amt]
  ,CRM.[Qty_N+5]                                           AS    [F350_FY(N+5)_Qty]
  ,CAST(ISNULL(CRM.[Amt_N+5]/NULLIF(CRM.[Qty_N+5],0),0) AS NUMERIC(37,4))         AS    [F360_FY(N+5)_Pr]
  ,CRM.[Amt_N+5]                                           AS    [F370_FY(N+5)_Amt]
  ,CRM.[Qty_N+6]                                           AS    [F380_FY(N+6)_Qty]
  ,CAST(ISNULL(CRM.[Amt_N+6]/NULLIF(CRM.[Qty_N+6],0),0) AS NUMERIC(37,4))         AS    [F390_FY(N+6)_Pr]
  ,CRM.[Amt_N+6]                                           AS    [F400_FY(N+6)_Amt]
  ,CRM.[Qty_N+7]                                           AS    [F410_FY(N+7)_Qty]
  ,CAST(ISNULL(CRM.[Amt_N+7]/NULLIF(CRM.[Qty_N+7],0),0) AS NUMERIC(37,4))         AS    [F420_FY(N+7)_Pr]
  ,CRM.[Amt_N+7]                                           AS    [F430_FY(N+7)_Amt]
  ,CRM.[Qty_N+8]                                           AS    [F440_FY(N+8)_Qty]
  ,CAST(ISNULL(CRM.[Amt_N+8]/NULLIF(CRM.[Qty_N+8],0),0) AS NUMERIC(37,4))         AS    [F450_FY(N+8)_Pr]
  ,CRM.[Amt_N+8]                                           AS    [F460_FY(N+8)_Amt]
  ,CRM.[Qty_N+9]                                           AS    [F470_FY(N+9)_Qty]
  ,CAST(ISNULL(CRM.[Amt_N+9]/NULLIF(CRM.[Qty_N+9],0),0) AS NUMERIC(37,4))         AS    [F480_FY(N+9)_Pr]
  ,CRM.[Amt_N+9]                                           AS    [F490_FY(N+9)_Amt]
  ,CRM.[Qty_N+10]                                          AS    [F500_Over_FY(N+10)_Qty]
  ,CAST(ISNULL(CRM.[Amt_N+10]/NULLIF(CRM.[Qty_N+10],0),0) AS NUMERIC(37,4))       AS    [F510_Over_FY(N+10)_Pr]
  ,CRM.[Amt_N+10]                                          AS    [F520_Over_FY(N+10)_Amt]
  ,PROD.RENESAS_NEW_PRODUCT                                AS    [G010_In_MP_Clarified_POR_from_BU]
  ,PROD.SALES_ORDER_PN_DUMMY_FLAG                          AS    [G020_Sales_Order_Part_No_Dummy_Flag]
  ,PROD.NICKNAME                                           AS    [G030_Nickname_Temporary_Part_No]
  ,BOOK_MTF.PRODUCT_FAMILY                                 AS    [G040_Product_Family_txt_MTF]
  ,BOOK_MTF.CAT1                                           AS    [G050_CAT1_MTF]
  ,BOOK_MTF.CAT1_TXT                                       AS    [G060_CAT1_txt_MTF]
  ,BOOK_MTF.CAT2                                           AS    [G070_CAT2_MTF]
  ,BOOK_MTF.CAT2_TXT                                       AS    [G080_CAT2_txt_MTF]
  ,BOOK_MTF.CAT3                                           AS    [G090_CAT3_MTF]
  ,BOOK_MTF.CAT3_TXT                                       AS    [G100_CAT3_txt_MTF]
  ,BOOK_MTF.CAT4                                           AS    [G110_CAT4_MTF]
  ,BOOK_MTF.CAT4_TXT                                       AS    [G120_CAT4_txt_MTF]
  ,BOOK_MTF.CAT5                                           AS    [G130_CAT5_MTF]
  ,BOOK_MTF.CAT5_TXT                                       AS    [G140_CAT5_txt_MTF]
  ,BOOK_MTF.BOOKING_PN                                     AS    [G150_Booking_PN_MTF]
  ,BOOK_MTF.BOOKING_PN_CD                                  AS    [G160_Booking_PN_CD_MTF]
  ,BOOK_MTF.SO_PT_NO_K_A4_W                                AS    [G170_Booking_PN_White40_MTF]
  ,PROD.COMPETITOR1_TXT                                    AS    [H010_Competitor_Name1_txt]
  ,PROD.COMPETITOR1                                        AS    [H020_Competitor_Name1]
  ,PROD.COMPETITOR_PART_NO1                                AS    [H030_Competitor_Part_Name1]
  ,PROD.COMPETITOR_PRICE1                                  AS    [H040_Competitor_Price1]
  ,PROD.COMPETITOR2_TXT                                    AS    [H050_Competitor_Name2_txt]
  ,PROD.COMPETITOR2                                        AS    [H060_Competitor_Name2]
  ,PROD.COMPETITOR_PART_NO2                                AS    [H070_Competitor_Part_Name2]
  ,PROD.COMPETITOR_PRICE2                                  AS    [H080_Competitor_Price2]
  ,PROD.COMPETITOR3_TXT                                    AS    [H090_Competitor_Name3_txt]
  ,PROD.COMPETITOR3                                        AS    [H100_Competitor_Name3]
  ,PROD.COMPETITOR_PART_NO3                                AS    [H110_Competitor_Part_Name3]
  ,PROD.COMPETITOR_PRICE3                                  AS    [H120_Competitor_Price3]
  ,PROD.DR_STATUS_TXT                                      AS    [I010_DR_Status_txt]
  ,PROD.DR_STATUS                                          AS    [I020_DR_Status]
  ,PROD.APPROVAL_REQUEST                                   AS    [I030_Approval_Request]
  ,PROD.APPROVAL_REQUEST_DATE                              AS    [I040_Approval_Request_Date]
  ,PROD.APPROVAL_NOTES                                     AS    [I050_Approval_Notes]
  ,PROD.DR_REQUESTOR_FEDERATION_ID                         AS    [I060_DR_Requestor]
  ,PROD.DR_APRVR_FR_APRV_FEDERATION_ID                     AS    [I070_DR_Approber]
  ,PROD.DR_EXPIRATION_DATE                                 AS    [I080_DR_Expiration_Date]
  ,PROD.DR_REQ_DISTI_PART_STATUS                           AS    [I090_Disty_Part_Status]
  ,PROD.DAUGHTER_AWARD_SALES_COMPANY_TXT                   AS    [I100_Daughter_Award_Sales_Company_txt]
  ,PROD.S0_ACTUAL_DATE                                     AS    [I110_Date_of_S0]
  ,PROD.OPPORTUNITY_DISCERNMENT_TXT                        AS    [I120_Opportunity_Discernment_txt]
  ,PROD.REFERENCE_NO                                       AS    [I130_Reference_No]
  ,PROD.REFERENCE_NO_REMARKS                               AS    [I140_Reference_No_Remarks]
  ,PROD.D_IN_CONFIDENCE_LEVEL_PERCENT_TXT                  AS    [J010_Nomination_Confidence_Level]
  ,PROD.AWARD_CONFIDENCE_LEVEL_PERCENT_TXT                 AS    [J020_Award_Confidence_Level]
  ,PROD.PROGRESS                                           AS    [J030_Progress]
  ,PROD.TECHNICAL_TXT                                      AS    [J040_Technical_txt]
  ,PROD.SCHEDULE_TXT                                       AS    [J050_Schedule_txt]
  ,PROD.TARGET_PRICE_TXT                                   AS    [J060_Target_Price_txt]
  ,PROD.PROMOTION_SAMPLE_TXT                               AS    [J070_Promotion_Sample_txt]
  ,PROD.RENESAS_PRD_REQ_FLG_TXT                            AS    [J080_Does_Renesas_Product_fit_requirement_txt]
  ,PROD.RENESAS_MEET_SCHEDULE_FLG_TXT                      AS    [J090_Can_Renesas_meet_the_schedule_txt]
  ,PROD.PRICE_SUBMIT_FLG_TXT                               AS    [J100_Has_a_price_been_submitted_txt]
  ,PROD.SAMPLE_DELIVERY_FLG_TXT                            AS    [J110_Has_sample_been_delivered_txt]
  ,PROD.POSTPONE                                           AS    [K010_Postpone]
  ,PROD.STATUS_UPDATE_DATE                                 AS    [K020_Date_of_Dead]
  ,PROD.STATUS_TXT                                         AS    [K030_Dead_Reason_txt]
  ,PROD.STATUS                                             AS    [K040_Dead_Reason]
  ,PROD.DELETE_FLAG                                        AS    [K060_Logical_Deleted_Flag]
  ,PROD.DEMAND_TYPE_TXT                                    AS    [L010_Forecast_Type_txt]
  ,PROD.MP_END_MONTH                                       AS    [L030_MP_End]
  ,PROD.QUANTITY_GAP                                       AS    [L040_Quantity_Gap]
  ,PROD.CURRENT_LTQ                                        AS    [L050_LTQ(Remaining)]
  ,PROD.CURRENT_LTV                                        AS    [L060_LTV(Remaining)]
  ,PROD.START_MONTH_OF_FISCAL_YEAR_TXT                     AS    [L070_Start_Month_of_Customer_FY_txt]
  ,PROD.NET_BILLING                                        AS    [M010_Activate_Net_Billing]
  ,PROD.B_WIN_OSC_TXT                                      AS    [M020_Fullfillment_Region_txt]
  ,PROD.CUSTOMER_PART_NO                                   AS    [M050_Customer_Part_No]
  ,PROD.CREATED_BY_EMAIL                                   AS    [N010_Created_By_Email]
  ,PROD.CREATED_BY_FEDERATION_ID                           AS    [N020_Created_By_Fedetation_ID]
  ,PROD.LAST_MODIFIED_BY_EMAIL                             AS    [N030_Last_Modified_By_Email]
  ,PROD.LAST_MODIFIED_BY_FEDERATION_ID                     AS    [N040_Last_Modified_By_Fedetation_ID]
  ,OPP.OPPORTUNITY_OWNER_EMAIL                             AS    [N050_Opportunity_Owner_Email]
  ,OPP.OPPORTUNITY_OWNER                                   AS    [N060_Opportunity_Owner]
  ,OPP.OWNER_COMPANYNAME                                   AS    [N070_Opportunity_Owner_Company]
  ,OPP.SALES_LEADER_EMAIL                                  AS    [N080_Sales_Leader_Email]
  ,OPP.SALES_LEADER_FEDERATION_ID                          AS    [N090_Sales_Leader_Federation_ID]
  ,SCM_MTF.Customer_Grp2Name                               AS    [O010_Customer_Grp2_MTF]
  ,SCM_MTF.Customer_Grp1Name                               AS    [O020_Customer_Grp1_MTF]
  ,SCM_MTF.Customer_GrpCountry                             AS    [O030_Customer_GrpCountry_MTF]
  ,SCM_MTF.SCM_CUSTOMER_CD                                 AS    [O040_SCM_Customer_MTF]
  ,SCM_MTF.SCM_CUSTOMER_SNAME                              AS    [O050_SCM_Customer_txt_S_MTF]
  ,SCM_MTF.SCM_COUNTRY_CD                                  AS    [O060_SCM_Customer_Country_MTF]
  ,SCM_MTF.NIKKEI_WW_FLG                                   AS    [O070_NIKKEI_WW_FLG_MTF]
  ,SCM_MTF.INTERNAL_FLG_NAME                               AS    [O080_InternalFLG_txt_MTF]
  ,SCM_MTF.RCP_RENESAS_GR_SNAME                            AS    [O090_Receipt_RenesasGroup_txt_MTF]
  ,SCM_MTF.RCP_RENESAS_GR_CD                               AS    [O100_Receipt_RenesasGroup_MTF]
  ,SCM_MTF.RCP_UNIT_SNAME                                  AS    [O110_Receipt_Unit_txt_MTF]
  ,SCM_MTF.RCP_DIVISION_SNAME                              AS    [O120_Receipt_Division_txt_MTF]
  ,SCM_MTF.RCP_DEPARTMENT_SNAME                            AS    [O130_Receipt_Dept_txt_MTF]
  ,SCM_MTF.RCP_SECTION_SNAME                               AS    [O140_Receipt_Section_txt_MTF]
  ,SCM_MTF.RCP_AGENT_SNAME                                 AS    [O150_Receipt_Agent_txt_MTF]
  ,SCM_MTF.AGENT_LOC_DIV                                   AS    [O160_Agent_Location_MTF]
  ,SCM_MTF.SALES_DEPARTMENT_SNAME                          AS    [O170_REL_Sales_Department_txt_MTF]
  ,SCM_MTF.EMS                                             AS    [O180_EMS_MTF]
  ,SCM_MTF.Sales_Planning_Grp                              AS    [O190_Sales_Planning_Grp_MTF]
  ,SCM_MTF.BF_Channel                                      AS    [O200_BF_Channel_MTF]
  ,SCM_MTF.HI_CORP_CD                                      AS    [O210_End_Customer_MTF]
  ,SCM_MTF.REGION                                          AS    [O220_Region]
  ,SCM_MTF.SALEMAN                                         AS    [O230_Saleman]
  ,MTF.CUSTOMERCD                                          AS    [O240_MTF_Aggregated_SCMCD]
  ,MTF.CUSTOMERNAME                                        AS    [O250_MTF_Aggregated_Customer_txt]
  ,MTF.PARTNO                                              AS    [O260_MTF_Aggregated_PN]
  ,MTF.MTFRATE                                             AS    [O270_MTF_Rate]
  ,CMST01.VALUE_NAME                                       AS    [O280_Rainbow_Duplication_txt]
  ,CMST02.VALUE_NAME                                       AS    [O290_MTF_Attribute_txt]
  ,BOOK_MTF.MCU_SOC_AP_KBN                                 AS    [P010_MCU_SOC_AP_KBN_MTF]
  ,BOOK_MTF.DESIGN_GROUP_UNIT_TXT                          AS    [P020_Design_Group_Unit_txt_MTF]
  ,BOOK_MTF.DESIGN_GROUP_DIVISION_TXT                      AS    [P030_Design_Group_Division_txt_MTF]
  ,BOOK_MTF.DESIGN_GROUP_DEPARTMENT_TXT                    AS    [P035_Design_Group_Department_MTF]
  ,BOOK_MTF.RENESAS_PN                                     AS    [P040_Renesas_PN_MTF]
  ,BOOK_MTF.ORDER_PRODUCT_STATUS                           AS    [P050_Order_Product_Status_MTF]
  ,BOOK_MTF.ORDER_PRODUCT_STATUS_TXT                       AS    [P060_Order_Product_Status_txt_MTF]
  ,BOOK_MTF.EOL_POLICY_TYPE                                AS    [P070_EOL_POLICY_TYPE_MTF]
  ,SCM_MTF.PRICE_DIV                                       AS    [P080_PRICE_CODE_MTF]
  ,BOOK_MTF.PRICE_PN                                       AS    [P090_Pricing_PN_MTF]
  ,REV.RR_BU_DIVISION_TXT                                  AS    [Q010_Revenue_Recognition_BU_Division_txt_MTF]
  ,REV.RR_BU_UNIT_TXT                                      AS    [Q020_Revenue_Recognition_BU_Unit_txt_MTF]
  ,REV.RR_BU_DEPARTMENT_TXT                                AS    [Q030_Revenue_Recognition_BU_Department_txt_MTF]
  ,REV.RR_BU_SECTION_TXT                                   AS    [Q040_Revenue_Recognition_BU_Section_txt_MTF]
FROM
  [BI_DM].[dbo].[F_SFM_DEMAND_PERIOD_HORIZ_AXIS] CRM

LEFT OUTER JOIN
(
  SELECT DISTINCT
    OPPORTUNITY_SEQ
   ,OPPORTUNITY_NO
   ,OPPORTUNITY_SEQ_PRD
   ,TARGET_NOMINATION_DATE_D
   ,TARGET_AWARD_DATE_D
   ,APPROVED_DATE
   ,SALES_ORDER_PN_FOR_MTF
   ,D_IN_SCM_CUST_CODE_FOR_MTF
   ,OPP_APPLICATION1_CODE
   ,OPP_APPLICATION2_CODE
   ,OPP_APPLICATION3_CODE
   ,D_IN_SCM_CUST_CODE_FOR_SCM_OPE
   ,SALES_ORDER_PN_FOR_SCM_OPE
   ,B_WIN_SCM_CUSTOMER_CODE
   ,MP_START_DATE
  FROM
    [BI_DM].[dbo].[VT_SFM_OPP_PRD_DEMAND_L]
) PRD
ON
  PRD.OPPORTUNITY_SEQ                = CRM.OPPORTUNITY_SEQ

LEFT OUTER JOIN
(
  SELECT
    OPPORTUNITY_SEQ
   ,OPPORTUNITY_NO
   ,OPPORTUNITY_SEQ_PRD
   ,CURRENCY_TYPE
   ,SUM(LTVAMT) AS LTVAMT
  FROM
    [BI_DM].[dbo].[VF_RBW_LTVGRAPHDIN_L]
  GROUP BY
    OPPORTUNITY_SEQ
   ,OPPORTUNITY_NO
   ,OPPORTUNITY_SEQ_PRD
   ,CURRENCY_TYPE
) LTV
ON
  PRD.OPPORTUNITY_SEQ                = LTV.OPPORTUNITY_SEQ
  AND PRD.OPPORTUNITY_NO             = LTV.OPPORTUNITY_NO
  AND PRD.OPPORTUNITY_SEQ_PRD        = LTV.OPPORTUNITY_SEQ_PRD
  AND CRM.CURRENCY_TYPE              = LTV.CURRENCY_TYPE

LEFT OUTER JOIN
  [BI_DM].[dbo].[M_CAL_CALENDAR_CRM]          NOMINATION
ON
  PRD.TARGET_NOMINATION_DATE_D       = NOMINATION.DAY

LEFT OUTER JOIN
  [BI_DM].[dbo].[M_CAL_CALENDAR_CRM]          AWARD
ON
  PRD.TARGET_AWARD_DATE_D            = AWARD.DAY

LEFT OUTER JOIN
  [BI_DM].[dbo].[M_CAL_CALENDAR_CRM]          MP
ON
  PRD.MP_START_DATE                  = MP.DAY

LEFT OUTER JOIN
  [BI_DM].[dbo].[M_CAL_CALENDAR_CRM]          APPROVED
ON
  PRD.APPROVED_DATE                  = APPROVED.DAY

LEFT OUTER JOIN
  [BI_DM].[dbo].[V_MST_BOOKPN_CUST_APL]        REV
ON
  PRD.SALES_ORDER_PN_FOR_MTF         = REV.BOOKING_PN_CD
  AND PRD.D_IN_SCM_CUST_CODE_FOR_MTF = REV.SCM_CUSTOMER

LEFT OUTER JOIN
  [VD_APL1_ALL]                      APL1
ON
  PRD.OPP_APPLICATION1_CODE          = APL1.APL1
LEFT OUTER JOIN
  [VD_APL2_ALL]                      APL2
ON
  PRD.OPP_APPLICATION2_CODE          = APL2.APL2
LEFT OUTER JOIN
  [VD_APL3_ALL]                      APL3
ON
  PRD.OPP_APPLICATION3_CODE          = APL3.APL3
LEFT OUTER JOIN
  [BI_DM].[dbo].[VD_SFM_OPP]                   OPP
ON
  PRD.OPPORTUNITY_NO                 = OPP.OPPORTUNITY_NO
LEFT OUTER JOIN
  [BI_DM].[dbo].[VD_SFM_PROD]                  PROD
ON
  PRD.OPPORTUNITY_SEQ                = PROD.OPPORTUNITY_SEQ
LEFT OUTER JOIN
  [BI_DM].[dbo].[VD_CMN_SCM_CUSTOMER]          SCM_MTF
ON
  PRD.D_IN_SCM_CUST_CODE_FOR_MTF     = SCM_MTF.SCM_CUSTOMER_CD
LEFT OUTER JOIN
  [BI_DM].[dbo].[V_MST_BOOK_PN]                BOOK_MTF
ON
  PRD.SALES_ORDER_PN_FOR_MTF         = BOOK_MTF.BOOKING_PN_CD
LEFT OUTER JOIN
( 
  SELECT DISTINCT
    [OPPSEQ]
   ,[LATESTLTVCURRENCYCD]
  FROM
    [BI_DW].[dbo].[T_RBW_LTVGRAPHDIN_BI_V]
) T_LTV
ON
  PRD.OPPORTUNITY_SEQ                = T_LTV.OPPSEQ

LEFT OUTER JOIN
 [BI_DM].[dbo].[F_RBW_MTF_L]                   MTF
ON
 PRD.OPPORTUNITY_SEQ                 = MTF.OPPSEQ
--20171017ëOìcDuplidivêßå¿
 AND MTF.DUPLILTVDIV in (1,4)

LEFT OUTER JOIN
 [BI_DM].[dbo].[M_CRM_MST]                     CMST01
ON
 MTF.DUPLILTVDIV                     = CMST01.CODE_VALUE
AND
 CMST01.CODE_ID                      = 'C001'

LEFT OUTER JOIN
 [BI_DM].[dbo].[M_CRM_MST]                     CMST02
ON
 MTF.MTFDATADIV                     = CMST02.CODE_VALUE
AND
 CMST02.CODE_ID                      = 'C002'










GO
