USE [BI_DW]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [dbo].[VR_SFM_OPP_PRD_DEMAND_L] AS
SELECT
   PRD.OPPORTUNITY_SEQ                                                            AS OPPORTUNITY_SEQ
  ,OPP.OPPORTUNITY_NO                                                             AS OPPORTUNITY_NO
  ,SUBSTRING(PRD.OPPORTUNITY_SEQ, 1, 10)                                          AS OPPORTUNITY_SEQ_PRD
  ,PRD.STAGE                                                                      AS STAGE
  ,OPP.D_IN_SCM_CUST_CODE_FOR_MTF                                                 AS D_IN_SCM_CUST_CODE_FOR_MTF
  ,OPP.D_IN_SCM_CUST_CODE_FOR_SCM_OPE                                             AS D_IN_SCM_CUST_CODE_FOR_SCM_OPE
  ,PRD.B_WIN_SCM_CUSTOMER_CODE                                                    AS B_WIN_SCM_CUSTOMER_CODE
  ,[BI_DM].[dbo].[SF_ConvertPartNoCD](PRD.SALES_ORDER_PN_FOR_MTF)                 AS SALES_ORDER_PN_FOR_MTF
  ,[BI_DM].[dbo].[SF_ConvertPartNoCD](PRD.SALES_ORDER_PN_FOR_SCM_OPE)             AS SALES_ORDER_PN_FOR_SCM_OPE
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
--  ,CASE WHEN DE.NOMINATION_REMAINING_QUANTITY <> 0 THEN
  ,CASE
   WHEN OPP.STAGE_TYPE = '10' THEN                    -- DPNAå^
       CASE WHEN PRD.STAGE in ('S0','S1','S2') THEN   -- S0Å`S2Ç™ëŒè€
          CASE WHEN DE.PARTIAL_AWARD_SEQ IS NULL THEN -- êe
             DE.NOMINATION_REMAINING_QUANTITY         -- Nominationécêîó 
          ELSE                                        -- éq
             DE.QUANTITY_1PIECE                       -- êîó 
          END
	   ELSE
	      DE.QUANTITY_1PIECE
	   END
   ELSE                                               -- DPAå^
       DE.QUANTITY_1PIECE
   END                                                                            AS QUANTITY_1PIECE
  ,DE.PRICE                                                                       AS PRICE
--  ,CASE WHEN DE.NOMINATION_REMAINING_AMOUNT <> 0 THEN
  ,CASE
   WHEN OPP.STAGE_TYPE = '10' THEN                    -- DPNAå^
       CASE WHEN PRD.STAGE in ('S0','S1','S2') THEN   -- S0Å`S2Ç™ëŒè€
          CASE WHEN DE.PARTIAL_AWARD_SEQ IS NULL THEN -- êe
             DE.NOMINATION_REMAINING_AMOUNT           -- Nominationécã‡äz
          ELSE                                        -- éq
             DE.AMOUNT                                -- ã‡äz
          END
	   ELSE
	      DE.AMOUNT
	   END
   ELSE                                               -- DPAå^
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
FROM
  [BI_DW].[dbo].[R_SFM_BCCV_DEMAND_VIEW] DE
LEFT OUTER JOIN
  [BI_DW].[dbo].[R_SFM_BCCV_OPP_PRODUCT_VIEW] PRD
ON
  DE.OPPORTUNITY_SEQ = PRD.OPPORTUNITY_SEQ
LEFT OUTER JOIN
  [BI_DW].[dbo].[R_SFM_BCCV_OPPORTUNITY_VIEW] OPP
ON
  DE.OPPORTUNITY_NO = OPP.OPPORTUNITY_NO
LEFT OUTER JOIN
  [BI_DW].[dbo].[R_SFM_BCCV_ACCOUNT_VIEW] ACCOUNT
ON
  OPP.ACCOUNT_GROUP_CODE = ACCOUNT.ACCOUNT_GROUP_CODE



GO
