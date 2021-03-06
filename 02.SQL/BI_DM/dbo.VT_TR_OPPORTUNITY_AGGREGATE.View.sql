USE [BI_DM]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[VT_TR_OPPORTUNITY_AGGREGATE]
AS
SELECT 
 [Conversion_Currency]
,[Design_Region]
,[Tracking_Type_Status]
,[Tracking_Type_Status_Code]
,[Open_Dead_Status]
,[Stage_Type]
,[Stage_Sub_Type]
,[Mother_Daughter]
,[Stage_Code]
,[Type_Stage]
,[Stage_Detail]
,[Opportunity_Discernment]
,[Campaign_Name]
,[Lead_Name]
,[Share_Up]
,[Daughter_Design_Region]
,[Offshore_Customer_Conversion]
,[Opportunity]
,[Opportunity_Seq]
,[Unique_Opportunity_Seq]
,[Opportunity_Name]
,[Project_Name_Award]
,[Customer_Grp2]
,[End_Customer_Name]
,[End_Customer_Opp]
,[End_Customer_Country]
,[Channel_Partner_Name]
,[URL_Opp_Product_For_REL]
,[APL1_Opp_Code]
,[APL1_Opp]
,[APL2_Opp_Code]
,[APL2_Opp]
,[APL3_Opp_Code]
,[APL3_Opp]
,[Application_Note]
,[GST_1_AFFECT_Opp]
,[GST_2_Opp]
,[GST_3_Opp]
,[Segment]
,[SubSegment]
,[Invest_Label]
,[Din_Target_Half]
,[Din_Target_Month]
,[Din_Target_Date]
,[Din_Confidence_Level]
,[Din_Request_Date]
,[Din_Actual_Date]
,[Target_Nomination_Date]
,[Nomination_Confidence_Level]
,[Nomination_Request_Date]
,[Target_Award_Date]
,[Award_Confidence_Level]
,[Award_Request_Date]
,[Progress]
,[MP_Start_Half]
,[MP_Start_Month]
,[MP_Start_Date]
,[MP_End_Date]
,[Duration_Month]
,[Estimated_Annual_Usage_Per_Year]
,[Pieces_Per_Customer_Set]
,[Share_Rate]
,[Forecast_Type]
,[Currency_ISO_Code]
,[Under_FY(N-1)_Demand_Qty]
,[1Q_FY(N)_1-3_Demand_Qty]
,[2Q_FY(N)_4-6_Demand_Qty]
,[3Q_FY(N)_7-9_Demand_Qty]
,[4Q_FY(N)_10-12_Demand_Qty]
,[1H_FY(N+1)_Demand_Qty]
,[2H_FY(N+1)_Demand_Qty]
,[1H_FY(N+2)_Demand_Qty]
,[2H_FY(N+2)_Demand_Qty]
,[FY(N+3)_Demand_Qty]
,[FY(N+4)_Demand_Qty]
,[FY(N+5)_Demand_Qty]
,[FY(N+6)_Demand_Qty]
,[FY(N+7)_Demand_Qty]
,[FY(N+8)_Demand_Qty]
,[FY(N+9)_Demand_Qty]
,[Over_FY(N+10)_Demand_Qty]
,[Asof_Current_RFY_Total_Quantity]
,CAST(ISNULL([Under_FY(N-1)_Demand_Amt]/NULLIF([Under_FY(N-1)_Demand_Qty],0),0) AS NUMERIC(37,4)) AS [Under_FY(N-1)_Avg_Price]
,CAST(ISNULL([1Q_FY(N)_1-3_Demand_Amt]/NULLIF([1Q_FY(N)_1-3_Demand_Qty],0),0) AS NUMERIC(37,4)) AS [1Q_FY(N)_1-3_Avg_Price]
,CAST(ISNULL([2Q_FY(N)_4-6_Demand_Amt]/NULLIF([2Q_FY(N)_4-6_Demand_Qty],0),0) AS NUMERIC(37,4)) AS [2Q_FY(N)_4-6_Avg_Price]
,CAST(ISNULL([3Q_FY(N)_7-9_Demand_Amt]/NULLIF([3Q_FY(N)_7-9_Demand_Qty],0),0) AS NUMERIC(37,4)) AS [3Q_FY(N)_7-9_Avg_Price]
,CAST(ISNULL([4Q_FY(N)_10-12_Demand_Amt]/NULLIF([4Q_FY(N)_10-12_Demand_Qty],0),0) AS NUMERIC(37,4)) AS [4Q_FY(N)_10-12_Avg_Price]
,CAST(ISNULL([1H_FY(N+1)_Demand_Amt]/NULLIF([1H_FY(N+1)_Demand_Qty],0),0) AS NUMERIC(37,4)) AS [1H_FY(N+1)_Avg_Price]
,CAST(ISNULL([2H_FY(N+1)_Demand_Amt]/NULLIF([2H_FY(N+1)_Demand_Qty],0),0) AS NUMERIC(37,4)) AS [2H_FY(N+1)_Avg_Price]
,CAST(ISNULL([1H_FY(N+2)_Demand_Amt]/NULLIF([1H_FY(N+2)_Demand_Qty],0),0) AS NUMERIC(37,4)) AS [1H_FY(N+2)_Avg_Price]
,CAST(ISNULL([2H_FY(N+2)_Demand_Amt]/NULLIF([2H_FY(N+2)_Demand_Qty],0),0) AS NUMERIC(37,4)) AS [2H_FY(N+2)_Avg_Price]
,CAST(ISNULL([FY(N+3)_Demand_Amt]/NULLIF([FY(N+3)_Demand_Qty],0),0) AS NUMERIC(37,4)) AS [FY(N+3)_Avg_Price]
,CAST(ISNULL([FY(N+4)_Demand_Amt]/NULLIF([FY(N+4)_Demand_Qty],0),0) AS NUMERIC(37,4)) AS [FY(N+4)_Avg_Price]
,CAST(ISNULL([FY(N+5)_Demand_Amt]/NULLIF([FY(N+5)_Demand_Qty],0),0) AS NUMERIC(37,4)) AS [FY(N+5)_Avg_Price]
,CAST(ISNULL([FY(N+6)_Demand_Amt]/NULLIF([FY(N+6)_Demand_Qty],0),0) AS NUMERIC(37,4)) AS [FY(N+6)_Avg_Price]
,CAST(ISNULL([FY(N+7)_Demand_Amt]/NULLIF([FY(N+7)_Demand_Qty],0),0) AS NUMERIC(37,4)) AS [FY(N+7)_Avg_Price]
,CAST(ISNULL([FY(N+8)_Demand_Amt]/NULLIF([FY(N+8)_Demand_Qty],0),0) AS NUMERIC(37,4)) AS [FY(N+8)_Avg_Price]
,CAST(ISNULL([FY(N+9)_Demand_Amt]/NULLIF([FY(N+9)_Demand_Qty],0),0) AS NUMERIC(37,4)) AS [FY(N+9)_Avg_Price]
,CAST(ISNULL([Over_FY(N+10)_Demand_Amt]/NULLIF([Over_FY(N+10)_Demand_Qty],0),0) AS NUMERIC(37,4)) AS [Over_FY(N+10)_Avg_Price]
,[Under_FY(N-1)_Demand_GO_Price]
,[1Q_FY(N)_1-3_Demand_GO_Price]
,[2Q_FY(N)_4-6_Demand_GO_Price]
,[3Q_FY(N)_7-9_Demand_GO_Price]
,[4Q_FY(N)_10-12_Demand_GO_Price]
,[1H_FY(N+1)_Demand_GO_Price]
,[2H_FY(N+1)_Demand_GO_Price]
,[1H_FY(N+2)_Demand_GO_Price]
,[2H_FY(N+2)_Demand_GO_Price]
,[FY(N+3)_Demand_GO_Price]
,[FY(N+4)_Demand_GO_Price]
,[FY(N+5)_Demand_GO_Price]
,[FY(N+6)_Demand_GO_Price]
,[FY(N+7)_Demand_GO_Price]
,[FY(N+8)_Demand_GO_Price]
,[FY(N+9)_Demand_GO_Price]
,[Over_FY(N+10)_Demand_GO_Price]
,[Under_FY(N-1)_Demand_Amt]
,[1Q_FY(N)_1-3_Demand_Amt]
,[2Q_FY(N)_4-6_Demand_Amt]
,[3Q_FY(N)_7-9_Demand_Amt]
,[4Q_FY(N)_10-12_Demand_Amt]
,[1H_FY(N+1)_Demand_Amt]
,[2H_FY(N+1)_Demand_Amt]
,[1H_FY(N+2)_Demand_Amt]
,[2H_FY(N+2)_Demand_Amt]
,[FY(N+3)_Demand_Amt]
,[FY(N+4)_Demand_Amt]
,[FY(N+5)_Demand_Amt]
,[FY(N+6)_Demand_Amt]
,[FY(N+7)_Demand_Amt]
,[FY(N+8)_Demand_Amt]
,[FY(N+9)_Demand_Amt]
,[Over_FY(N+10)_Demand_Amt]
,[Asof_Current_RFY_Total_Amount]
,[Under_FY(N-1)_Demand_GO_Amt]
,[1Q_FY(N)_1-3_Demand_GO_Amt]
,[2Q_FY(N)_4-6_Demand_GO_Amt]
,[3Q_FY(N)_7-9_Demand_GO_Amt]
,[4Q_FY(N)_10-12_Demand_GO_Amt]
,[1H_FY(N+1)_Demand_GO_Amt]
,[2H_FY(N+1)_Demand_GO_Amt]
,[1H_FY(N+2)_Demand_GO_Amt]
,[2H_FY(N+2)_Demand_GO_Amt]
,[FY(N+3)_Demand_GO_Amt]
,[FY(N+4)_Demand_GO_Amt]
,[FY(N+5)_Demand_GO_Amt]
,[FY(N+6)_Demand_GO_Amt]
,[FY(N+7)_Demand_GO_Amt]
,[FY(N+8)_Demand_GO_Amt]
,[FY(N+9)_Demand_GO_Amt]
,[Over_FY(N+10)_Demand_GO_Amt]
,[Asof_Current_RFY_Total_GO_Amount]
,[Asof_Award_Approved_RFY_Total_Amount]
,[Delta_Amount_Current_and_Din]
,[LTQ_Remaining]
,[LTV_Remaining]
,[S0_Actual_Date]
,[S1_Actual_Date]
,[S2_Actual_Date]
,[S3_Actual_Date]
,[S4_Actual_Date]
,[Created_Date]
,[Dead_Date_Product]
,[Dead_Reason]
,[Dead_Reason_Code]
,[Competitor1]
,[Competitor2]
,[Competitor3]
,[Part_No]
,[MCU_SOC_AP_KBN]
,[Product_Family]
,[CAT1]
,[CAT1_Code]
,[CAT2]
,[CAT2_Code]
,[CAT3]
,[CAT3_Code]
,[Booking_PN]
,[Booking_PN_White40]
,[Sales_Order_PN_Dummy_Flag]
,[Order_Product_Status]
,[PN_Type]
,[EOL_POLICY_TYPE]
,[PCN_Status]
,[Pricing_PN]
,[Renesas_PN]
,[Process_Name_for_Summary]
,[In_MP_Clarified_POR_from_BU]
,[PPAP_Due_Date]
,[Automotive_OEM]
,[Start_Month_of_Customer_FY_Code]
,[NDA]
,[BF_Channel]
,[Customer_Grp1]
,[End_Customer]
,[NIKKEI_WW_FLG]
,[Receipt_Agent]
,[Receipt_Unit]
,[Receipt_Division]
,[Receipt_Dept]
,[Receipt_Section]
,[Region]
,[REL_Sales_Department]
,[Sales_Planning_Grp]
,[SCM_Customer_Code]
,[SCM_Customer]
,[Design_SCM_Customer_Dummy_Flag]
,[Fulfillment_Region]
,[Fulfillment_SCM_Customer]
,[User_Last_Modified_Date_Product]
,[Opportunity_Owner]
,[Opportunity_Owner_Company]
,[Opportunity_Owner_Email]
,[Design_Group_Unit]
,[Design_Group_Division]
,[Design_Group_Department]
,[Revenue_Recognition_BU_Unit]
,[Revenue_Recognition_BU_Division]
,[Revenue_Recognition_BU_Department]
,[Revenue_Recognition_BU_Section]
FROM [BI_DM].[dbo].[F_SFM_OPPORTUNITY_DETAIL_SUM]




GO
