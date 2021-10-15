USE [BI_DM]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


				
				
				
CREATE VIEW [dbo].[VU_MT_CUSTOMER]				
AS				
SELECT [SCM_CUSTOMER]	AS	[SCM_Customer]
      ,[SCM_CUSTOMER_TXT_S]	AS	[SCM_Customer_txt_S]
      ,[SCM_CUSTOMER_TXT_L]	AS	[SCM_Customer_txt_L]
      ,[BF_CHANNEL]	AS	[BF_Channel]
      ,[RECEIPT_RENESASGROUP]	AS	[Receipt_RenesasGroup]
      ,[RECEIPT_RENESASGROUP_TXT]	AS	[Receipt_RenesasGroup_txt]
      ,[RECEIPT_UNIT]	AS	[Receipt_Unit]
      ,[RECEIPT_UNIT_TXT]	AS	[Receipt_Unit_txt]
      ,[RECEIPT_DIVISION]	AS	[Receipt_Division]
      ,[RECEIPT_DIVISION_TXT]	AS	[Receipt_Division_txt]
      ,[RECEIPT_DEPT]	AS	[Receipt_Dept]
      ,[RECEIPT_DEPT_TXT]	AS	[Receipt_Dept_txt]
      ,[RECEIPT_SECTION]	AS	[Receipt_Section]
      ,[RECEIPT_SECTION_TXT]	AS	[Receipt_Section_txt]
      ,[RECEIPT_AGENT]	AS	[Receipt_Agent]
      ,[RECEIPT_AGENT_TXT]	AS	[Receipt_Agent_txt]
      ,[AGENT_LOCATION]	AS	[Agent_Location]
      ,[NIKKEI_WW_FLG]	AS	[NIKKEI_WW_FLG]
    --20190904_明細ViewのSCM顧客マスタViewと受注型名マスタViewの項目追加対応 Start
      ,[FREEITEM09]	AS	[Freeitem09]
    --20190904_明細ViewのSCM顧客マスタViewと受注型名マスタViewの項目追加対応 End
      ,[FREEITEM10]	AS	[Freeitem10]
      ,[SALES_RT1]	AS	[Sales_Rt1]
      ,[SALES_RT1_TXT]	AS	[Sales_Rt1_txt]
      ,[SALES_RT2]	AS	[Sales_Rt2]
      ,[SALES_RT2_TXT]	AS	[Sales_Rt2_txt]
      ,[SCM_CUSTOMER_PREFECTURE]	AS	[SCM_Customer_Prefecture]
      ,[SCM_CUSTOMER_COUNTRY]	AS	[SCM_Customer_Country]
      ,[SCM_CUSTOMER_AREA_1]	AS	[SCM_Customer_Area_1]
      ,[SCM_CUSTOMER_AREA_1_T]	AS	[SCM_Customer_Area_1_T]
      ,[SCM_CUSTOMER_AREA_2]	AS	[SCM_Customer_Area_2]
      ,[SCM_CUSTOMER_AREA_2_T]	AS	[SCM_Customer_Area_2_T]
      ,[SCM_CUSTOMER_AREA_3]	AS	[SCM_Customer_Area_3]
      ,[SCM_CUSTOMER_AREA_3_T]	AS	[SCM_Customer_Area_3_T]
      ,[SCM_PARENT_CORP_CD_SFM]	AS	[SCM_Parent_Corp_CD_SFM]
      ,[SCM_PARENT_CORP_NAME_SFM]	AS	[SCM_Parent_Corp_Name_SFM]
      ,[SCM_PARENT_CORP_COUNTRY_SFM]	AS	[SCM_Parent_Corp_Country_SFM]
      ,[SCM_PARENT_CORP_AREA_1_SFM]	AS	[SCM_Parent_Corp_Area_1_SFM]
      ,[SCM_PARENT_CORP_AREA_1_SFM_T]	AS	[SCM_Parent_Corp_Area_1_SFM_T]
      ,[SCM_PARENT_CORP_AREA_2_SFM]	AS	[SCM_Parent_Corp_Area_2_SFM]
      ,[SCM_PARENT_CORP_AREA_2_SFM_T]	AS	[SCM_Parent_Corp_Area_2_SFM_T]
      ,[SCM_PARENT_CORP_AREA_3_SFM]	AS	[SCM_Parent_Corp_Area_3_SFM]
      ,[SCM_PARENT_CORP_AREA_3_SFM_T]	AS	[SCM_Parent_Corp_Area_3_SFM_T]
      ,[SCM_PARENT_CORP_CD_CORP]	AS	[SCM_Parent_Corp_CD_Corp]
      ,[SCM_PARENT_CORP_NAME_CORP]	AS	[SCM_Parent_Corp_Name_Corp]
      ,[SCM_PARENT_CORP_COUNTRY_CORP]	AS	[SCM_Parent_Corp_Country_Corp]
      ,[SCM_PARENT_CORP_AREA_1_CORP]	AS	[SCM_Parent_Corp_Area_1_Corp]
      ,[SCM_PARENT_CORP_AREA_1_CORP_T]	AS	[SCM_Parent_Corp_Area_1_Corp_T]
      ,[SCM_PARENT_CORP_AREA_2_CORP]	AS	[SCM_Parent_Corp_Area_2_Corp]
      ,[SCM_PARENT_CORP_AREA_2_CORP_T]	AS	[SCM_Parent_Corp_Area_2_Corp_T]
      ,[SCM_PARENT_CORP_AREA_3_CORP]	AS	[SCM_Parent_Corp_Area_3_Corp]
      ,[SCM_PARENT_CORP_AREA_3_CORP_T]	AS	[SCM_Parent_Corp_Area_3_Corp_T]
      ,[SCM_PARENT_CORP_CD_GRP]	AS	[SCM_Parent_Corp_CD_GRP]
      ,[SCM_PARENT_CORP_NAME_GRP]	AS	[SCM_Parent_Corp_Name_GRP]
      ,[END_CUST_CD_CORP]	AS	[End_Cust_CD_Corp]
      ,[END_CUST_NAME_CORP]	AS	[End_Cust_Name_Corp]
      ,[END_CUST_COUNTRY_CORP]	AS	[End_Cust_Country_Corp]
      ,[END_CUST_AREA_1_CORP]	AS	[End_Cust_Area_1_Corp]
      ,[END_CUST_AREA_1_CORP_T]	AS	[End_Cust_Area_1_Corp_T]
      ,[END_CUST_AREA_2_CORP]	AS	[End_Cust_Area_2_Corp]
      ,[END_CUST_AREA_2_CORP_T]	AS	[End_Cust_Area_2_Corp_T]
      ,[END_CUST_AREA_3_CORP]	AS	[End_Cust_Area_3_Corp]
      ,[END_CUST_AREA_3_CORP_T]	AS	[End_Cust_Area_3_Corp_T]
    --20190904_明細ViewのSCM顧客マスタViewと受注型名マスタViewの項目追加対応 Start
--      ,[CUSTOMER_GRP2] AS [Customer_Grp1]
--      ,[CUSTOMER_GRP1] AS [Customer_Grp2]
      ,[CUSTOMER_GRP2] AS [Customer_Grp2]
      ,[CUSTOMER_GRP1] AS [Customer_Grp1]
    --20190904_明細ViewのSCM顧客マスタViewと受注型名マスタViewの項目追加対応 End
      ,[CUSTOMER_GRPCOUNTRY]	AS	[Customer_GrpCountry]
      ,[SALES_PLANNING_GRP]	AS	[Sales_Planning_Grp]
      ,[INTERNALFLG]	AS	[InternalFLG]
      ,[INTERNALFLG_TXT]	AS	[InternalFLG_txt]
      ,[SCM_CUSTOMER_RANK]	AS	[SCM_Customer_Rank]
      ,[PRICE_CODE]	AS	[Price_Code]
      ,[SCM_SO_DIRECT_SHIP]	AS	[SCM_So_Direct_Ship]
      ,[SCM_SO_DIRECT_SHIP_TXT]	AS	[SCM_So_Direct_Ship_txt]
      ,[REL_SALES_SITE]	AS	[REL_Sales_Site]
      ,[REL_SALES_SITE_TXT]	AS	[Rel_Sales_Site_txt]
      ,[REL_SALES_UNIT]	AS	[REL_Sales_Unit]
      ,[REL_SALES_UNIT_TXT]	AS	[REL_Sales_Unit_txt]
      ,[REL_SALES_DIVISION]	AS	[REL_Sales_Division]
      ,[REL_SALES_DIVISION_TXT]	AS	[REL_Sales_Division_txt]
      ,[REL_SALES_DEPARTMENT]	AS	[REL_Sales_Department]
      ,[REL_SALES_DEPARTMENT_TXT]	AS	[REL_Sales_Department_txt]
      ,[REL_SALES_SECTION]	AS	[REL_Sales_Section]
      ,[REL_SALES_SECTION_TXT]	AS	[REL_Sales_Section_txt]
      ,[SCM_LOCK]	AS	[SCM_Lock]
    --20190703_KIS折衷案 Start
    --20190904_明細ViewのSCM顧客マスタViewと受注型名マスタViewの項目追加対応 Start
--      ,[BUSINESS_SITE_CD]	AS	[Sales_Accounting_Company]
    --20190904_明細ViewのSCM顧客マスタViewと受注型名マスタViewの項目追加対応 End
    --20190703_KIS折衷案 End
      ,[INS_DATE]	AS	[INS_Date]
      ,[INS_TIME]	AS	[INS_Time]
      ,[UPD_DATE]	AS	[UPD_Date]
      ,[UPD_TIME]	AS	[UPD_Time]
    --20190904_明細ViewのSCM顧客マスタViewと受注型名マスタViewの項目追加対応 Start
      ,[EMS]	AS	[EMS]
      ,[APPLICANT_REGION_CD]	AS	[Sales Accounting Company Code]
      ,[BUSINESS_SITE_CD]	AS	[Sales Accounting Company]
    --20190904_明細ViewのSCM顧客マスタViewと受注型名マスタViewの項目追加対応 End
FROM [BI_DM].[dbo].[M_SCM_CUST]				
				
				
				

GO
