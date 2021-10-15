USE [BI_DM]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[VF_SAL_BILL_SUM_CUSTGRP1] AS
SELECT [A].[CALENDAR_YM]                                  AS [CALENDAR_YM]
      ,[A].[CUSTOMER_GRP1]                                AS [CUSTOMER_GRP1]
      ,[B].[Rank_No]                                      AS [Rank_No]
      ,(SELECT [Rank_No] FROM [dbo].[F_SAL_CUSTGRP1_RANK] 
         WHERE [CUSTOMER_GRP1] = [A].[CUSTOMER_GRP1] 
           AND [CALENDAR_YM] = format(DATEADD(MONTH, -1,CONVERT(DATE, [A].[CALENDAR_YM] + '/01')),'yyyy/MM')) 
                                                          AS [PreRank_No] 
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
       ELSE (SUM([A].[GO_AMT_JPY]) - SUM([A].[PreM_GO_AMT_JPY])) / Abs(SUM([A].[GO_AMT_JPY]))
       END ) AS [PreM_GO_Bill_App_Rate]
--GPRate App Rate
      ,( CASE WHEN ( SUM([A].[PreM_GO_AMT_JPY]) IS NULL  OR 
                     SUM([A].[PreM_GO_GP_AMT_JPY]) IS NULL  OR 
                     SUM([A].[GO_AMT_JPY]) IS NULL  OR
                     SUM([A].[GO_GP_AMT_JPY]) IS NULL)
                THEN Null
              WHEN ( SUM([A].[GO_AMT_JPY]) = 0  OR
                     SUM([A].[GO_GP_AMT_JPY]) = 0 )
                THEN 0
              WHEN ( SUM([A].[PreM_GO_AMT_JPY]) = 0 OR
                     SUM([A].[PreM_GO_GP_AMT_JPY]) = 0 )
                THEN 1
              WHEN (SUM([A].[GO_GP_AMT_JPY]) / SUM([A].[GO_AMT_JPY])) = 0
                THEN 0
              ELSE
                ( SUM([A].[GO_GP_AMT_JPY]) / SUM([A].[GO_AMT_JPY]) - SUM([A].[PreM_GO_GP_AMT_JPY]) / SUM([A].[PreM_GO_AMT_JPY]) )/Abs(SUM([A].[GO_GP_AMT_JPY]) / SUM([A].[GO_AMT_JPY]))
          END ) AS [PreM_GO_GP_Rate_App_Rate]

      ,SUM([A].[PreQ_GO_AMT_JPY])                         AS [PreQ_GO_AMT_JPY]
      ,SUM([A].[PreQ_GO_GP_AMT_JPY])                      AS [PreQ_GO_GP_AMT_JPY]
      ,( CASE WHEN SUM([A].[PreQ_GO_AMT_JPY]) IS NULL
       THEN Null
       WHEN SUM([A].[PreQ_GO_AMT_JPY]) = 0
       THEN 0
       ELSE SUM([A].[PreQ_GO_GP_AMT_JPY]) / SUM([A].[PreQ_GO_AMT_JPY])
       END ) AS [PreQ_GO_GP_Bill_Rate]
--Bill App Rate
      ,( CASE WHEN SUM([A].[GO_AMT_JPY]) IS NULL
       THEN Null
       WHEN SUM([A].[GO_AMT_JPY]) = 0
       THEN 0
       ELSE (SUM([A].[GO_AMT_JPY]) - SUM([A].[PreQ_GO_AMT_JPY])) / Abs(SUM([A].[GO_AMT_JPY]))
       END ) AS [PreQ_GO_Bill_App_Rate]
--GPRate App Rate
      ,( CASE WHEN ( SUM([A].[PreQ_GO_AMT_JPY]) IS NULL  OR 
                     SUM([A].[PreQ_GO_GP_AMT_JPY]) IS NULL  OR 
                     SUM([A].[GO_AMT_JPY]) IS NULL  OR
                     SUM([A].[GO_GP_AMT_JPY]) IS NULL)
                THEN Null
              WHEN ( SUM([A].[GO_AMT_JPY]) = 0  OR
                     SUM([A].[GO_GP_AMT_JPY]) = 0 )
                THEN 0
              WHEN ( SUM([A].[PreQ_GO_AMT_JPY]) = 0 OR
                     SUM([A].[PreQ_GO_GP_AMT_JPY]) = 0 )
                THEN 1
              WHEN (SUM([A].[GO_GP_AMT_JPY]) / SUM([A].[GO_AMT_JPY])) = 0
                THEN 0
              ELSE
                ( SUM([A].[GO_GP_AMT_JPY]) / SUM([A].[GO_AMT_JPY]) - SUM([A].[PreQ_GO_GP_AMT_JPY]) / SUM([A].[PreQ_GO_AMT_JPY]) )/Abs(SUM([A].[GO_GP_AMT_JPY]) / SUM([A].[GO_AMT_JPY]))
          END ) AS [PreQ_GO_GP_Rate_App_Rate]

      ,SUM([A].[PreHY_GO_AMT_JPY])                         AS [PreHY_GO_AMT_JPY]
      ,SUM([A].[PreHY_GO_GP_AMT_JPY])                      AS [PreHY_GO_GP_AMT_JPY]
      ,( CASE WHEN SUM([A].[PreHY_GO_AMT_JPY]) IS NULL
       THEN Null
       WHEN SUM([A].[PreHY_GO_AMT_JPY]) = 0
       THEN 0
       ELSE SUM([A].[PreHY_GO_GP_AMT_JPY]) / SUM([A].[PreHY_GO_AMT_JPY])
       END ) AS [PreHY_GO_GP_Bill_Rate]
--Bill App Rate
      ,( CASE WHEN SUM([A].[GO_AMT_JPY]) IS NULL
       THEN Null
       WHEN SUM([A].[GO_AMT_JPY]) = 0
       THEN 0
       ELSE (SUM([A].[GO_AMT_JPY]) - SUM([A].[PreHY_GO_AMT_JPY])) / Abs(SUM([A].[GO_AMT_JPY]))
       END ) AS [PreHY_GO_Bill_App_Rate]
--GPRate App Rate
      ,( CASE WHEN ( SUM([A].[PreHY_GO_AMT_JPY]) IS NULL  OR 
                     SUM([A].[PreHY_GO_GP_AMT_JPY]) IS NULL  OR 
                     SUM([A].[GO_AMT_JPY]) IS NULL  OR
                     SUM([A].[GO_GP_AMT_JPY]) IS NULL)
                THEN Null
              WHEN ( SUM([A].[GO_AMT_JPY]) = 0  OR
                     SUM([A].[GO_GP_AMT_JPY]) = 0 )
                THEN 0
              WHEN ( SUM([A].[PreHY_GO_AMT_JPY]) = 0 OR
                     SUM([A].[PreHY_GO_GP_AMT_JPY]) = 0 )
                THEN 1
              WHEN (SUM([A].[GO_GP_AMT_JPY]) / SUM([A].[GO_AMT_JPY])) = 0
                THEN 0
              ELSE
                ( SUM([A].[GO_GP_AMT_JPY]) / SUM([A].[GO_AMT_JPY]) - SUM([A].[PreHY_GO_GP_AMT_JPY]) / SUM([A].[PreHY_GO_AMT_JPY]) )/Abs(SUM([A].[GO_GP_AMT_JPY]) / SUM([A].[GO_AMT_JPY]))
          END ) AS [PreHY_GO_GP_Rate_App_Rate]

      ,SUM([A].[PreY_GO_AMT_JPY])                         AS [PreY_GO_AMT_JPY]
      ,SUM([A].[PreY_GO_GP_AMT_JPY])                      AS [PreY_GO_GP_AMT_JPY]
      ,( CASE WHEN SUM([A].[PreY_GO_AMT_JPY]) IS NULL
       THEN Null
       WHEN SUM([A].[PreY_GO_AMT_JPY]) = 0
       THEN 0
       ELSE SUM([A].[PreY_GO_GP_AMT_JPY]) / SUM([A].[PreY_GO_AMT_JPY])
       END ) AS [PreY_GO_GP_Bill_Rate]
--Bill App Rate
      ,( CASE WHEN SUM([A].[GO_AMT_JPY]) IS NULL
       THEN Null
       WHEN SUM([A].[GO_AMT_JPY]) = 0
       THEN 0
       ELSE (SUM([A].[GO_AMT_JPY]) - SUM([A].[PreY_GO_AMT_JPY])) / Abs(SUM([A].[GO_AMT_JPY]))
       END ) AS [PreY_GO_Bill_App_Rate]
--GPRate App Rate
      ,( CASE WHEN ( SUM([A].[PreY_GO_AMT_JPY]) IS NULL  OR 
                     SUM([A].[PreY_GO_GP_AMT_JPY]) IS NULL  OR 
                     SUM([A].[GO_AMT_JPY]) IS NULL  OR
                     SUM([A].[GO_GP_AMT_JPY]) IS NULL)
                THEN Null
              WHEN ( SUM([A].[GO_AMT_JPY]) = 0  OR
                     SUM([A].[GO_GP_AMT_JPY]) = 0 )
                THEN 0
              WHEN ( SUM([A].[PreY_GO_AMT_JPY]) = 0 OR
                     SUM([A].[PreY_GO_GP_AMT_JPY]) = 0 )
                THEN 1
              WHEN (SUM([A].[GO_GP_AMT_JPY]) / SUM([A].[GO_AMT_JPY])) = 0
                THEN 0
              ELSE
                ( SUM([A].[GO_GP_AMT_JPY]) / SUM([A].[GO_AMT_JPY]) - SUM([A].[PreY_GO_GP_AMT_JPY]) / SUM([A].[PreY_GO_AMT_JPY]) )/Abs(SUM([A].[GO_GP_AMT_JPY]) / SUM([A].[GO_AMT_JPY]))
          END ) AS [PreY_GO_GP_Rate_App_Rate]

      ,SUM([A].[PreYM_GO_AMT_JPY])                         AS [PreYM_GO_AMT_JPY] 
      ,SUM([A].[PreYM_GO_GP_AMT_JPY])                      AS [PreYM_GO_GP_AMT_JPY]
      ,( CASE WHEN SUM([A].[PreYM_GO_AMT_JPY]) IS NULL
       THEN Null
       WHEN SUM([A].[PreYM_GO_AMT_JPY]) = 0
       THEN 0
       ELSE SUM([A].[PreYM_GO_GP_AMT_JPY]) / SUM([A].[PreYM_GO_AMT_JPY])
       END ) AS [PreYM_GO_GP_Bill_Rate]
--Bill App Rate
      ,( CASE WHEN SUM([A].[GO_AMT_JPY]) IS NULL
       THEN Null
       WHEN SUM([A].[GO_AMT_JPY]) = 0
       THEN 0
       ELSE (SUM([A].[GO_AMT_JPY]) - SUM([A].[PreYM_GO_AMT_JPY])) / Abs(SUM([A].[GO_AMT_JPY]))
       END ) AS [PreYM_GO_Bill_App_Rate]
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
          END ) AS [PreYM_GO_GP_Rate_App_Rate]


FROM [dbo].[F_SAL_BILL_GO_SUM_FIX]   [A]
LEFT JOIN [dbo].[F_SAL_CUSTGRP1_RANK]  [B]
       ON [A].[CALENDAR_YM] = [B].[CALENDAR_YM]
      AND ISNULL([A].[CUSTOMER_GRP1],' ') = ISNULL([B].[CUSTOMER_GRP1],' ')
GROUP BY [A].[CALENDAR_YM]
        ,[A].[CUSTOMER_GRP1]
        ,[B].[Rank_No]
;


GO
