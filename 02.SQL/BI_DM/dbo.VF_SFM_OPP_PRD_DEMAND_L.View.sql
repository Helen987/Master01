USE [BI_DM]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[VF_SFM_OPP_PRD_DEMAND_L] AS
SELECT
     T.OPPORTUNITY_SEQ
    ,T.OPPORTUNITY_NO
    ,T.OPPORTUNITY_SEQ_PRD
    ,T.STAGE
    ,T.D_IN_SCM_CUST_CODE_FOR_MTF
    ,T.D_IN_SCM_CUST_CODE_FOR_SCM_OPE
    ,T.B_WIN_SCM_CUSTOMER_CODE
    ,BOOK_PN_MTF.BOOKING_PN_CD  AS SALES_ORDER_PN_FOR_MTF
    ,BOOK_PN.BOOKING_PN_CD      AS SALES_ORDER_PN_FOR_SCM_OPE
    ,T.OPP_APPLICATION3_CODE
    ,T.PRD_APPLICATION3_CODE
    ,T.CHANNEL_PARTNER_CODE
    ,T.CHANNEL_PARTNER_NAME
    ,T.STATUS
    ,T.TARGET_NOMINATION_DATE
    ,T.TARGET_AWARD_DATE
    ,T.APPROVED_DATE
    ,T.D_IN_CONFIDENCE_LEVEL_PERCENT
    ,T.QTY_UNIT
    ,T.SHARE_PERCENT
    ,T.START_MONTH_OF_FISCAL_YEAR
    ,T.MP_START_MONTH
    ,T.ACCOUNT_GROUP_CODE
    ,T.ACCOUNT_NAME
    ,T.CURRENCY
    ,T.CALENDAR_YM
    ,T.QUANTITY_1PIECE
    ,T.PRICE
    ,T.AMOUNT
    ,T.QUANTITY_1PIECE * ISNULL(BOOK_PN.COST,0)                                       AS AMOUNT_STD
    ,T.AMOUNT - T.QUANTITY_1PIECE * ISNULL(BOOK_PN.COST,0)                            AS AMOUNT_GP
    ,T.ORIGINAL_QUANTITY_1PIECE
    ,T.ORIGINAL_AMOUNT
    ,CONVERT(DATE,NULL)                                                               AS UPDATE_DATE
    ,'Latest'                                                                         AS DISP_UPDATE_DATE
    ,'1'                                                                              AS LATEST_FLG
    ,T.TARGET_NOMINATION_DATE_D
    ,T.TARGET_AWARD_DATE_D
    ,T.OPP_APPLICATION1_CODE
    ,T.OPP_APPLICATION2_CODE
    ,T.MP_START_DATE
    ,T.CAMPAIGN_NAME
    ,T.LEAD_ID
    ,T.LEAD_NAME
    ,T.ANNUAL_DEMAND_LTV_TOTAL
    ,T.S0_ACTUAL_DATE
    ,T.DISCOVERY_DATE
    ,T.PROMOTION_DATE
    ,T.GP_AMOUNT
    ,T.GP_AMOUNT_GO
    ,T.GO_PRICE
    ,T.GO_AMOUNT
    ,T.URL_OPP_PRODUCT_FOR_REL
    ,T.URL_OPP_PRODUCT_FOR_CHANNEL
    ,T.COMPETITOR_CURRENCY1
    ,T.COMPETITOR_PRICE_JPY1
    ,T.COMPETITOR_CURRENCY2
    ,T.COMPETITOR_PRICE_JPY2
    ,T.COMPETITOR_CURRENCY3
    ,T.COMPETITOR_PRICE_JPY3
    ,T.USER_LAST_MODIFIED_DATE
    ,T.USER_LAST_MOD_FEDERATION_ID
    ,T.USER_LAST_MODIFIED_EMAIL
    ,T.PCN_STATUS
    ,T.D_IN_DEMAND_QUANTITY
    ,T.D_IN_DEMAND_AMOUNT
    ,T.D_IN_TOTAL_COST
    ,T.D_IN_TOTAL_GP
    ,T.D_IN_TOTAL_GP_PERCENT
    ,T.CURRENT_TOTAL_COST
    ,T.CURRENT_TOTAL_GP
    ,T.CURRENT_TOTAL_GP_PERCENT
    ,T.CROSS_SELL
    ,T.APPROVAL_STATUS
    ,T.END_CUSTOMER_FREE_TEXT
    ,T.AUTOMOTIVE_OEM_NAME
    ,T.GROUPING_NAME
    ,T.SALES_TEAM_NAME_1
    ,T.SALES_TEAM_NAME_2
    ,T.SALES_TEAM_NAME_3
    ,T.SALES_TEAM_NAME_4
    ,T.D_IN_SCM_CUST_CODE_DUMMY_FLAG
    ,T.NDA_FLAG
    ,T.STAGE_TYPE
    ,T.D_IN_SALES_COMPANY
    ,T.ESTIMATED_ANNUAL_USAGE
    ,T.OPPORTUNITY_NAME
    ,T.OPPORTUNITY_INDUSTRY
    ,T.TRACKING_TYPE_STATUS
    ,T.OPP_CREATED_BY_FEDERATION_ID
    ,T.OPP_CREATED_BY_EMAIL
    ,T.OPP_CREATED_DATE
    ,T.END_CUSTOMER_NAME
    ,T.END_CUSTOMER_COUNTRY
    ,T.OPP_OPPORTUNITY_DISCERNMENT
    ,T.ANNUAL_DEMAND_QUANTITIY_TOTAL
    ,T.APPROVAL_NOTES
    ,T.APPROVAL_REQUEST_DATE
    ,T.APPROVER_EMAIL
    ,T.APPROVER_FEDERATION_ID
    ,T.AUTOMOTIVE_OEM
    ,T.AVERAGE_PRICE
    ,T.AWARD_CONFIDENCE_LEVEL_PERCENT
    ,T.B_WIN_OSC
    ,T.COMPETITOR_PART_NO1
    ,T.COMPETITOR_PART_NO2
    ,T.COMPETITOR_PART_NO3
    ,T.COMPETITOR_PRICE1
    ,T.COMPETITOR_PRICE2
    ,T.COMPETITOR_PRICE3
    ,T.COMPETITOR1
    ,T.COMPETITOR2
    ,T.COMPETITOR3
    ,T.PROD_CREATED_BY_EMAIL
    ,T.PROD_CREATED_BY_FEDERATION_ID
    ,T.PROD_CREATED_DATE
    ,T.CURRENT_LTQ
    ,T.CURRENT_LTV
    ,T.CUSTOMER_PART_NO
    ,T.DAUGHTER_PROJECT_NAME
    ,T.DELETE_FLAG
    ,T.DEMAND_TYPE
    ,T.DR_APRVR_FR_APRV_FEDERATION_ID
    ,T.DR_EXPIRATION_DATE
    ,T.DR_REQ_DISTI_PART_STATUS
    ,T.DR_REQUESTOR_FEDERATION_ID
    ,T.DR_STATUS
    ,T.ESTIMATED_GP_PERCENT
    ,T.LAST_MODIFIED_BY_EMAIL
    ,T.LAST_MODIFIED_BY_FEDERATION_ID
    ,T.LAST_MODIFIED_DATE
    ,T.MP_END_DATE
    ,T.MP_END_MONTH
    ,T.NICKNAME
    ,T.OPEN_DEAD_STATUS
    ,T.PROD_OPPORTUNITY_DISCERNMENT
    ,T.PARTIAL_AWARD_SEQ
    ,T.PPAP_BY
    ,T.PRICE_SUBMIT_FLG
    ,T.PRODUCT_CATEGORY1_CODE
    ,T.PRODUCT_CATEGORY2_CODE
    ,T.PRODUCT_CATEGORY3_CODE
    ,T.PRODUCT_CATEGORY4_CODE
    ,T.PRODUCT_CATEGORY5_CODE
    ,T.PRODUCT_FAMILY_CODE
    ,T.PRODUCT_SHARE
    ,T.PROGRESS
    ,T.PROMOTION_SAMPLE
    ,T.QUANTITY_GAP
    ,T.RENESAS_MEET_SCHEDULE_FLG
    ,T.RENESAS_NEW_PRODUCT
    ,T.RENESAS_PRD_REQ_FLG
    ,T.SALES_ORDER_PN_DUMMY_FLAG
    ,T.SAMPLE_DELIVERY_FLG
    ,T.SCHEDULE
    ,T.STAGE_DETAIL
    ,T.STAGE_SUB_TYPE
    ,T.STATUS_UPDATE_DATE
    ,T.TARGET_PRICE
    ,T.TECHNICAL
    ,T.TYPE_STAGE
--ATC 20181009 LatestキューブへのAggregate対応 Start
--CDC 20180522 LatestキューブへのAggregateのBI_ExecutionLog対応 Start
--    ,T.CALENDAR_YEAR_MONTH_DATE
--CDC 20180522 LatestキューブへのAggregateのBI_ExecutionLog対応 End
--ATC 20181009 LatestキューブへのAggregate対応 End
FROM
(
SELECT
     PRD.OPPORTUNITY_SEQ                                                            AS OPPORTUNITY_SEQ
    ,OPP.OPPORTUNITY_NO                                                             AS OPPORTUNITY_NO
    ,SUBSTRING(PRD.OPPORTUNITY_SEQ, 1, 10)                                          AS OPPORTUNITY_SEQ_PRD
    ,PRD.STAGE                                                                      AS STAGE
    ,OPP.D_IN_SCM_CUST_CODE_FOR_MTF                                                 AS D_IN_SCM_CUST_CODE_FOR_MTF
    ,OPP.D_IN_SCM_CUST_CODE_FOR_SCM_OPE                                             AS D_IN_SCM_CUST_CODE_FOR_SCM_OPE
    ,PRD.B_WIN_SCM_CUSTOMER_CODE                                                    AS B_WIN_SCM_CUSTOMER_CODE
    ,PRD.SALES_ORDER_PN_FOR_MTF                                                     AS SALES_ORDER_PN_FOR_MTF
    ,PRD.SALES_ORDER_PN_FOR_SCM_OPE                                                 AS SALES_ORDER_PN_FOR_SCM_OPE
    ,OPP.APPLICATION3_CODE                                                          AS OPP_APPLICATION3_CODE
    ,PRD.APPLICATION3_CODE                                                          AS PRD_APPLICATION3_CODE
    ,OPP.CHANNEL_PARTNER_CODE                                                       AS CHANNEL_PARTNER_CODE
    ,OPP.CHANNEL_PARTNER_NAME                                                       AS CHANNEL_PARTNER_NAME
    ,PRD.STATUS                                                                     AS STATUS
    ,PRD.TARGET_NOMINATION_DATE                                                     AS TARGET_NOMINATION_DATE
    ,PRD.TARGET_AWARD_DATE                                                          AS TARGET_AWARD_DATE
    ,PRD.APPROVED_DATE                                                              AS APPROVED_DATE
    ,PRD.D_IN_CONFIDENCE_LEVEL_PERCENT                                              AS D_IN_CONFIDENCE_LEVEL_PERCENT
    ,PRD.QTY_UNIT                                                                   AS QTY_UNIT
    ,PRD.SHARE_PERCENT                                                              AS SHARE_PERCENT
    ,PRD.START_MONTH_OF_FISCAL_YEAR                                                 AS START_MONTH_OF_FISCAL_YEAR
    ,PRD.MP_START_MONTH                                                             AS MP_START_MONTH
    ,OPP.ACCOUNT_GROUP_CODE                                                         AS ACCOUNT_GROUP_CODE
    ,ACCOUNT.ACCOUNT_NAME                                                           AS ACCOUNT_NAME
    ,PRD.CURRENCY                                                                   AS CURRENCY
    ,DATEADD(MONTH,DE.MONTH - 1,CAST(CONVERT(nvarchar, DE.YEAR, 112) AS DATE))      AS CALENDAR_YM
    ,CASE
     WHEN OPP.STAGE_TYPE = '10' THEN                    -- DPNA型
         CASE WHEN PRD.STAGE in ('S0','S1','S2') THEN   -- S0～S2が対象
            CASE WHEN DE.PARTIAL_AWARD_SEQ IS NULL THEN -- 親
               DE.NOMINATION_REMAINING_QUANTITY         -- Nomination残数量
            ELSE                                        -- 子
               DE.QUANTITY_1PIECE                       -- 数量
            END
       ELSE
          DE.QUANTITY_1PIECE
       END
     ELSE                                               -- DPA型
         DE.QUANTITY_1PIECE
     END                                                                            AS QUANTITY_1PIECE
    ,DE.PRICE                                                                       AS PRICE
    ,CASE
     WHEN OPP.STAGE_TYPE = '10' THEN                    -- DPNA型
         CASE WHEN PRD.STAGE in ('S0','S1','S2') THEN   -- S0～S2が対象
            CASE WHEN DE.PARTIAL_AWARD_SEQ IS NULL THEN -- 親
               DE.NOMINATION_REMAINING_AMOUNT           -- Nomination残金額
            ELSE                                        -- 子
               DE.AMOUNT                                -- 金額
            END
       ELSE
          DE.AMOUNT
       END
     ELSE                                               -- DPA型
        DE.AMOUNT
     END                                                                            AS AMOUNT
    ,CASE WHEN DE.PARTIAL_AWARD_SEQ IS NULL THEN
      DE.QUANTITY_1PIECE
    ELSE
      0
    END                                                                             AS ORIGINAL_QUANTITY_1PIECE
    ,CASE WHEN DE.PARTIAL_AWARD_SEQ IS NULL THEN
      DE.AMOUNT
    ELSE
      0
    END                                                                             AS ORIGINAL_AMOUNT
    ,PRD.TARGET_NOMINATION_DATE_D                                                   AS TARGET_NOMINATION_DATE_D
    ,PRD.TARGET_AWARD_DATE_D                                                        AS TARGET_AWARD_DATE_D
    ,OPP.APPLICATION1_CODE                                                          AS OPP_APPLICATION1_CODE
    ,OPP.APPLICATION2_CODE                                                          AS OPP_APPLICATION2_CODE
-- 王雅楠　20180629　【CRM Aggregate対応】CUBE & 明細ビュー　start
  --,PRD.MP_START_DATE                                                              AS MP_START_DATE
    ,AGG.CRM_MPSTART                                                                AS MP_START_DATE
-- 王雅楠　20180629　【CRM Aggregate対応】CUBE & 明細ビュー　end
    ,OPP.CAMPAIGN_NAME                                                              AS CAMPAIGN_NAME
    ,OPP.LEAD_ID                                                                    AS LEAD_ID
    ,OPP.LEAD_NAME                                                                  AS LEAD_NAME
    ,PRD.ANNUAL_DEMAND_LTV_TOTAL                                                    AS ANNUAL_DEMAND_LTV_TOTAL
    ,PRD.S0_ACTUAL_DATE                                                             AS S0_ACTUAL_DATE
    ,PRD.DISCOVERY_DATE                                                             AS DISCOVERY_DATE
    ,PRD.PROMOTION_DATE                                                             AS PROMOTION_DATE
    ,DE.GP_AMOUNT                                                                   AS GP_AMOUNT
    ,DE.GP_AMOUNT_GO                                                                AS GP_AMOUNT_GO
    ,DE.GO_PRICE                                                                    AS GO_PRICE
    ,DE.GO_AMOUNT                                                                   AS GO_AMOUNT
    ,PRD.URL_OPP_PRODUCT_FOR_REL													AS URL_OPP_PRODUCT_FOR_REL	
    ,PRD.URL_OPP_PRODUCT_FOR_CHANNEL												AS URL_OPP_PRODUCT_FOR_CHANNEL											 
    ,PRD.COMPETITOR_CURRENCY1														AS COMPETITOR_CURRENCY1
    ,PRD.COMPETITOR_PRICE_JPY1													    AS COMPETITOR_PRICE_JPY1
    ,PRD.COMPETITOR_CURRENCY2														AS COMPETITOR_CURRENCY2
    ,PRD.COMPETITOR_PRICE_JPY2													    AS COMPETITOR_PRICE_JPY2		
    ,PRD.COMPETITOR_CURRENCY3														AS COMPETITOR_CURRENCY3			
    ,PRD.COMPETITOR_PRICE_JPY3													    AS COMPETITOR_PRICE_JPY3		
    ,PRD.USER_LAST_MODIFIED_DATE													AS USER_LAST_MODIFIED_DATE		
    ,PRD.USER_LAST_MOD_FEDERATION_ID												AS USER_LAST_MOD_FEDERATION_ID	
    ,PRD.USER_LAST_MODIFIED_EMAIL													AS USER_LAST_MODIFIED_EMAIL		
    ,PRD.PCN_STATUS																    AS PCN_STATUS					
    ,PRD.D_IN_DEMAND_QUANTITY														AS D_IN_DEMAND_QUANTITY			
    ,PRD.D_IN_DEMAND_AMOUNT														    AS D_IN_DEMAND_AMOUNT			
    ,PRD.D_IN_TOTAL_COST															AS D_IN_TOTAL_COST				
    ,PRD.D_IN_TOTAL_GP															    AS D_IN_TOTAL_GP				
    ,PRD.D_IN_TOTAL_GP_PERCENT													    AS D_IN_TOTAL_GP_PERCENT		
    ,PRD.CURRENT_TOTAL_COST														    AS CURRENT_TOTAL_COST			
    ,PRD.CURRENT_TOTAL_GP															AS CURRENT_TOTAL_GP				
    ,PRD.CURRENT_TOTAL_GP_PERCENT													AS CURRENT_TOTAL_GP_PERCENT		
    ,PRD.CROSS_SELL															        AS CROSS_SELL					
    ,PRD.APPROVAL_STATUS															AS APPROVAL_STATUS	
    ,OPP.END_CUSTOMER_FREE_TEXT											            AS END_CUSTOMER_FREE_TEXT	
    ,OPP.AUTOMOTIVE_OEM_NAME														AS AUTOMOTIVE_OEM_NAME		
    ,OPP.GROUPING_NAME															    AS GROUPING_NAME			
    ,OPP.SALES_TEAM_NAME_1														    AS SALES_TEAM_NAME_1		
    ,OPP.SALES_TEAM_NAME_2														    AS SALES_TEAM_NAME_2		
    ,OPP.SALES_TEAM_NAME_3														    AS SALES_TEAM_NAME_3		
    ,OPP.SALES_TEAM_NAME_4														    AS SALES_TEAM_NAME_4
    ,OPP.D_IN_SCM_CUST_CODE_DUMMY_FLAG                                              AS D_IN_SCM_CUST_CODE_DUMMY_FLAG
    ,OPP.NDA_FLAG                                                                   AS NDA_FLAG 
    ,OPP.STAGE_TYPE                                                                 AS STAGE_TYPE
    ,OPP.D_IN_SALES_COMPANY                                                         AS D_IN_SALES_COMPANY
    ,OPP.ESTIMATED_ANNUAL_USAGE                                                     AS ESTIMATED_ANNUAL_USAGE
    ,OPP.OPPORTUNITY_NAME                                                           AS OPPORTUNITY_NAME
    ,OPP.OPPORTUNITY_INDUSTRY                                                       AS OPPORTUNITY_INDUSTRY
    ,OPP.TRACKING_TYPE_STATUS                                                       AS TRACKING_TYPE_STATUS
    ,OPP.END_CUSTOMER_NAME                                                          AS END_CUSTOMER_NAME
    ,OPP.END_CUSTOMER_COUNTRY                                                       AS END_CUSTOMER_COUNTRY
    ,OPP.CREATED_BY_FEDERATION_ID                                                   AS OPP_CREATED_BY_FEDERATION_ID
    ,OPP.CREATED_BY_EMAIL                                                           AS OPP_CREATED_BY_EMAIL
    ,OPP.CREATED_DATE                                                               AS OPP_CREATED_DATE
    ,OPP.OPPORTUNITY_DISCERNMENT                                                    AS OPP_OPPORTUNITY_DISCERNMENT
    ,PRD.STAGE_SUB_TYPE                                                             AS STAGE_SUB_TYPE
    ,PRD.CUSTOMER_PART_NO                                                           AS CUSTOMER_PART_NO
    ,PRD.AVERAGE_PRICE                                                              AS AVERAGE_PRICE
    ,PRD.B_WIN_OSC                                                                  AS B_WIN_OSC
    ,PRD.MP_END_MONTH                                                               AS MP_END_MONTH
    ,PRD.MP_END_DATE                                                                AS MP_END_DATE
    ,PRD.NICKNAME                                                                   AS NICKNAME
    ,PRD.OPPORTUNITY_DISCERNMENT                                                    AS PROD_OPPORTUNITY_DISCERNMENT
    ,PRD.PPAP_BY                                                                    AS PPAP_BY
    ,PRD.SALES_ORDER_PN_DUMMY_FLAG                                                  AS SALES_ORDER_PN_DUMMY_FLAG
    ,PRD.PROGRESS                                                                   AS PROGRESS
    ,PRD.PROMOTION_SAMPLE                                                           AS PROMOTION_SAMPLE
    ,PRD.RENESAS_NEW_PRODUCT                                                        AS RENESAS_NEW_PRODUCT
    ,PRD.SCHEDULE                                                                   AS SCHEDULE
    ,PRD.TARGET_PRICE                                                               AS TARGET_PRICE
    ,PRD.TECHNICAL                                                                  AS TECHNICAL
    ,PRD.RENESAS_MEET_SCHEDULE_FLG                                                  AS RENESAS_MEET_SCHEDULE_FLG
    ,PRD.RENESAS_PRD_REQ_FLG                                                        AS RENESAS_PRD_REQ_FLG
    ,PRD.PRICE_SUBMIT_FLG                                                           AS PRICE_SUBMIT_FLG
    ,PRD.SAMPLE_DELIVERY_FLG                                                        AS SAMPLE_DELIVERY_FLG
    ,PRD.APPROVER_FEDERATION_ID                                                     AS APPROVER_FEDERATION_ID
    ,PRD.AWARD_CONFIDENCE_LEVEL_PERCENT                                             AS AWARD_CONFIDENCE_LEVEL_PERCENT
    ,PRD.STATUS_UPDATE_DATE                                                         AS STATUS_UPDATE_DATE
    ,PRD.ESTIMATED_GP_PERCENT                                                       AS ESTIMATED_GP_PERCENT
    ,PRD.DAUGHTER_PROJECT_NAME                                                      AS DAUGHTER_PROJECT_NAME
    ,PRD.DEMAND_TYPE                                                                AS DEMAND_TYPE
    ,PRD.CREATED_BY_FEDERATION_ID                                                   AS PROD_CREATED_BY_FEDERATION_ID
    ,PRD.CREATED_BY_EMAIL                                                           AS PROD_CREATED_BY_EMAIL
    ,PRD.CREATED_DATE                                                               AS PROD_CREATED_DATE
    ,PRD.COMPETITOR1                                                                AS COMPETITOR1
    ,PRD.COMPETITOR_PART_NO1                                                        AS COMPETITOR_PART_NO1
    ,PRD.COMPETITOR_PRICE1                                                          AS COMPETITOR_PRICE1
    ,PRD.COMPETITOR2                                                                AS COMPETITOR2
    ,PRD.COMPETITOR_PART_NO2                                                        AS COMPETITOR_PART_NO2
    ,PRD.COMPETITOR_PRICE2                                                          AS COMPETITOR_PRICE2
    ,PRD.COMPETITOR3                                                                AS COMPETITOR3
    ,PRD.COMPETITOR_PART_NO3                                                        AS COMPETITOR_PART_NO3
    ,PRD.COMPETITOR_PRICE3                                                          AS COMPETITOR_PRICE3
    ,PRD.DR_STATUS                                                                  AS DR_STATUS
    ,PRD.APPROVAL_NOTES                                                             AS APPROVAL_NOTES
    ,PRD.DR_EXPIRATION_DATE                                                         AS DR_EXPIRATION_DATE
    ,PRD.DR_REQ_DISTI_PART_STATUS                                                   AS DR_REQ_DISTI_PART_STATUS
    ,PRD.DR_REQUESTOR_FEDERATION_ID                                                 AS DR_REQUESTOR_FEDERATION_ID
    ,PRD.DR_APRVR_FR_APRV_FEDERATION_ID                                             AS DR_APRVR_FR_APRV_FEDERATION_ID
    ,PRD.CURRENT_LTV                                                                AS CURRENT_LTV
    ,PRD.CURRENT_LTQ                                                                AS CURRENT_LTQ
    ,PRD.TYPE_STAGE                                                                 AS TYPE_STAGE
    ,PRD.PRODUCT_SHARE                                                              AS PRODUCT_SHARE
    ,PRD.QUANTITY_GAP                                                               AS QUANTITY_GAP
    ,PRD.PARTIAL_AWARD_SEQ                                                          AS PARTIAL_AWARD_SEQ
    ,PRD.PRODUCT_FAMILY_CODE                                                        AS PRODUCT_FAMILY_CODE
    ,PRD.PRODUCT_CATEGORY1_CODE                                                     AS PRODUCT_CATEGORY1_CODE
    ,PRD.PRODUCT_CATEGORY2_CODE                                                     AS PRODUCT_CATEGORY2_CODE
    ,PRD.PRODUCT_CATEGORY3_CODE                                                     AS PRODUCT_CATEGORY3_CODE
    ,PRD.PRODUCT_CATEGORY4_CODE                                                     AS PRODUCT_CATEGORY4_CODE
    ,PRD.PRODUCT_CATEGORY5_CODE                                                     AS PRODUCT_CATEGORY5_CODE
    ,PRD.APPROVER_EMAIL                                                             AS APPROVER_EMAIL
    ,PRD.ANNUAL_DEMAND_QUANTITIY_TOTAL                                              AS ANNUAL_DEMAND_QUANTITIY_TOTAL
    ,PRD.AUTOMOTIVE_OEM                                                             AS AUTOMOTIVE_OEM
    ,PRD.OPEN_DEAD_STATUS                                                           AS OPEN_DEAD_STATUS
    ,PRD.STAGE_DETAIL                                                               AS STAGE_DETAIL
    ,PRD.DELETE_FLAG                                                                AS DELETE_FLAG
    ,PRD.LAST_MODIFIED_BY_FEDERATION_ID                                             AS LAST_MODIFIED_BY_FEDERATION_ID
    ,PRD.LAST_MODIFIED_BY_EMAIL                                                     AS LAST_MODIFIED_BY_EMAIL
    ,PRD.LAST_MODIFIED_DATE                                                         AS LAST_MODIFIED_DATE
    ,PRD.APPROVAL_REQUEST_DATE                                                      AS APPROVAL_REQUEST_DATE
--ATC 20181009 LatestキューブへのAggregate対応 Start
--CDC 20180522 LatestキューブへのAggregateのBI_ExecutionLog対応 Start
--  ,T_CTRL1.DEEMED_DATE                                                            AS CALENDAR_YEAR_MONTH_DATE
--CDC 20180522 LatestキューブへのAggregateのBI_ExecutionLog対応 End
--ATC 20181009 LatestキューブへのAggregate対応 End
FROM																				 
  [BI_DW].[dbo].[T_SFM_BCCV_DEMAND_VIEW] DE											 
LEFT OUTER JOIN																		 
  [BI_DW].[dbo].[T_SFM_BCCV_OPP_PRODUCT_VIEW] PRD
ON
  DE.OPPORTUNITY_SEQ = PRD.OPPORTUNITY_SEQ
LEFT OUTER JOIN
  [BI_DW].[dbo].[T_SFM_BCCV_OPPORTUNITY_VIEW] OPP
ON
  DE.OPPORTUNITY_NO = OPP.OPPORTUNITY_NO
LEFT OUTER JOIN
  [BI_DW].[dbo].[R_SFM_BCCV_ACCOUNT_VIEW] ACCOUNT
ON
  OPP.ACCOUNT_GROUP_CODE = ACCOUNT.ACCOUNT_GROUP_CODE
--ATC 20181009 LatestキューブへのAggregate対応 Start
--CDC 20180522 LatestキューブへのAggregateのBI_ExecutionLog対応 Start
--LEFT OUTER JOIN
--  [BI_DW].[dbo].[Z_SSIS_CTRL] T_CTRL1
--ON
--    T_CTRL1.[SSIS_PACKAGE] = N'Bamboo_DEMAND'
--AND T_CTRL1.[JOB_TYPE]   = '1'
--AND T_CTRL1.[DS_TB_NAME] = '0'
--CDC 20180522 LatestキューブへのAggregateのBI_ExecutionLog対応 End
--ATC 20181009 LatestキューブへのAggregate対応 End
-- 王雅楠　20180629　【CRM Aggregate対応】CUBE & 明細ビュー　start
LEFT JOIN [BI_DW].[dbo].[T_SFM_BCCV_AGGREGATE_VIEW] AGG
ON DE.OPPORTUNITY_SEQ = AGG.CRM_UNIQUEOPPORTUNITY_SEQ
-- 王雅楠　20180629　【CRM Aggregate対応】CUBE & 明細ビュー　end

  UNION ALL

  SELECT
   PRD.OPPORTUNITY_SEQ                                                            AS OPPORTUNITY_SEQ
  ,OPP.OPPORTUNITY_NO                                                             AS OPPORTUNITY_NO
  ,SUBSTRING(PRD.OPPORTUNITY_SEQ, 1, 10)                                          AS OPPORTUNITY_SEQ_PRD
  ,PRD.STAGE                                                                      AS STAGE
  ,OPP.D_IN_SCM_CUST_CODE_FOR_MTF                                                 AS D_IN_SCM_CUST_CODE_FOR_MTF
  ,OPP.D_IN_SCM_CUST_CODE_FOR_SCM_OPE                                             AS D_IN_SCM_CUST_CODE_FOR_SCM_OPE
  ,PRD.B_WIN_SCM_CUSTOMER_CODE                                                    AS B_WIN_SCM_CUSTOMER_CODE
  ,PRD.SALES_ORDER_PN_FOR_MTF                                                     AS SALES_ORDER_PN_FOR_MTF
  ,PRD.SALES_ORDER_PN_FOR_SCM_OPE                                                 AS SALES_ORDER_PN_FOR_SCM_OPE
  ,OPP.APPLICATION3_CODE                                                          AS OPP_APPLICATION3_CODE
  ,PRD.APPLICATION3_CODE                                                          AS PRD_APPLICATION3_CODE
  ,OPP.CHANNEL_PARTNER_CODE                                                       AS CHANNEL_PARTNER_CODE
  ,OPP.CHANNEL_PARTNER_NAME                                                       AS CHANNEL_PARTNER_NAME
  ,PRD.STATUS                                                                     AS STATUS
  ,PRD.TARGET_NOMINATION_DATE                                                     AS TARGET_NOMINATION_DATE
  ,PRD.TARGET_AWARD_DATE                                                          AS TARGET_AWARD_DATE
  ,PRD.APPROVED_DATE                                                              AS APPROVED_DATE
  ,PRD.D_IN_CONFIDENCE_LEVEL_PERCENT                                              AS D_IN_CONFIDENCE_LEVEL_PERCENT
  ,PRD.QTY_UNIT                                                                   AS QTY_UNIT
  ,PRD.SHARE_PERCENT                                                              AS SHARE_PERCENT
  ,PRD.START_MONTH_OF_FISCAL_YEAR                                                 AS START_MONTH_OF_FISCAL_YEAR
  ,PRD.MP_START_MONTH                                                             AS MP_START_MONTH
  ,OPP.ACCOUNT_GROUP_CODE                                                         AS ACCOUNT_GROUP_CODE
  ,ACCOUNT.ACCOUNT_NAME                                                           AS ACCOUNT_NAME
  ,PRD.CURRENCY                                                                   AS CURRENCY
  ,CAST(DATEADD(DD, -DAY(GETDATE()) + 1, GETDATE()) AS DATE)                      AS CALENDAR_YM
  ,CASE
   WHEN OPP.STAGE_TYPE = '10' THEN                    -- DPNA型
       CASE WHEN PRD.STAGE in ('S0','S1','S2') THEN   -- S0～S2が対象
          CASE WHEN DE.PARTIAL_AWARD_SEQ IS NULL THEN -- 親
             DE.NOMINATION_REMAINING_QUANTITY         -- Nomination残数量
          ELSE                                        -- 子
             DE.QUANTITY_1PIECE                       -- 数量
          END
	   ELSE
	      DE.QUANTITY_1PIECE
	   END
   ELSE                                               -- DPA型
       DE.QUANTITY_1PIECE
   END                                                                            AS QUANTITY_1PIECE
  ,DE.PRICE                                                                       AS PRICE
  ,CASE
   WHEN OPP.STAGE_TYPE = '10' THEN                    -- DPNA型
       CASE WHEN PRD.STAGE in ('S0','S1','S2') THEN   -- S0～S2が対象
          CASE WHEN DE.PARTIAL_AWARD_SEQ IS NULL THEN -- 親
             DE.NOMINATION_REMAINING_AMOUNT           -- Nomination残金額
          ELSE                                        -- 子
             DE.AMOUNT                                -- 金額
          END
	   ELSE
	      DE.AMOUNT
	   END
   ELSE                                               -- DPA型
      DE.AMOUNT
   END                                                                            AS AMOUNT
 ,CASE WHEN DE.PARTIAL_AWARD_SEQ IS NULL THEN
    DE.QUANTITY_1PIECE
  ELSE
    0
  END                                                                             AS ORIGINAL_QUANTITY_1PIECE
  ,CASE WHEN DE.PARTIAL_AWARD_SEQ IS NULL THEN
    DE.AMOUNT
  ELSE
    0
  END                                                                             AS ORIGINAL_AMOUNT
  ,PRD.TARGET_NOMINATION_DATE_D                                                   AS TARGET_NOMINATION_DATE_D
  ,PRD.TARGET_AWARD_DATE_D                                                        AS TARGET_AWARD_DATE_D
  ,OPP.APPLICATION1_CODE                                                          AS OPP_APPLICATION1_CODE
  ,OPP.APPLICATION2_CODE                                                          AS OPP_APPLICATION2_CODE
-- 王雅楠　20180629　【CRM Aggregate対応】CUBE & 明細ビュー　start
  --,PRD.MP_START_DATE                                                            AS MP_START_DATE
    ,AGG.CRM_MPSTART                                                              AS MP_START_DATE
-- 王雅楠　20180629　【CRM Aggregate対応】CUBE & 明細ビュー　end
  ,OPP.CAMPAIGN_NAME                                                              AS CAMPAIGN_NAME
  ,OPP.LEAD_ID                                                                    AS LEAD_ID
  ,OPP.LEAD_NAME                                                                  AS LEAD_NAME
  ,PRD.ANNUAL_DEMAND_LTV_TOTAL                                                    AS ANNUAL_DEMAND_LTV_TOTAL
  ,PRD.S0_ACTUAL_DATE                                                             AS S0_ACTUAL_DATE
  ,PRD.DISCOVERY_DATE                                                             AS DISCOVERY_DATE
  ,PRD.PROMOTION_DATE                                                             AS PROMOTION_DATE
  ,DE.GP_AMOUNT                                                                   AS GP_AMOUNT
  ,DE.GP_AMOUNT_GO                                                                AS GP_AMOUNT_GO
  ,DE.GO_PRICE                                                                    AS GO_PRICE
  ,DE.GO_AMOUNT                                                                   AS GO_AMOUNT
  ,PRD.URL_OPP_PRODUCT_FOR_REL													  AS URL_OPP_PRODUCT_FOR_REL	
  ,PRD.URL_OPP_PRODUCT_FOR_CHANNEL												  AS URL_OPP_PRODUCT_FOR_CHANNEL											 
  ,PRD.COMPETITOR_CURRENCY1														  AS COMPETITOR_CURRENCY1
  ,PRD.COMPETITOR_PRICE_JPY1													  AS COMPETITOR_PRICE_JPY1
  ,PRD.COMPETITOR_CURRENCY2														  AS COMPETITOR_CURRENCY2
  ,PRD.COMPETITOR_PRICE_JPY2													  AS COMPETITOR_PRICE_JPY2		
  ,PRD.COMPETITOR_CURRENCY3														  AS COMPETITOR_CURRENCY3			
  ,PRD.COMPETITOR_PRICE_JPY3													  AS COMPETITOR_PRICE_JPY3		
  ,PRD.USER_LAST_MODIFIED_DATE													  AS USER_LAST_MODIFIED_DATE		
  ,PRD.USER_LAST_MOD_FEDERATION_ID												  AS USER_LAST_MOD_FEDERATION_ID	
  ,PRD.USER_LAST_MODIFIED_EMAIL													  AS USER_LAST_MODIFIED_EMAIL		
  ,PRD.PCN_STATUS																  AS PCN_STATUS					
  ,PRD.D_IN_DEMAND_QUANTITY														  AS D_IN_DEMAND_QUANTITY			
  ,PRD.D_IN_DEMAND_AMOUNT														  AS D_IN_DEMAND_AMOUNT			
  ,PRD.D_IN_TOTAL_COST															  AS D_IN_TOTAL_COST				
  ,PRD.D_IN_TOTAL_GP															  AS D_IN_TOTAL_GP				
  ,PRD.D_IN_TOTAL_GP_PERCENT													  AS D_IN_TOTAL_GP_PERCENT		
  ,PRD.CURRENT_TOTAL_COST														  AS CURRENT_TOTAL_COST			
  ,PRD.CURRENT_TOTAL_GP															  AS CURRENT_TOTAL_GP				
  ,PRD.CURRENT_TOTAL_GP_PERCENT													  AS CURRENT_TOTAL_GP_PERCENT		
  ,PRD.CROSS_SELL															      AS CROSS_SELL					
  ,PRD.APPROVAL_STATUS															  AS APPROVAL_STATUS	
  ,OPP.END_CUSTOMER_FREE_TEXT											          AS END_CUSTOMER_FREE_TEXT	
  ,OPP.AUTOMOTIVE_OEM_NAME														  AS AUTOMOTIVE_OEM_NAME		
  ,OPP.GROUPING_NAME															  AS GROUPING_NAME			
  ,OPP.SALES_TEAM_NAME_1														  AS SALES_TEAM_NAME_1		
  ,OPP.SALES_TEAM_NAME_2														  AS SALES_TEAM_NAME_2		
  ,OPP.SALES_TEAM_NAME_3														  AS SALES_TEAM_NAME_3		
  ,OPP.SALES_TEAM_NAME_4														  AS SALES_TEAM_NAME_4	
  ,OPP.D_IN_SCM_CUST_CODE_DUMMY_FLAG                                              AS D_IN_SCM_CUST_CODE_DUMMY_FLAG
  ,OPP.NDA_FLAG                                                                   AS NDA_FLAG 
  ,OPP.STAGE_TYPE                                                                 AS STAGE_TYPE
  ,OPP.D_IN_SALES_COMPANY                                                         AS D_IN_SALES_COMPANY
  ,OPP.ESTIMATED_ANNUAL_USAGE                                                     AS ESTIMATED_ANNUAL_USAGE
  ,OPP.OPPORTUNITY_NAME                                                           AS OPPORTUNITY_NAME
  ,OPP.OPPORTUNITY_INDUSTRY                                                       AS OPPORTUNITY_INDUSTRY
  ,OPP.TRACKING_TYPE_STATUS                                                       AS TRACKING_TYPE_STATUS
  ,OPP.END_CUSTOMER_NAME                                                          AS END_CUSTOMER_NAME
  ,OPP.END_CUSTOMER_COUNTRY                                                       AS END_CUSTOMER_COUNTRY
  ,OPP.CREATED_BY_FEDERATION_ID                                                   AS OPP_CREATED_BY_FEDERATION_ID
  ,OPP.CREATED_BY_EMAIL                                                           AS OPP_CREATED_BY_EMAIL
  ,OPP.CREATED_DATE                                                               AS OPP_CREATED_DATE
  ,OPP.OPPORTUNITY_DISCERNMENT                                                    AS OPP_OPPORTUNITY_DISCERNMENT
  ,PRD.STAGE_SUB_TYPE                                                             AS STAGE_SUB_TYPE                                                               
  ,PRD.CUSTOMER_PART_NO                                                           AS CUSTOMER_PART_NO                                                             
  ,PRD.AVERAGE_PRICE                                                              AS AVERAGE_PRICE                                                                
  ,PRD.B_WIN_OSC                                                                  AS B_WIN_OSC                                                                    
  ,PRD.MP_END_MONTH                                                               AS MP_END_MONTH                                                                  
  ,PRD.MP_END_DATE                                                                AS MP_END_DATE
  ,PRD.NICKNAME                                                                   AS NICKNAME
  ,PRD.OPPORTUNITY_DISCERNMENT                                                    AS PROD_OPPORTUNITY_DISCERNMENT
  ,PRD.PPAP_BY                                                                    AS PPAP_BY
  ,PRD.SALES_ORDER_PN_DUMMY_FLAG                                                  AS SALES_ORDER_PN_DUMMY_FLAG
  ,PRD.PROGRESS                                                                   AS PROGRESS
  ,PRD.PROMOTION_SAMPLE                                                           AS PROMOTION_SAMPLE
  ,PRD.RENESAS_NEW_PRODUCT                                                        AS RENESAS_NEW_PRODUCT
  ,PRD.SCHEDULE                                                                   AS SCHEDULE
  ,PRD.TARGET_PRICE                                                               AS TARGET_PRICE
  ,PRD.TECHNICAL                                                                  AS TECHNICAL
  ,PRD.RENESAS_MEET_SCHEDULE_FLG                                                  AS RENESAS_MEET_SCHEDULE_FLG
  ,PRD.RENESAS_PRD_REQ_FLG                                                        AS RENESAS_PRD_REQ_FLG
  ,PRD.PRICE_SUBMIT_FLG                                                           AS PRICE_SUBMIT_FLG
  ,PRD.SAMPLE_DELIVERY_FLG                                                        AS SAMPLE_DELIVERY_FLG
  ,PRD.APPROVER_FEDERATION_ID                                                     AS APPROVER_FEDERATION_ID
  ,PRD.AWARD_CONFIDENCE_LEVEL_PERCENT                                             AS AWARD_CONFIDENCE_LEVEL_PERCENT
  ,PRD.STATUS_UPDATE_DATE                                                         AS STATUS_UPDATE_DATE
  ,PRD.ESTIMATED_GP_PERCENT                                                       AS ESTIMATED_GP_PERCENT
  ,PRD.DAUGHTER_PROJECT_NAME                                                      AS DAUGHTER_PROJECT_NAME
  ,PRD.DEMAND_TYPE                                                                AS DEMAND_TYPE
  ,PRD.CREATED_BY_FEDERATION_ID                                                   AS PROD_CREATED_BY_FEDERATION_ID
  ,PRD.CREATED_BY_EMAIL                                                           AS PROD_CREATED_BY_EMAIL
  ,PRD.CREATED_DATE                                                               AS PROD_CREATED_DATE
  ,PRD.COMPETITOR1                                                                AS COMPETITOR1
  ,PRD.COMPETITOR_PART_NO1                                                        AS COMPETITOR_PART_NO1
  ,PRD.COMPETITOR_PRICE1                                                          AS COMPETITOR_PRICE1
  ,PRD.COMPETITOR2                                                                AS COMPETITOR2
  ,PRD.COMPETITOR_PART_NO2                                                        AS COMPETITOR_PART_NO2
  ,PRD.COMPETITOR_PRICE2                                                          AS COMPETITOR_PRICE2
  ,PRD.COMPETITOR3                                                                AS COMPETITOR3
  ,PRD.COMPETITOR_PART_NO3                                                        AS COMPETITOR_PART_NO3
  ,PRD.COMPETITOR_PRICE3                                                          AS COMPETITOR_PRICE3
  ,PRD.DR_STATUS                                                                  AS DR_STATUS
  ,PRD.APPROVAL_NOTES                                                             AS APPROVAL_NOTES
  ,PRD.DR_EXPIRATION_DATE                                                         AS DR_EXPIRATION_DATE
  ,PRD.DR_REQ_DISTI_PART_STATUS                                                   AS DR_REQ_DISTI_PART_STATUS
  ,PRD.DR_REQUESTOR_FEDERATION_ID                                                 AS DR_REQUESTOR_FEDERATION_ID
  ,PRD.DR_APRVR_FR_APRV_FEDERATION_ID                                             AS DR_APRVR_FR_APRV_FEDERATION_ID
  ,PRD.CURRENT_LTV                                                                AS CURRENT_LTV
  ,PRD.CURRENT_LTQ                                                                AS CURRENT_LTQ
  ,PRD.TYPE_STAGE                                                                 AS TYPE_STAGE
  ,PRD.PRODUCT_SHARE                                                              AS PRODUCT_SHARE
  ,PRD.QUANTITY_GAP                                                               AS QUANTITY_GAP
  ,PRD.PARTIAL_AWARD_SEQ                                                          AS PARTIAL_AWARD_SEQ
  ,PRD.PRODUCT_FAMILY_CODE                                                        AS PRODUCT_FAMILY_CODE
  ,PRD.PRODUCT_CATEGORY1_CODE                                                     AS PRODUCT_CATEGORY1_CODE
  ,PRD.PRODUCT_CATEGORY2_CODE                                                     AS PRODUCT_CATEGORY2_CODE
  ,PRD.PRODUCT_CATEGORY3_CODE                                                     AS PRODUCT_CATEGORY3_CODE
  ,PRD.PRODUCT_CATEGORY4_CODE                                                     AS PRODUCT_CATEGORY4_CODE
  ,PRD.PRODUCT_CATEGORY5_CODE                                                     AS PRODUCT_CATEGORY5_CODE
  ,PRD.APPROVER_EMAIL                                                             AS APPROVER_EMAIL
  ,PRD.ANNUAL_DEMAND_QUANTITIY_TOTAL                                              AS ANNUAL_DEMAND_QUANTITIY_TOTAL
  ,PRD.AUTOMOTIVE_OEM                                                             AS AUTOMOTIVE_OEM
  ,PRD.OPEN_DEAD_STATUS                                                           AS OPEN_DEAD_STATUS
  ,PRD.STAGE_DETAIL                                                               AS STAGE_DETAIL
  ,PRD.DELETE_FLAG                                                                AS DELETE_FLAG
  ,PRD.LAST_MODIFIED_BY_FEDERATION_ID                                             AS LAST_MODIFIED_BY_FEDERATION_ID
  ,PRD.LAST_MODIFIED_BY_EMAIL                                                     AS LAST_MODIFIED_BY_EMAIL
  ,PRD.LAST_MODIFIED_DATE                                                         AS LAST_MODIFIED_DATE
  ,PRD.APPROVAL_REQUEST_DATE                                                      AS APPROVAL_REQUEST_DATE
--ATC 20181009 LatestキューブへのAggregate対応 Start
--CDC 20180522 LatestキューブへのAggregateのBI_ExecutionLog対応 Start
--  ,T_CTRL2.DEEMED_DATE                                                            AS CALENDAR_YEAR_MONTH_DATE
--CDC 20180522 LatestキューブへのAggregateのBI_ExecutionLog対応 End
--ATC 20181009 LatestキューブへのAggregate対応 End
FROM
  [BI_DW].[dbo].[T_SFM_BCCV_OPP_PRODUCT_VIEW] PRD
LEFT OUTER JOIN
  [BI_DW].[dbo].[T_SFM_BCCV_DEMAND_VIEW] DE
ON
  DE.OPPORTUNITY_SEQ = PRD.OPPORTUNITY_SEQ
LEFT OUTER JOIN
  [BI_DW].[dbo].[T_SFM_BCCV_OPPORTUNITY_VIEW] OPP
ON
  PRD.OPPORTUNITY_NO = OPP.OPPORTUNITY_NO
LEFT OUTER JOIN
  [BI_DW].[dbo].[R_SFM_BCCV_ACCOUNT_VIEW] ACCOUNT
ON
  OPP.ACCOUNT_GROUP_CODE = ACCOUNT.ACCOUNT_GROUP_CODE
--ATC 20181009 LatestキューブへのAggregate対応 Start
--CDC 20180522 LatestキューブへのAggregateのBI_ExecutionLog対応 Start
--LEFT OUTER JOIN
--  [BI_DW].[dbo].[Z_SSIS_CTRL] T_CTRL2
--ON
--    T_CTRL2.[SSIS_PACKAGE] = N'Bamboo_OPP_PRODUCT'
--AND T_CTRL2.[JOB_TYPE]   = '1'
--AND T_CTRL2.[DS_TB_NAME] = '0'
--CDC 20180522 LatestキューブへのAggregateのBI_ExecutionLog対応 End
--ATC 20181009 LatestキューブへのAggregate対応 End
-- 王雅楠　20180629　【CRM Aggregate対応】CUBE & 明細ビュー　start
LEFT JOIN [BI_DW].[dbo].[T_SFM_BCCV_AGGREGATE_VIEW] AGG
ON PRD.OPPORTUNITY_SEQ = AGG.CRM_UNIQUEOPPORTUNITY_SEQ
-- 王雅楠　20180629　【CRM Aggregate対応】CUBE & 明細ビュー　end
WHERE PRD.STAGE = 'S4'
AND   DE.OPPORTUNITY_SEQ IS NULL
 ) T
LEFT OUTER JOIN
  [DM_MST].[dbo].[V_MST_BOOK_PN] BOOK_PN
ON
  T.SALES_ORDER_PN_FOR_SCM_OPE = BOOK_PN.BOOKING_PN
LEFT OUTER JOIN
  [DM_MST].[dbo].[V_MST_BOOK_PN] BOOK_PN_MTF
ON
  T.SALES_ORDER_PN_FOR_MTF = BOOK_PN_MTF.BOOKING_PN


GO
