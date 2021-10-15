USE [BI_DM]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO





CREATE view [DCP].[VD_WBS_DELIBERATION]
AS
/*
*	WBSÌÅIRcÌr[
*	RcÀ{úÌWBSÌÅIúÌàÌðo
*/
SELECT
	[WBS]
      ,[DELIBERATION_CD]
      ,[EXPECTED_DATE]
      ,[EXECUTION_DATE]
      ,[RESULT]
      ,[CHAIRMAN]
      ,[CURRENCY_CODE]
      ,[EXCHANGE_RATE]
      ,CAST([LAST_FLG] AS tinyint) AS LAST_DELIBERATION_FLG
      ,[DCP_UPDATETIME],[REG_DATETIME]
      ,[UPD_DATETIME]
FROM [dbo].[M_DCP_WBS_DELIBERATION] T1







GO
