USE [BI_DM]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [dbo].[V_MST_APL_CUST_BOOK_PN]
AS
SELECT DISTINCT
       ISNULL(RR_BU_UNIT_TXT, 'UnKnown') AS RR_BU_UNIT_TXT
FROM [dbo].[M_APL_CUST_BOOK_PN]



GO
