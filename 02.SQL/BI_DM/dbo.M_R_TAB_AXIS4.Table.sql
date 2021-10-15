USE [BI_DM]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[M_R_TAB_AXIS4](
	[BOOKING_PN] [nvarchar](300) NULL,
	[SCM_CUSTOMER_CD] [nvarchar](300) NULL,
	[TP1_Unit_Price] [nvarchar](300) NULL,
	[TP2_Unit_Price] [nvarchar](300) NULL,
	[SRP_Unit_Price] [nvarchar](300) NULL,
	[Product_Class] [nvarchar](300) NULL,
	[Central_Qty] [nvarchar](300) NULL,
	[Target_Operational_Profit_Ratio] [nvarchar](300) NULL,
	[Pb_Free_flag_for_TP] [nvarchar](300) NULL,
	[Low_Operation_Rate_Machine_for_TP] [nvarchar](300) NULL,
	[Standard_Package_flag] [nvarchar](300) NULL,
	[Operating_Profit_Unit_Price_for_TP] [nvarchar](300) NULL,
	[Corporate_Cost_Unit_Price_for_TP] [nvarchar](300) NULL,
	[Standard_Price_for_TP] [nvarchar](300) NULL,
	[GOR_for_TP] [nvarchar](300) NULL
) ON [BI_DM_Dimension]
WITH
(
DATA_COMPRESSION = PAGE
)

GO
