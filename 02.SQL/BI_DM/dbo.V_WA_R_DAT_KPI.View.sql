USE [BI_DM]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO





CREATE view [dbo].[V_WA_R_DAT_KPI]
as
SELECT * FROM OPENQUERY([WA]
	, 'SELECT * FROM UWA00001.R_DAT') D
WHERE Exists(
	SELECT DISTINCT [SUMMARY_CODE] FROM [BI_DR].[dbo].[M_KPI_DICT] KPI
	WHERE D.DAT_ID = KPI.[SUMMARY_CODE])





GO
