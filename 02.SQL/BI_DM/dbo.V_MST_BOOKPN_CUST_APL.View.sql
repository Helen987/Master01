USE [BI_DM]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [dbo].[V_MST_BOOKPN_CUST_APL]
AS
SELECT [BOOKING_PN]
      ,[BOOKING_PN_CD]
      ,[SCM_CUSTOMER]
      ,[APL1]
      ,[APL1_TXT]
      ,[APL2]
      ,[APL2_TXT]
      ,[APL3]
      ,[APL3_TXT]
      ,[RR_BU_BUSINESS_SITE_TXT]
      ,[RR_BU_UNIT_TXT]
      ,[RR_BU_DIVISION_TXT]
      ,[RR_BU_DEPARTMENT_TXT]
      ,[RR_BU_SECTION_TXT]
      ,[SEGMENT_BU]
      ,[FREE_ITEM_01]
      ,[FREE_ITEM_02]
      ,[AFFECT_GST]
      ,[GST_1]
      ,[GST_2]
      ,[APL_FREE_ITEM01]
      ,[APL_FREE_ITEM02]
      ,[APL_FREE_ITEM03]
      ,[APL_FREE_ITEM04]
      ,[APL_FREE_ITEM05]
      ,[INS_DATE]
      ,[INS_TIME]
      ,[UPD_DATE]
      ,[UPD_TIME]
	  ,[FIXED_APL1] 
	  ,[FIXED_APL1_TXT]	          
      ,[FIXED_APL2]		           
      ,[FIXED_APL2_TXT]	   
      ,[FIXED_APL3]		   
      ,[FIXED_APL3_TXT]	   
      ,[LATEST_APL_REVENUE_BU_BUSI] 	
      ,[LATEST_APL_REVENUE_BU_UNIT] 	
      ,[LATEST_APL_REVENUE_BU_DIVI] 	
      ,[LATEST_APL_REVENUE_BU_DEPA] 	
      ,[LATEST_APL_REVENUE_BU_SECT] 	
      ,[FIXED_APL_SEGMENT]       
      ,[FIXED_APL_SUB_SEGMENT]	  	
      ,[FIXED_APL_INVEST_LABEL]  		
      ,[LATEST_APL_SEGMENT]	 	
      ,[LATEST_APL_SUB_SEGMENT]  	
      ,[LATEST_APL_INVEST_LABEL] 

FROM [dbo].[M_APL_CUST_BOOK_PN]




GO
