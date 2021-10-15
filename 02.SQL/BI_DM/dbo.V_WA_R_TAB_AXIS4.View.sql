USE [BI_DM]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[V_WA_R_TAB_AXIS4] AS
SELECT
BOOKING_PN
,SCM_CUSTOMER_CD
,TP1_Unit_Price
,TP2_Unit_Price
,SRP_Unit_Price
,Product_Class
,Central_Qty
,Target_Operational_Profit_Ratio
,Pb_Free_flag_for_TP
,Low_Operation_Rate_Machine_for_TP
,Standard_Package_flag
,Operating_Profit_Unit_Price_for_TP
,Corporate_Cost_Unit_Price_for_TP
,Standard_Price_for_TP
,GOR_for_TP
FROM [BI_DM].[dbo].[M_R_TAB_AXIS4]

GO