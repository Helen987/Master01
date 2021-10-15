USE [BI_DM]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[VD_SAL_RAINBOW_UPDATE] AS SELECT [A].[UPDATE_DATE]
      ,CAST(CONVERT(NVARCHAR, [A].[UPDATE_DATE], 111) AS NVARCHAR(20)) AS [UPDATE_DATE_TEXT]
      ,CAST(
       CASE DATEPART(WEEKDAY, [A].[UPDATE_DATE])
       WHEN N'1' THEN N'Sunday'
       WHEN N'2' THEN N'Monday'
       WHEN N'3' THEN N'Tuesday'
       WHEN N'4' THEN N'Wednesday'
       WHEN N'5' THEN N'Thursday'
       WHEN N'6' THEN N'Friday'
       WHEN N'7' THEN N'Saturday'
       END AS NVARCHAR(20)) AS [WEEK]
      ,CAST( CASE WHEN [A].[UPDATE_DATE] =
             (SELECT MAX([M].[UPDATE_DATE]) FROM  (
                                             SELECT DISTINCT [UPDATE_DATE]
                                               FROM [BI_DM].[dbo].[F_SAL_FHPNO_CST_ALLSUM]
                                              UNION
                                             SELECT DISTINCT [UPDATE_DATE]
                                               FROM [BI_DM].[dbo].[F_SAL_V1JSF]
                                              UNION
                                             SELECT DISTINCT [UPDATE_DATE]
                                               FROM [BI_DM].[dbo].[F_SAL_TOGOTRADE_INV]
                                              UNION
                                             SELECT DISTINCT [UPDATE_DATE]
                                               FROM [BI_DM].[dbo].[F_SAL_FIXED_PPPRODPLAN]
                                              UNION
                                              SELECT DISTINCT [UPDATE_DATE]
                                                FROM [BI_DM].[dbo].[T_PRO_RAINBOWDATA]
                                            ) AS [M] ) 
            THEN N'LatestDate' 
            ELSE NULL 
            END AS NVARCHAR(10)) AS [LATEST_DATE_TYPE]

FROM
(
SELECT DISTINCT [UPDATE_DATE]
  FROM [BI_DM].[dbo].[F_SAL_FHPNO_CST_ALLSUM]
 UNION
SELECT DISTINCT [UPDATE_DATE]
  FROM [BI_DM].[dbo].[F_SAL_V1JSF]
 UNION
SELECT DISTINCT [UPDATE_DATE]
  FROM [BI_DM].[dbo].[F_SAL_TOGOTRADE_INV]
 UNION
SELECT DISTINCT [UPDATE_DATE]
  FROM [BI_DM].[dbo].[F_SAL_FIXED_PPPRODPLAN]
 UNION
SELECT DISTINCT [UPDATE_DATE]
  FROM [BI_DM].[dbo].[T_PRO_RAINBOWDATA]
) AS [A]
;
GO
