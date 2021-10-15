USE [BI_DM]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE VIEW [dbo].[VD_APL3_L]
AS
WITH SFM_APPLICATION_CODE_ALL AS 
(
     SELECT DISTINCT 
         [APPLICATION1_CODE]
        ,[APPLICATION2_CODE]
        ,[APPLICATION3_CODE]
     FROM
         [BI_DW].[dbo].[T_SFM_BCCV_OPPORTUNITY_VIEW]
)
,
M_APPLICATION_CODE_ALL as 
(
     SELECT DISTINCT
            [APL1]
           ,[APL1_TXT]
           ,[APL2]
           ,[APL2_TXT]
     	   ,[APL3]
           ,[APL3_TXT]
           ,[AFFECT_GST]
           ,[GST_1]
           ,[GST_2]
     FROM [BI_DM].[dbo].[M_APL_CUST_BOOK_PN]
)
,
APPLICATION1_CODE_LIST AS 
(
     SELECT DISTINCT
            [APL1]
           ,[APL1_TXT]
     FROM 
            [BI_DM].[dbo].[M_APL_CUST_BOOK_PN]
)
,
APPLICATION2_CODE_LIST AS 
(
     SELECT DISTINCT
            [APL2]
           ,[APL2_TXT]
     FROM 
            [BI_DM].[dbo].[M_APL_CUST_BOOK_PN]
)
,
APPLICATION3_CODE_LIST AS 
(
     SELECT DISTINCT
            [APL3]
           ,[APL3_TXT]
     FROM
            [BI_DM].[dbo].[M_APL_CUST_BOOK_PN]
)
SELECT 
    SFM_APPLICATION_CODE_ALL.[APPLICATION1_CODE] AS APL1
   ,APPLICATION1_CODE_LIST.[APL1_TXT] AS APL1_TXT
   ,SFM_APPLICATION_CODE_ALL.[APPLICATION2_CODE] AS APL2
   ,APPLICATION2_CODE_LIST.[APL2_TXT] AS APL2_TXT
   ,SFM_APPLICATION_CODE_ALL.[APPLICATION3_CODE] AS APL3
   ,APPLICATION3_CODE_LIST.[APL3_TXT] AS APL3_TXT
   ,NULL AS [AFFECT_GST]
   ,NULL AS [GST_1]
   ,NULL AS [GST_2]
FROM SFM_APPLICATION_CODE_ALL
LEFT JOIN APPLICATION1_CODE_LIST
ON SFM_APPLICATION_CODE_ALL.[APPLICATION1_CODE] = APPLICATION1_CODE_LIST.[APL1]
LEFT JOIN APPLICATION2_CODE_LIST
ON SFM_APPLICATION_CODE_ALL.[APPLICATION2_CODE] = APPLICATION2_CODE_LIST.[APL2]
LEFT JOIN APPLICATION3_CODE_LIST
ON SFM_APPLICATION_CODE_ALL.[APPLICATION3_CODE] = APPLICATION3_CODE_LIST.[APL3]
WHERE
    NOT EXISTS
    (
        SELECT 
        1 
        FROM 
            M_APPLICATION_CODE_ALL
        WHERE 
            M_APPLICATION_CODE_ALL.[APL1] = SFM_APPLICATION_CODE_ALL.[APPLICATION1_CODE]
        AND M_APPLICATION_CODE_ALL.[APL2] = SFM_APPLICATION_CODE_ALL.[APPLICATION2_CODE]
        AND M_APPLICATION_CODE_ALL.[APL3] = SFM_APPLICATION_CODE_ALL.[APPLICATION3_CODE]
    )
UNION
SELECT DISTINCT
       [APL1]
      ,[APL1_TXT]
      ,[APL2]
      ,[APL2_TXT]
      ,[APL3]
      ,[APL3_TXT]
      ,[AFFECT_GST]
      ,[GST_1]
      ,[GST_2]
FROM 
   [BI_DM].[dbo].[M_APL_CUST_BOOK_PN]



GO
