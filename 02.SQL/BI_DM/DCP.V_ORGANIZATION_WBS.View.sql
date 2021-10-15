USE [BI_DM]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [DCP].[V_ORGANIZATION_WBS]
AS
SELECT
 W.WBS
, D.BUSINESS_SITE_CD + D.UNIT_CD AS UNIT_CD
, U.UNIT_SHORT_NAME_EN
, U.UNIT_SHORT_NAME_JA
, W.DIVISION_CD
, D.DIVISION_SHORT_NAME_EN
, D.DIVISION_SHORT_NAME_JA
, LEFT(W.BUMON_CD,3) AS COST_CENTER_CD
, W.BUMON_CD AS COST_CENTER_TXT
FROM M_DCP_WBS W

LEFT JOIN V_WA_R_DIVISION D
--LEFT JOIN DCP.M_WA_R_DIVISION_20160404 D
ON W.DIVISION_CD = D.BUSINESS_SITE_CD + D.UNIT_CD + D.DIVISION_CD

LEFT JOIN V_WA_R_UNIT U
--LEFT JOIN DCP.M_WA_R_UNIT_20160404 U
ON D.BUSINESS_SITE_CD = U.BUSINESS_SITE_CD
AND D.UNIT_CD = U.UNIT_CD




GO
