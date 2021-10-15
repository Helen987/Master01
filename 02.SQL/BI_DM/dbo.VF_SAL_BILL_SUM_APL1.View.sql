USE [BI_DM]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [dbo].[VF_SAL_BILL_SUM_APL1] AS
SELECT [A].[CALENDAR_YM]                                  AS [CALENDAR_YM]
      ,[A].[CUSTOMER_GRP1]                                AS [CUSTOMER_GRP1]
      ,[A].[APL1_TXT]                                     AS [APL1_TXT]
      ,SUM([A].[GO_QTY])                                  AS [GO_QTY]
      ,SUM([A].[GO_AMT_JPY])                              AS [GO_AMT_JPY]
      ,SUM([A].[GO_GP_AMT_JPY])                           AS [GO_GP_AMT_JPY]
      ,( CASE WHEN SUM([A].[GO_AMT_JPY]) IS NULL
       THEN Null
       WHEN SUM([A].[GO_AMT_JPY]) = 0
       THEN 0
       ELSE SUM([A].[GO_GP_AMT_JPY]) / SUM([A].[GO_AMT_JPY])
       END ) AS [GO_GP_Bill_Rate]
      ,SUM(ISNULL([A].[AnnualPlan_AMT_JPY],0))            AS [AnnualPlan_AMT_JPY]
      ,( CASE WHEN ( SUM([A].[AnnualPlan_AMT_JPY]) IS NULL OR SUM([A].[AnnualPlan_AMT_JPY]) = 0 )
       THEN 0
       ELSE SUM([A].[GO_AMT_JPY]) / SUM([A].[AnnualPlan_AMT_JPY])
       END ) AS [AchieveRate]


      ,SUM([A].[PreM_GO_AMT_JPY])                         AS [PreM_GO_AMT_JPY]
      ,SUM([A].[PreM_GO_GP_AMT_JPY])                      AS [PreM_GO_GP_AMT_JPY]
      ,( CASE WHEN SUM([A].[PreM_GO_AMT_JPY]) IS NULL
       THEN Null
       WHEN SUM([A].[PreM_GO_AMT_JPY]) = 0
       THEN 0
       ELSE SUM([A].[PreM_GO_GP_AMT_JPY]) / SUM([A].[PreM_GO_AMT_JPY])
       END ) AS [PreM_GO_GP_Bill_Rate]
--Bill App Rate
      ,( CASE WHEN SUM([A].[GO_AMT_JPY]) IS NULL
       THEN Null
       WHEN SUM([A].[GO_AMT_JPY]) = 0
       THEN 0
       ELSE (SUM([A].[GO_AMT_JPY]) - SUM([A].[PreYM_GO_AMT_JPY])) / Abs(SUM([A].[GO_AMT_JPY]))
       END ) AS [PreM_GO_Bill_App_Rate]

--GPRate App Rate
      ,( CASE WHEN ( SUM([A].[PreYM_GO_AMT_JPY]) IS NULL  OR 
                     SUM([A].[PreYM_GO_GP_AMT_JPY]) IS NULL  OR 
                     SUM([A].[GO_AMT_JPY]) IS NULL  OR
                     SUM([A].[GO_GP_AMT_JPY]) IS NULL)
                THEN Null
              WHEN ( SUM([A].[GO_AMT_JPY]) = 0  OR
                     SUM([A].[GO_GP_AMT_JPY]) = 0 )
                THEN 0
              WHEN ( SUM([A].[PreYM_GO_AMT_JPY]) = 0 OR
                     SUM([A].[PreYM_GO_GP_AMT_JPY]) = 0 )
                THEN 1
              WHEN (SUM([A].[GO_GP_AMT_JPY]) / SUM([A].[GO_AMT_JPY])) = 0
                THEN 0
              ELSE
                ( SUM([A].[GO_GP_AMT_JPY]) / SUM([A].[GO_AMT_JPY]) - SUM([A].[PreYM_GO_GP_AMT_JPY]) / SUM([A].[PreYM_GO_AMT_JPY]) )/Abs(SUM([A].[GO_GP_AMT_JPY]) / SUM([A].[GO_AMT_JPY]))
          END ) AS [PreM_GO_GP_Rate_App_Rate]

FROM [dbo].[F_SAL_BILL_GO_SUM_FIX]   [A]
GROUP BY [A].[CALENDAR_YM]
        ,[A].[CUSTOMER_GRP1]
        ,[A].[APL1_TXT]
;



GO
