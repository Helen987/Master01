USE [BI_DM]
GO
/****** Object:  View [dbo].[VPRC_PRODUCT_DATASHEET_TBLR]    Script Date: 2017/03/22 16:25:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [dbo].[VPRC_PRODUCT_DATASHEET_TBLR]
AS
SELECT 
	   ID,
	   SALES_ORDER_PART_NO AS Order_Part_NO_CD,
	   BOOKING_PN_CD AS Booking_Parts_No_CD,
       DINCUSTCD AS [D-IN_SCM_Customer_CD],
       SIP_KBN AS SIP_SUB_Chip_Div,
       SELECT_KBN AS Select_Div,
       INSERT_FLG AS Insert_Flg,
       SHIYOSU AS Chips_Usages,
       PRODUCT_HOSOKU AS Product_Memo,
       QVW_PRODUCT_KBN AS QVW_Product_Div,
       DEV_COST_DATE AS DEV_Cost_Date,
       WBS,
       ROM AS ROM_Capacity,
       PROCESS_NAME AS Process_Name,
       PROCESS_NICKNAME AS Process_Nickname,
       PROCESS_NAME_SUMMARY AS Process_Name_for_Summary,
       LINE_DIAMETER as Line_Diameter,
       PROSESS_1 AS Process_Character,
       WP_LINE_NAME AS WP_Line_Name,
       UEHKEI AS Wafer_Size,
       WPP_RAP_OPM,
       WPP_RAP_OEM_KYOTEN AS WPP_RAP_OPM_PLACE,
       POLE AS Pole,
       POLE_KYOTEN AS Pole_Place,
       PKGTYPE AS Pkg_Type_Txt,
       PKGCODE AS Package_CD,
       PIN AS PIN_Number,
       CU,
       PKG_MEISAI AS Pkg_Detail_Txt,
       ASSY_LINE_NAME AS ASSY_Line_Name,
       FT_LINE_NAME AS FT_Line_Name,
       HIN_KBN AS Quality_Div,
       BUNRUI1 AS Div_Key01,
       BUNRUI2 AS Div_Key02,
       BUNRUI3 AS Div_Key03,
       BUNRUI4 AS Div_Key04,
       BUNRUI5 AS Div_Key05,
       BUNRUI6 AS Div_Key06,
       BUNRUI7 AS Div_Key07,
       BUNRUI8 AS Div_Key08,
       BUNRUI9 AS Div_Key09,
       BUNRUI10 AS Div_Key10,
       CHIP_NUM AS Chip_Number,
       RUI_BUDO AS Total_Yield,
       WP_BUDO AS WP_Yield,
       WT_BUDO AS WT_Yield,
       FT_BUDO AS FT_Yield,
       ASSY_BUDO AS ASSY_Yield,
       RENESAS_PACKAGE AS Renesas_Pkg_CD,
       RM_PKG AS RM_Pkg_CD,
       RH_PKG AS RH_Pkg_CD,
       EL_PKG AS EL_Pkg_CD
FROM   dbo.MPRC_DCP_PRODUCT_DATASHEET;







GO
