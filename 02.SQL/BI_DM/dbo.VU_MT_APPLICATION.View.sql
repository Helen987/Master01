USE [BI_DM]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[VU_MT_APPLICATION]
AS			
SELECT [BOOKING_PN]              AS	[Booking_PN]
      ,[BOOKING_PN_CD]           AS	[Booking_PN_CD]
      ,[SCM_CUSTOMER]            AS	[SCM_Customer]
      ,[APL1]                    AS	[APL1]
      ,[APL1_TXT]                AS	[APL1_txt]
      ,[APL2]                    AS	[APL2]
      ,[APL2_TXT]                AS	[APL2_txt]
      ,[APL3]                    AS	[APL3]
      ,[APL3_TXT]                AS	[APL3_txt]
      --2018/07/19 Del H.Hailun <S>
      --,[RR_BU_BUSINESS_SITE_TXT] AS	[Revenue_Recognition_BU_Business_Site_txt]
      --2018/07/19 Del H.Hailun <E>
      ,[RR_BU_UNIT_TXT]          AS	[Revenue_Recognition_BU_Unit_txt]
      ,[RR_BU_DIVISION_TXT]      AS	[Revenue_Recognition_BU_Division_txt]
      ,[RR_BU_DEPARTMENT_TXT]    AS	[Revenue_Recognition_BU_Department_txt]
      ,[RR_BU_SECTION_TXT]       AS	[Revenue_Recognition_BU_Section_txt]
      ,[SEGMENT_BU]              AS	[Segment_BU]
      ,[FREE_ITEM_01]            AS	[Free_Item_01]
      ,[FREE_ITEM_02]            AS	[Free_Item_02]
      ,[AFFECT_GST]              AS	[GST_1_AFFECT]
      ,[GST_1]                   AS	[GST_2]
      ,[GST_2]                   AS	[GST_3]
      ,[APL_FREE_ITEM01]         AS	[APL_Free_Item_01]
      ,[APL_FREE_ITEM02]         AS	[APL_Free_Item_02]
      ,[APL_FREE_ITEM03]         AS	[APL_Free_Item_03]
      ,[APL_FREE_ITEM04]         AS	[APL_Free_Item_04]
      ,[APL_FREE_ITEM05]         AS	[APL_Free_Item_05]
      ,[INS_DATE]                AS	[INS_Date]
      ,[INS_TIME]                AS	[INS_Time]
      ,[UPD_DATE]                AS	[UPD_Date]
      ,[UPD_TIME]                AS	[UPD_Time]
FROM [BI_DM].[dbo].[M_APL_CUST_BOOK_PN]


GO
