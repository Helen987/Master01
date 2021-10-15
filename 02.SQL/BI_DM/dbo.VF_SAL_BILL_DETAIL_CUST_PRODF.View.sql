USE [BI_DM]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[VF_SAL_BILL_DETAIL_CUST_PRODF] AS
SELECT [A].[CALENDAR_YM]                                  AS [CALENDAR_YM]
      ,[A].[SCM_CUSTOMER_CD]                              AS [SCM_CUSTOMER_CD]
      ,[M].[SCM_CUSTOMER_TXT_S]                           AS [SCM_CUSTOMER_TXT_S]
      ,[M].[CUSTOMER_GRP1]                                AS [CUSTOMER_GRP1]
      ,[M].[BF_CHANNEL]                                   AS [BF_CHANNEL]
      ,[O].[PRODUCT_GROUP]                                AS [PRODUCT_GROUP]
      ,[O].[PRODUCT_FAMILY]                               AS [PRODUCT_FAMILY] 
      ,[L].[APL1_TXT]                                     AS [APL1_TXT]
      ,[L].[APL3_TXT]                                     AS [APL3_TXT] 

      ,SUM([A].[GO_AMT_JPY])                              AS [GO_AMT_JPY]
      ,SUM([A].[GO_GP_AMT_JPY])                           AS [GO_GP_AMT_JPY]
      ,SUM(ISNULL([A].[AnnualPlan_AMT_JPY],0))            AS [AnnualPlan_AMT_JPY]
      ,SUM([A].[PreM_GO_AMT_JPY])                         AS [PreM_GO_AMT_JPY]
      ,SUM([A].[PreM_GO_GP_AMT_JPY])                      AS [PreM_GO_GP_AMT_JPY]

      ,( CASE WHEN ( SUM([A].[AnnualPlan_AMT_JPY]) IS NULL OR SUM([A].[AnnualPlan_AMT_JPY]) = 0 )
       THEN 0
       ELSE SUM([A].[GO_AMT_JPY]) / SUM([A].[AnnualPlan_AMT_JPY])
       END ) AS [AchieveRate]

--Bill App Rate
      ,( CASE WHEN SUM([A].[GO_AMT_JPY]) IS NULL
       THEN Null
       WHEN SUM([A].[GO_AMT_JPY]) = 0
       THEN 0
       ELSE (SUM([A].[GO_AMT_JPY]) - SUM([A].[PreM_GO_AMT_JPY])) / Abs(SUM([A].[GO_AMT_JPY]))
       END ) AS [PreM_GO_Bill_App_Rate]

      ,( CASE WHEN SUM([A].[GO_AMT_JPY]) IS NULL
       THEN Null
       WHEN SUM([A].[GO_AMT_JPY]) = 0
       THEN 0
       ELSE SUM([A].[GO_GP_AMT_JPY]) / SUM([A].[GO_AMT_JPY])
       END ) AS [GO_GP_Bill_Rate]

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

FROM [dbo].[F_SAL_BILL_GO_SUM_TEMP]   [A]
LEFT JOIN [dbo].[M_SCM_CUST] [M] on [M].[SCM_CUSTOMER]  = [A].[SCM_CUSTOMER_CD]
LEFT JOIN [dbo].[M_PNO_BOOK_PN] [O] on [O].[BOOKING_PN_CD]  = [A].[ORDER_PART_NO_CD]
LEFT JOIN [dbo].[V_MST_BOOKPN_CUST_APL] [L] on ([L].[SCM_CUSTOMER] = [A].[SCM_CUSTOMER_CD]
                                           and  [L].[BOOKING_PN_CD] = [A].[ORDER_PART_NO_CD]) 

GROUP BY [A].[CALENDAR_YM]
        ,[A].[SCM_CUSTOMER_CD]
        ,[M].[SCM_CUSTOMER_TXT_S]
        ,[M].[CUSTOMER_GRP1]
        ,[M].[BF_CHANNEL]
        ,[O].[PRODUCT_GROUP]
        ,[O].[PRODUCT_FAMILY]
        ,[L].[APL1_TXT]
        ,[L].[APL3_TXT]



GO
