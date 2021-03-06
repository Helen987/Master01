USE [BI_DM]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE VIEW [DCP].[VF_SAL_BILL_GO] AS


SELECT
	CAST(ISNULL(P.DEVELOP_NO, '$ACT$') AS NVARCHAR(30)) AS WBS
	, CAST('$ACT$' AS NVARCHAR(6)) AS DELIBERATION_CD
	, CAST(FORMAT(RECORD_DATE,'yyyy-MM-01') AS DATE) AS CALENDAR_YM
	, RECORD_DATE
	, CAST(ISNULL(B.ORDER_PART_NO_CD, '$ACT$') AS NVARCHAR(18)) AS ORDER_PART_NO_CD
	, CAST(ISNULL(B.SCM_CUSTOMER_CD, '$ACT$') AS NVARCHAR(10)) AS SCM_CUSTOMER_CD
	, '2' AS HORIZON_ID
	, P.DESIGN_GROUP_UNIT
	, P.DESIGN_GROUP_DIVISION

	, B.GO_AMT_JPY AS REVENUE
	, B.GO_AMT_STD AS SC_AMT
	, B.GO_AMT_JPY - B.GO_AMT_STD AS GP_AMT
	, B.GO_QTY AS VOLUME

FROM F_SAL_BILL_GO B

LEFT JOIN V_MST_BOOK_PN P
ON B.ORDER_PART_NO_CD = P.BOOKING_PN_CD


GO
