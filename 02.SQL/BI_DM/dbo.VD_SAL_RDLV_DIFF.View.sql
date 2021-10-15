USE [BI_DM]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[VD_SAL_RDLV_DIFF] AS
SELECT CAST([RDLV_DIFF] AS INT         ) AS [RDLV_DIFF]
      ,CAST(N''         AS NVARCHAR(20)) AS [RDLV_DIFF_NAME]
  FROM
(
SELECT -1 AS [RDLV_DIFF]
 UNION ALL
SELECT 0
 UNION ALL
SELECT 1
 UNION ALL
SELECT 2
 UNION ALL
SELECT 3
 UNION ALL
SELECT 4
 UNION ALL
SELECT 5
 UNION ALL
SELECT 6
 UNION ALL
SELECT 7
 UNION ALL
SELECT 8
 UNION ALL
SELECT 9
 UNION ALL
SELECT 10
 UNION ALL
SELECT 11
 UNION ALL
SELECT 12
 UNION ALL
SELECT 13
 UNION ALL
SELECT 14
 UNION ALL
SELECT 15
 UNION ALL
SELECT 16
 UNION ALL
SELECT 17
 UNION ALL
SELECT 18
 UNION ALL
SELECT 19
 UNION ALL
SELECT 20
 UNION ALL
SELECT 21
 UNION ALL
SELECT 22
 UNION ALL
SELECT 23
 UNION ALL
SELECT 24
) AS [A]
;

GO