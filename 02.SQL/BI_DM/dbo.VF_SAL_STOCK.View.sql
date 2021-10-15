USE [BI_DM]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE VIEW [dbo].[VF_SAL_STOCK] AS
SELECT [SCM_CUSTOMER_CD]
     , [ORDER_PART_NO_CD]
     , [SEG_CD]
     , [CURRENCY]
     , [RECORD_DATE]
     , [BUSINESS_SITE_CD]
     , [CURRENCY_EXCH]
     , SUM([REL_INV_AMT_JPY])          AS [REL_INV_AMT_JPY]
     , SUM([REL_INV_AMT_NET_EXCH])	   AS [REL_INV_AMT]
     , SUM([REL_INV_QTY])              AS [REL_INV_QTY]
     , SUM([SCMP_ONHAND_INV_AMT_JPY]) + SUM([SCMP_TRANSIT_INV_AMT_JPY])           AS [SCMP_TOTAL_INV_AMT_JPY]
     , SUM([SCMP_ONHAND_INV_AMT_NET_EXCH]) + SUM([SCMP_TRANSIT_INV_AMT_NET_EXCH]) AS [SCMP_TOTAL_INV_AMT]
     , SUM([SCMP_ONHAND_INV_QTY]) + SUM([SCMP_TRANSIT_INV_QTY])                   AS [SCMP_TOTAL_INV_QTY]
     , SUM([SCMP_ONHAND_INV_AMT_JPY])       AS [SCMP_ONHAND_INV_AMT_JPY]
     , SUM([SCMP_ONHAND_INV_AMT_NET_EXCH])  AS [SCMP_ONHAND_INV_AMT]
     , SUM([SCMP_ONHAND_INV_QTY])           AS [SCMP_ONHAND_INV_QTY]
     , SUM([SCMP_TRANSIT_INV_AMT_JPY])      AS [SCMP_TRANSIT_INV_AMT_JPY]
     , SUM([SCMP_TRANSIT_INV_AMT_NET_EXCH]) AS [SCMP_TRANSIT_INV_AMT]
     , SUM([SCMP_TRANSIT_INV_QTY])          AS [SCMP_TRANSIT_INV_QTY]
     , SUM([TOKU_ONHAND_INV_AMT_JPY]) + SUM([TOKU_TRANSIT_INV_AMT_JPY])           AS [TOKU_TOTAL_INV_AMT_JPY]
     , SUM([TOKU_ONHAND_INV_AMT_NET_EXCH]) + SUM([TOKU_TRANSIT_INV_AMT_NET_EXCH]) AS [TOKU_TOTAL_INV_AMT]
     , SUM([TOKU_ONHAND_INV_QTY]) + SUM([TOKU_TRANSIT_INV_QTY])                   AS [TOKU_TOTAL_INV_QTY]
     , SUM([TOKU_ONHAND_INV_AMT_JPY])       AS [TOKU_ONHAND_INV_AMT_JPY]
     , SUM([TOKU_ONHAND_INV_AMT_NET_EXCH])  AS [TOKU_ONHAND_INV_AMT]
     , SUM([TOKU_ONHAND_INV_QTY])           AS [TOKU_ONHAND_INV_QTY]
     , SUM([TOKU_TRANSIT_INV_AMT_JPY])      AS [TOKU_TRANSIT_INV_AMT_JPY]
     , SUM([TOKU_TRANSIT_INV_AMT_NET_EXCH]) AS [TOKU_TRANSIT_INV_AMT]
     , SUM([TOKU_TRANSIT_INV_QTY])          AS [TOKU_TRANSIT_INV_QTY]
FROM (
      SELECT [SCM_CUSTOMER]		    AS [SCM_CUSTOMER_CD]
           , [BOOKING_PN_CD]		AS [ORDER_PART_NO_CD]
           , [SEG_CD]				AS [SEG_CD]
           , [CURRENCY]				AS [CURRENCY]
           , [REGISTRATION_DATE]	AS [RECORD_DATE]
           , [BUSINESS_SITE]		AS [BUSINESS_SITE_CD]
           , 'Input Currency'		AS [CURRENCY_EXCH]
           , [INVENTORY_AMT_JPY]	AS [REL_INV_AMT_JPY]
           , [INVENTORY_AMT]		AS [REL_INV_AMT_NET_EXCH]
           , [INVENTORY_QTY]		AS [REL_INV_QTY]
           , 0						AS [SCMP_ONHAND_INV_AMT_JPY]
           , 0						AS [SCMP_ONHAND_INV_AMT_NET_EXCH]
           , 0						AS [SCMP_ONHAND_INV_QTY]
           , 0						AS [SCMP_TRANSIT_INV_AMT_JPY]
           , 0						AS [SCMP_TRANSIT_INV_AMT_NET_EXCH]
           , 0						AS [SCMP_TRANSIT_INV_QTY]
           , 0						AS [TOKU_ONHAND_INV_AMT_JPY]
           , 0						AS [TOKU_ONHAND_INV_AMT_NET_EXCH]
           , 0						AS [TOKU_ONHAND_INV_QTY]
           , 0						AS [TOKU_TRANSIT_INV_AMT_JPY]
           , 0						AS [TOKU_TRANSIT_INV_AMT_NET_EXCH]
           , 0						AS [TOKU_TRANSIT_INV_QTY]
       FROM [DM_SALES].[dbo].[TUSR_T_REL_INV]
     
       UNION ALL

      SELECT [SCM_CUSTOMER]		    AS [SCM_CUSTOMER_CD]
           , [BOOKING_PN_CD]		AS [ORDER_PART_NO_CD]
           , [SEG_CD]				AS [SEG_CD]
           , [CURRENCY]				AS [CURRENCY]
           , [REGISTRATION_DATE]	AS [RECORD_DATE]
           , [BUSINESS_SITE]		AS [BUSINESS_SITE_CD]
           , 'JPY'		            AS [CURRENCY_EXCH]
           , 0                   	AS [REL_INV_AMT_JPY]
           , CONVERT(money,[INVENTORY_AMT]*RATE_JPY_BTTM.RATE)	AS [REL_INV_AMT_NET_EXCH]
           , [INVENTORY_QTY]		AS [REL_INV_QTY]
           , 0						AS [SCMP_ONHAND_INV_AMT_JPY]
           , 0						AS [SCMP_ONHAND_INV_AMT_NET_EXCH]
           , 0						AS [SCMP_ONHAND_INV_QTY]
           , 0						AS [SCMP_TRANSIT_INV_AMT_JPY]
           , 0						AS [SCMP_TRANSIT_INV_AMT_NET_EXCH]
           , 0						AS [SCMP_TRANSIT_INV_QTY]
           , 0						AS [TOKU_ONHAND_INV_AMT_JPY]
           , 0						AS [TOKU_ONHAND_INV_AMT_NET_EXCH]
           , 0						AS [TOKU_ONHAND_INV_QTY]
           , 0						AS [TOKU_TRANSIT_INV_AMT_JPY]
           , 0						AS [TOKU_TRANSIT_INV_AMT_NET_EXCH]
           , 0						AS [TOKU_TRANSIT_INV_QTY]
       FROM [DM_SALES].[dbo].[TUSR_T_REL_INV] 

LEFT OUTER JOIN [DM_MST].[dbo].[VPRC_SDM_CURRENCY_RATE] RATE_JPY_BTTM
        ON 
          RATE_JPY_BTTM.CURR_CD_FROM   = [CURRENCY]
        AND 
          RATE_JPY_BTTM.CURR_CD_TO     = 'JPY'
        AND 
           RATE_JPY_BTTM.[CURRENCY_TYPE] = 'BTTM'
        AND 
          RATE_JPY_BTTM.VALID_FROM_YMD =
          (
            SELECT TOP 1
              VALID_FROM_YMD
            FROM
              [DM_MST].[dbo].[VPRC_SDM_CURRENCY_RATE]
            WHERE
              CONVERT(DATE,[VALID_FROM_YMD]) <= [REGISTRATION_DATE]
            AND [CURRENCY_TYPE] = 'BTTM'
            AND 
              CURR_CD_FROM   = [CURRENCY]
            AND 
              CURR_CD_TO     = 'JPY'
            ORDER BY
              VALID_FROM_YMD DESC
          )

       UNION ALL

      SELECT [SCM_CUSTOMER]		    AS [SCM_CUSTOMER_CD]
           , [BOOKING_PN_CD]		AS [ORDER_PART_NO_CD]
           , [SEG_CD]				AS [SEG_CD]
           , [CURRENCY]				AS [CURRENCY]
           , [REGISTRATION_DATE]	AS [RECORD_DATE]
           , [BUSINESS_SITE]		AS [BUSINESS_SITE_CD]
           , 'USD'		            AS [CURRENCY_EXCH]
           , 0                   	AS [REL_INV_AMT_JPY]
           , CONVERT(money,[INVENTORY_AMT]*RATE_USD_BTTM.RATE)	AS [REL_INV_AMT_NET_EXCH]
           , [INVENTORY_QTY]		AS [REL_INV_QTY]
           , 0						AS [SCMP_ONHAND_INV_AMT_JPY]
           , 0						AS [SCMP_ONHAND_INV_AMT_NET_EXCH]
           , 0						AS [SCMP_ONHAND_INV_QTY]
           , 0						AS [SCMP_TRANSIT_INV_AMT_JPY]
           , 0						AS [SCMP_TRANSIT_INV_AMT_NET_EXCH]
           , 0						AS [SCMP_TRANSIT_INV_QTY]
           , 0						AS [TOKU_ONHAND_INV_AMT_JPY]
           , 0						AS [TOKU_ONHAND_INV_AMT_NET_EXCH]
           , 0						AS [TOKU_ONHAND_INV_QTY]
           , 0						AS [TOKU_TRANSIT_INV_AMT_JPY]
           , 0						AS [TOKU_TRANSIT_INV_AMT_NET_EXCH]
           , 0						AS [TOKU_TRANSIT_INV_QTY]
       FROM [DM_SALES].[dbo].[TUSR_T_REL_INV] 

LEFT OUTER JOIN [DM_MST].[dbo].[VPRC_SDM_CURRENCY_RATE] RATE_USD_BTTM
        ON 
          RATE_USD_BTTM.CURR_CD_FROM   = [CURRENCY]
        AND 
          RATE_USD_BTTM.CURR_CD_TO     = 'USD'
        AND 
           RATE_USD_BTTM.[CURRENCY_TYPE] = 'BTTM'
        AND 
          RATE_USD_BTTM.VALID_FROM_YMD =
          (
            SELECT TOP 1
              VALID_FROM_YMD
            FROM
              [DM_MST].[dbo].[VPRC_SDM_CURRENCY_RATE]
            WHERE
              CONVERT(DATE,[VALID_FROM_YMD]) <= [REGISTRATION_DATE]
            AND [CURRENCY_TYPE] = 'BTTM'
            AND 
              CURR_CD_FROM   = [CURRENCY]
            AND 
              CURR_CD_TO     = 'USD'
            ORDER BY
              VALID_FROM_YMD DESC
          )

       UNION ALL

      SELECT [SCM_CUSTOMER]		    AS [SCM_CUSTOMER_CD]
           , [BOOKING_PN_CD]		AS [ORDER_PART_NO_CD]
           , [SEG_CD]				AS [SEG_CD]
           , [CURRENCY]				AS [CURRENCY]
           , [REGISTRATION_DATE]	AS [RECORD_DATE]
           , [BUSINESS_SITE]		AS [BUSINESS_SITE_CD]
           , 'EUR'		            AS [CURRENCY_EXCH]
           , 0                   	AS [REL_INV_AMT_JPY]
           , CONVERT(money,[INVENTORY_AMT]*RATE_EUR_BTTM.RATE)	AS [REL_INV_AMT_NET_EXCH]
           , [INVENTORY_QTY]		AS [REL_INV_QTY]
           , 0						AS [SCMP_ONHAND_INV_AMT_JPY]
           , 0						AS [SCMP_ONHAND_INV_AMT_NET_EXCH]
           , 0						AS [SCMP_ONHAND_INV_QTY]
           , 0						AS [SCMP_TRANSIT_INV_AMT_JPY]
           , 0						AS [SCMP_TRANSIT_INV_AMT_NET_EXCH]
           , 0						AS [SCMP_TRANSIT_INV_QTY]
           , 0						AS [TOKU_ONHAND_INV_AMT_JPY]
           , 0						AS [TOKU_ONHAND_INV_AMT_NET_EXCH]
           , 0						AS [TOKU_ONHAND_INV_QTY]
           , 0						AS [TOKU_TRANSIT_INV_AMT_JPY]
           , 0						AS [TOKU_TRANSIT_INV_AMT_NET_EXCH]
           , 0						AS [TOKU_TRANSIT_INV_QTY]
       FROM [DM_SALES].[dbo].[TUSR_T_REL_INV] 

LEFT OUTER JOIN [DM_MST].[dbo].[VPRC_SDM_CURRENCY_RATE] RATE_EUR_BTTM
        ON 
          RATE_EUR_BTTM.CURR_CD_FROM   = [CURRENCY]
        AND 
          RATE_EUR_BTTM.CURR_CD_TO     = 'EUR'
        AND 
           RATE_EUR_BTTM.[CURRENCY_TYPE] = 'BTTM'
        AND 
          RATE_EUR_BTTM.VALID_FROM_YMD =
          (
            SELECT TOP 1
              VALID_FROM_YMD
            FROM
              [DM_MST].[dbo].[VPRC_SDM_CURRENCY_RATE]
            WHERE
              CONVERT(DATE,[VALID_FROM_YMD]) <= [REGISTRATION_DATE]
            AND [CURRENCY_TYPE] = 'BTTM'
            AND 
              CURR_CD_FROM   = [CURRENCY]
            AND 
              CURR_CD_TO     = 'EUR'
            ORDER BY
              VALID_FROM_YMD DESC
          )

	   UNION ALL

      SELECT [SCM_CUSTOMER_CD]	AS [SCM_CUSTOMER_CD]
           , [ORDER_PART_NO_CD]	AS [ORDER_PART_NO_CD]
           , [SEG_CD]			AS [SEG_CD]
           , [CURRENCY]			AS [CURRENCY]
           , [RECORD_DATE]		AS [RECORD_DATE]
           , [BUSINESS_SITE_CD] AS [BUSINESS_SITE_CD]
           , 'Input Currency'   AS [CURRENCY_EXCH]
           , 0                  AS [REL_INV_AMT_JPY]
           , 0                  AS [REL_INV_AMT_NET_EXCH]
           , 0                  AS [REL_INV_QTY]
           , 0                  AS [SCMP_ONHAND_INV_AMT_JPY]
           , 0                  AS [SCMP_ONHAND_INV_AMT_NET_EXCH]
           , 0                  AS [SCMP_ONHAND_INV_QTY]
           , [TRANSIT_AMT_JPY]  AS [SCMP_TRANSIT_INV_AMT_JPY]
           , [TRANSIT_AMT_NET]  AS [SCMP_TRANSIT_INV_AMT_NET_EXCH]
           , [TRANSIT_QTY]      AS [SCMP_TRANSIT_INV_QTY]
           , 0                  AS [TOKU_ONHAND_INV_AMT_JPY]
           , 0                  AS [TOKU_ONHAND_INV_AMT_NET_EXCH]
           , 0                  AS [TOKU_ONHAND_INV_QTY]
           , 0                  AS [TOKU_TRANSIT_INV_AMT_JPY]
           , 0                  AS [TOKU_TRANSIT_INV_AMT_NET_EXCH]
           , 0                  AS [TOKU_TRANSIT_INV_QTY]
       FROM [DM_SALES].[dbo].[TPRC_T_POINT_OSC_INTRANSIT]
      WHERE [DM_FLG] = 'Y'

	   UNION ALL

      SELECT [SCM_CUSTOMER_CD]	AS [SCM_CUSTOMER_CD]
           , [ORDER_PART_NO_CD]	AS [ORDER_PART_NO_CD]
           , [SEG_CD]			AS [SEG_CD]
           , [CURRENCY]			AS [CURRENCY]
           , [RECORD_DATE]		AS [RECORD_DATE]
           , [BUSINESS_SITE_CD] AS [BUSINESS_SITE_CD]
           , 'JPY'              AS [CURRENCY_EXCH]
           , 0                  AS [REL_INV_AMT_JPY]
           , 0                  AS [REL_INV_AMT_NET_EXCH]
           , 0                  AS [REL_INV_QTY]
           , 0                  AS [SCMP_ONHAND_INV_AMT_JPY]
           , 0                  AS [SCMP_ONHAND_INV_AMT_NET_EXCH]
           , 0                  AS [SCMP_ONHAND_INV_QTY]
           , 0                  AS [SCMP_TRANSIT_INV_AMT_JPY]
           , CONVERT(money,[TRANSIT_AMT_NET]*RATE_JPY_BTTM.RATE)  AS [SCMP_TRANSIT_INV_AMT_NET_EXCH]
           , [TRANSIT_QTY]      AS [SCMP_TRANSIT_INV_QTY]
           , 0                  AS [TOKU_ONHAND_INV_AMT_JPY]
           , 0                  AS [TOKU_ONHAND_INV_AMT_NET_EXCH]
           , 0                  AS [TOKU_ONHAND_INV_QTY]
           , 0                  AS [TOKU_TRANSIT_INV_AMT_JPY]
           , 0                  AS [TOKU_TRANSIT_INV_AMT_NET_EXCH]
           , 0                  AS [TOKU_TRANSIT_INV_QTY]
       FROM [DM_SALES].[dbo].[TPRC_T_POINT_OSC_INTRANSIT]

LEFT OUTER JOIN [DM_MST].[dbo].[VPRC_SDM_CURRENCY_RATE] RATE_JPY_BTTM
        ON 
          RATE_JPY_BTTM.CURR_CD_FROM   = [CURRENCY]
        AND 
          RATE_JPY_BTTM.CURR_CD_TO     = 'JPY'
        AND 
           RATE_JPY_BTTM.[CURRENCY_TYPE] = 'BTTM'
        AND 
          RATE_JPY_BTTM.VALID_FROM_YMD =
          (
            SELECT TOP 1
              VALID_FROM_YMD
            FROM
              [DM_MST].[dbo].[VPRC_SDM_CURRENCY_RATE]
            WHERE
              CONVERT(DATE,[VALID_FROM_YMD]) <= [RECORD_DATE]
            AND [CURRENCY_TYPE] = 'BTTM'
            AND 
              CURR_CD_FROM   = [CURRENCY]
            AND 
              CURR_CD_TO     = 'JPY'
            ORDER BY
              VALID_FROM_YMD DESC
          )
      WHERE [DM_FLG] = 'Y'

	   UNION ALL

      SELECT [SCM_CUSTOMER_CD]	AS [SCM_CUSTOMER_CD]
           , [ORDER_PART_NO_CD]	AS [ORDER_PART_NO_CD]
           , [SEG_CD]			AS [SEG_CD]
           , [CURRENCY]			AS [CURRENCY]
           , [RECORD_DATE]		AS [RECORD_DATE]
           , [BUSINESS_SITE_CD] AS [BUSINESS_SITE_CD]
           , 'USD'              AS [CURRENCY_EXCH]
           , 0                  AS [REL_INV_AMT_JPY]
           , 0                  AS [REL_INV_AMT_NET_EXCH]
           , 0                  AS [REL_INV_QTY]
           , 0                  AS [SCMP_ONHAND_INV_AMT_JPY]
           , 0                  AS [SCMP_ONHAND_INV_AMT_NET_EXCH]
           , 0                  AS [SCMP_ONHAND_INV_QTY]
           , 0                  AS [SCMP_TRANSIT_INV_AMT_JPY]
           , CONVERT(money,[TRANSIT_AMT_NET]*RATE_USD_BTTM.RATE)  AS [SCMP_TRANSIT_INV_AMT_NET_EXCH]
           , [TRANSIT_QTY]      AS [SCMP_TRANSIT_INV_QTY]
           , 0                  AS [TOKU_ONHAND_INV_AMT_JPY]
           , 0                  AS [TOKU_ONHAND_INV_AMT_NET_EXCH]
           , 0                  AS [TOKU_ONHAND_INV_QTY]
           , 0                  AS [TOKU_TRANSIT_INV_AMT_JPY]
           , 0                  AS [TOKU_TRANSIT_INV_AMT_NET_EXCH]
           , 0                  AS [TOKU_TRANSIT_INV_QTY]
       FROM [DM_SALES].[dbo].[TPRC_T_POINT_OSC_INTRANSIT]

LEFT OUTER JOIN [DM_MST].[dbo].[VPRC_SDM_CURRENCY_RATE] RATE_USD_BTTM
        ON 
          RATE_USD_BTTM.CURR_CD_FROM   = [CURRENCY]
        AND 
          RATE_USD_BTTM.CURR_CD_TO     = 'USD'
        AND 
           RATE_USD_BTTM.[CURRENCY_TYPE] = 'BTTM'
        AND 
          RATE_USD_BTTM.VALID_FROM_YMD =
          (
            SELECT TOP 1
              VALID_FROM_YMD
            FROM
              [DM_MST].[dbo].[VPRC_SDM_CURRENCY_RATE]
            WHERE
              CONVERT(DATE,[VALID_FROM_YMD]) <= [RECORD_DATE]
            AND [CURRENCY_TYPE] = 'BTTM'
            AND 
              CURR_CD_FROM   = [CURRENCY]
            AND 
              CURR_CD_TO     = 'USD'
            ORDER BY
              VALID_FROM_YMD DESC
          )
      WHERE [DM_FLG] = 'Y'

	   UNION ALL

      SELECT [SCM_CUSTOMER_CD]	AS [SCM_CUSTOMER_CD]
           , [ORDER_PART_NO_CD]	AS [ORDER_PART_NO_CD]
           , [SEG_CD]			AS [SEG_CD]
           , [CURRENCY]			AS [CURRENCY]
           , [RECORD_DATE]		AS [RECORD_DATE]
           , [BUSINESS_SITE_CD] AS [BUSINESS_SITE_CD]
           , 'EUR'              AS [CURRENCY_EXCH]
           , 0                  AS [REL_INV_AMT_JPY]
           , 0                  AS [REL_INV_AMT_NET_EXCH]
           , 0                  AS [REL_INV_QTY]
           , 0                  AS [SCMP_ONHAND_INV_AMT_JPY]
           , 0                  AS [SCMP_ONHAND_INV_AMT_NET_EXCH]
           , 0                  AS [SCMP_ONHAND_INV_QTY]
           , 0                  AS [SCMP_TRANSIT_INV_AMT_JPY]
           , CONVERT(money,[TRANSIT_AMT_NET]*RATE_EUR_BTTM.RATE)  AS [SCMP_TRANSIT_INV_AMT_NET_EXCH]
           , [TRANSIT_QTY]      AS [SCMP_TRANSIT_INV_QTY]
           , 0                  AS [TOKU_ONHAND_INV_AMT_JPY]
           , 0                  AS [TOKU_ONHAND_INV_AMT_NET_EXCH]
           , 0                  AS [TOKU_ONHAND_INV_QTY]
           , 0                  AS [TOKU_TRANSIT_INV_AMT_JPY]
           , 0                  AS [TOKU_TRANSIT_INV_AMT_NET_EXCH]
           , 0                  AS [TOKU_TRANSIT_INV_QTY]
       FROM [DM_SALES].[dbo].[TPRC_T_POINT_OSC_INTRANSIT]

LEFT OUTER JOIN [DM_MST].[dbo].[VPRC_SDM_CURRENCY_RATE] RATE_EUR_BTTM
        ON 
          RATE_EUR_BTTM.CURR_CD_FROM   = [CURRENCY]
        AND 
          RATE_EUR_BTTM.CURR_CD_TO     = 'EUR'
        AND 
           RATE_EUR_BTTM.[CURRENCY_TYPE] = 'BTTM'
        AND 
          RATE_EUR_BTTM.VALID_FROM_YMD =
          (
            SELECT TOP 1
              VALID_FROM_YMD
            FROM
              [DM_MST].[dbo].[VPRC_SDM_CURRENCY_RATE]
            WHERE
              CONVERT(DATE,[VALID_FROM_YMD]) <= [RECORD_DATE]
            AND [CURRENCY_TYPE] = 'BTTM'
            AND 
              CURR_CD_FROM   = [CURRENCY]
            AND 
              CURR_CD_TO     = 'EUR'
            ORDER BY
              VALID_FROM_YMD DESC
          )
      WHERE [DM_FLG] = 'Y'

       UNION ALL

      SELECT [SCM_CUSTOMER_CD]		AS [SCM_CUSTOMER_CD]
           , [ORDER_PART_NO_CD]		AS [ORDER_PART_NO_CD]
           , [SEG_CD]				AS [SEG_CD]
           , [CURRENCY]				AS [CURRENCY]
           , [RECORD_DATE]			AS [RECORD_DATE]
           , [RCPT_AGENT_CD]		AS [BUSINESS_SITE_CD]
           , 'Input Currency'		AS [CURRENCY_EXCH]
           , 0						AS [REL_INV_AMT_JPY]
           , 0						AS [REL_INV_AMT_NET_EXCH]
           , 0						AS [REL_INV_QTY]
           , 0						AS [SCMP_ONHAND_INV_AMT_JPY]
           , 0						AS [SCMP_ONHAND_INV_AMT_NET_EXCH]
           , 0						AS [SCMP_ONHAND_INV_QTY]
           , 0						AS [SCMP_TRANSIT_INV_AMT_JPY]
           , 0						AS [SCMP_TRANSIT_INV_AMT_NET_EXCH]
           , 0						AS [SCMP_TRANSIT_INV_QTY]
           , 0						AS [TOKU_ONHAND_INV_AMT_JPY]
           , 0						AS [TOKU_ONHAND_INV_AMT_NET_EXCH]
           , 0						AS [TOKU_ONHAND_INV_QTY]
           , [TRANSIT_AMT_JPY]		AS [TOKU_TRANSIT_INV_AMT_JPY]
           , [TRANSIT_AMT_NET]		AS [TOKU_TRANSIT_INV_AMT_NET_EXCH]
           , [TRANSIT_QTY]			AS [TOKU_TRANSIT_INV_QTY]
       FROM [DM_SALES].[dbo].[TPRC_T_POINT_INTRANSIT]
      WHERE [DM_FLG] = 'Y'

       UNION ALL

      SELECT [SCM_CUSTOMER_CD]		AS [SCM_CUSTOMER_CD]
           , [ORDER_PART_NO_CD]		AS [ORDER_PART_NO_CD]
           , [SEG_CD]				AS [SEG_CD]
           , [CURRENCY]				AS [CURRENCY]
           , [RECORD_DATE]			AS [RECORD_DATE]
           , [RCPT_AGENT_CD]		AS [BUSINESS_SITE_CD]
           , 'JPY'		            AS [CURRENCY_EXCH]
           , 0						AS [REL_INV_AMT_JPY]
           , 0						AS [REL_INV_AMT_NET_EXCH]
           , 0						AS [REL_INV_QTY]
           , 0						AS [SCMP_ONHAND_INV_AMT_JPY]
           , 0						AS [SCMP_ONHAND_INV_AMT_NET_EXCH]
           , 0						AS [SCMP_ONHAND_INV_QTY]
           , 0						AS [SCMP_TRANSIT_INV_AMT_JPY]
           , 0						AS [SCMP_TRANSIT_INV_AMT_NET_EXCH]
           , 0						AS [SCMP_TRANSIT_INV_QTY]
           , 0						AS [TOKU_ONHAND_INV_AMT_JPY]
           , 0						AS [TOKU_ONHAND_INV_AMT_NET_EXCH]
           , 0						AS [TOKU_ONHAND_INV_QTY]
           , 0		                AS [TOKU_TRANSIT_INV_AMT_JPY]
           , CONVERT(money,[TRANSIT_AMT_NET]*RATE_JPY_BTTM.RATE) AS [TOKU_TRANSIT_INV_AMT_NET_EXCH]
           , [TRANSIT_QTY]			AS [TOKU_TRANSIT_INV_QTY]
       FROM [DM_SALES].[dbo].[TPRC_T_POINT_INTRANSIT]

LEFT OUTER JOIN [DM_MST].[dbo].[VPRC_SDM_CURRENCY_RATE] RATE_JPY_BTTM
        ON 
          RATE_JPY_BTTM.CURR_CD_FROM   = [CURRENCY]
        AND 
          RATE_JPY_BTTM.CURR_CD_TO     = 'JPY'
        AND 
           RATE_JPY_BTTM.[CURRENCY_TYPE] = 'BTTM'
        AND 
          RATE_JPY_BTTM.VALID_FROM_YMD =
          (
            SELECT TOP 1
              VALID_FROM_YMD
            FROM
              [DM_MST].[dbo].[VPRC_SDM_CURRENCY_RATE]
            WHERE
              CONVERT(DATE,[VALID_FROM_YMD]) <= [RECORD_DATE]
            AND [CURRENCY_TYPE] = 'BTTM'
            AND 
              CURR_CD_FROM   = [CURRENCY]
            AND 
              CURR_CD_TO     = 'JPY'
            ORDER BY
              VALID_FROM_YMD DESC
          )
      WHERE [DM_FLG] = 'Y'

	  UNION ALL

      SELECT [SCM_CUSTOMER_CD]		AS [SCM_CUSTOMER_CD]
           , [ORDER_PART_NO_CD]		AS [ORDER_PART_NO_CD]
           , [SEG_CD]				AS [SEG_CD]
           , [CURRENCY]				AS [CURRENCY]
           , [RECORD_DATE]			AS [RECORD_DATE]
           , [RCPT_AGENT_CD]		AS [BUSINESS_SITE_CD]
           , 'USD'		            AS [CURRENCY_EXCH]
           , 0						AS [REL_INV_AMT_JPY]
           , 0						AS [REL_INV_AMT_NET_EXCH]
           , 0						AS [REL_INV_QTY]
           , 0						AS [SCMP_ONHAND_INV_AMT_JPY]
           , 0						AS [SCMP_ONHAND_INV_AMT_NET_EXCH]
           , 0						AS [SCMP_ONHAND_INV_QTY]
           , 0						AS [SCMP_TRANSIT_INV_AMT_JPY]
           , 0						AS [SCMP_TRANSIT_INV_AMT_NET_EXCH]
           , 0						AS [SCMP_TRANSIT_INV_QTY]
           , 0						AS [TOKU_ONHAND_INV_AMT_JPY]
           , 0						AS [TOKU_ONHAND_INV_AMT_NET_EXCH]
           , 0						AS [TOKU_ONHAND_INV_QTY]
           , 0		                AS [TOKU_TRANSIT_INV_AMT_JPY]
           , CONVERT(money,[TRANSIT_AMT_NET]*RATE_USD_BTTM.RATE) AS [TOKU_TRANSIT_INV_AMT_NET_EXCH]
           , [TRANSIT_QTY]			AS [TOKU_TRANSIT_INV_QTY]
       FROM [DM_SALES].[dbo].[TPRC_T_POINT_INTRANSIT]

LEFT OUTER JOIN [DM_MST].[dbo].[VPRC_SDM_CURRENCY_RATE] RATE_USD_BTTM
        ON 
          RATE_USD_BTTM.CURR_CD_FROM   = [CURRENCY]
        AND 
          RATE_USD_BTTM.CURR_CD_TO     = 'USD'
        AND 
           RATE_USD_BTTM.[CURRENCY_TYPE] = 'BTTM'
        AND 
          RATE_USD_BTTM.VALID_FROM_YMD =
          (
            SELECT TOP 1
              VALID_FROM_YMD
            FROM
              [DM_MST].[dbo].[VPRC_SDM_CURRENCY_RATE]
            WHERE
              CONVERT(DATE,[VALID_FROM_YMD]) <= [RECORD_DATE]
            AND [CURRENCY_TYPE] = 'BTTM'
            AND 
              CURR_CD_FROM   = [CURRENCY]
            AND 
              CURR_CD_TO     = 'USD'
            ORDER BY
              VALID_FROM_YMD DESC
          )
      WHERE [DM_FLG] = 'Y'

	  UNION ALL

      SELECT [SCM_CUSTOMER_CD]		AS [SCM_CUSTOMER_CD]
           , [ORDER_PART_NO_CD]		AS [ORDER_PART_NO_CD]
           , [SEG_CD]				AS [SEG_CD]
           , [CURRENCY]				AS [CURRENCY]
           , [RECORD_DATE]			AS [RECORD_DATE]
           , [RCPT_AGENT_CD]		AS [BUSINESS_SITE_CD]
           , 'EUR'		            AS [CURRENCY_EXCH]
           , 0						AS [REL_INV_AMT_JPY]
           , 0						AS [REL_INV_AMT_NET_EXCH]
           , 0						AS [REL_INV_QTY]
           , 0						AS [SCMP_ONHAND_INV_AMT_JPY]
           , 0						AS [SCMP_ONHAND_INV_AMT_NET_EXCH]
           , 0						AS [SCMP_ONHAND_INV_QTY]
           , 0						AS [SCMP_TRANSIT_INV_AMT_JPY]
           , 0						AS [SCMP_TRANSIT_INV_AMT_NET_EXCH]
           , 0						AS [SCMP_TRANSIT_INV_QTY]
           , 0						AS [TOKU_ONHAND_INV_AMT_JPY]
           , 0						AS [TOKU_ONHAND_INV_AMT_NET_EXCH]
           , 0						AS [TOKU_ONHAND_INV_QTY]
           , 0		                AS [TOKU_TRANSIT_INV_AMT_JPY]
           , CONVERT(money,[TRANSIT_AMT_NET]*RATE_EUR_BTTM.RATE) AS [TOKU_TRANSIT_INV_AMT_NET_EXCH]
           , [TRANSIT_QTY]			AS [TOKU_TRANSIT_INV_QTY]
       FROM [DM_SALES].[dbo].[TPRC_T_POINT_INTRANSIT]

LEFT OUTER JOIN [DM_MST].[dbo].[VPRC_SDM_CURRENCY_RATE] RATE_EUR_BTTM
        ON 
          RATE_EUR_BTTM.CURR_CD_FROM   = [CURRENCY]
        AND 
          RATE_EUR_BTTM.CURR_CD_TO     = 'EUR'
        AND 
           RATE_EUR_BTTM.[CURRENCY_TYPE] = 'BTTM'
        AND 
          RATE_EUR_BTTM.VALID_FROM_YMD =
          (
            SELECT TOP 1
              VALID_FROM_YMD
            FROM
              [DM_MST].[dbo].[VPRC_SDM_CURRENCY_RATE]
            WHERE
              CONVERT(DATE,[VALID_FROM_YMD]) <= [RECORD_DATE]
            AND [CURRENCY_TYPE] = 'BTTM'
            AND 
              CURR_CD_FROM   = [CURRENCY]
            AND 
              CURR_CD_TO     = 'EUR'
            ORDER BY
              VALID_FROM_YMD DESC
          )
      WHERE [DM_FLG] = 'Y'

	  UNION ALL

      SELECT [SCM_CUSTOMER]						AS [SCM_CUSTOMER_CD]
           , [BOOKING_PN_CD]					AS [ORDER_PART_NO_CD]
           , [SEG_CD]							AS [SEG_CD]
           , [CURRENCY]							AS [CURRENCY]
           , [REGISTRATION_DATE]				AS [RECORD_DATE]
           , [BUSINESS_SITE]					AS [BUSINESS_SITE_CD]
           , 'Input Currency'					AS [CURRENCY_EXCH]
           , 0									AS [REL_INV_AMT_JPY]
           , 0									AS [REL_INV_AMT_NET_EXCH]
           , 0									AS [REL_INV_QTY]
           , 0									AS [SCMP_ONHAND_INV_AMT_JPY]
           , 0									AS [SCMP_ONHAND_INV_AMT_NET_EXCH]
           , 0									AS [SCMP_ONHAND_INV_QTY]
           , 0									AS [SCMP_TRANSIT_INV_AMT_JPY]
           , 0									AS [SCMP_TRANSIT_INV_AMT_NET_EXCH]
           , 0									AS [SCMP_TRANSIT_INV_QTY]
           , [INVENTORY_AMT_JPY]                AS [TOKU_ONHAND_INV_AMT_JPY]
           , [INVENTORY_AMT]					AS [TOKU_ONHAND_INV_AMT_NET_EXCH]
           , [INVENTORY_QTY]					AS [TOKU_ONHAND_INV_QTY]
           , 0									AS [TOKU_TRANSIT_INV_AMT_JPY]
           , 0									AS [TOKU_TRANSIT_INV_AMT_NET_EXCH]
           , 0									AS [TOKU_TRANSIT_INV_QTY]
       FROM [DM_SALES].[dbo].[TUSR_T_OSC_TOKU_INV]

      WHERE [W_DS_TB_NAME] = '5'

	  UNION ALL

      SELECT [SCM_CUSTOMER]						AS [SCM_CUSTOMER_CD]
           , [BOOKING_PN_CD]					AS [ORDER_PART_NO_CD]
           , [SEG_CD]							AS [SEG_CD]
           , [CURRENCY]							AS [CURRENCY]
           , [REGISTRATION_DATE]				AS [RECORD_DATE]
           , [BUSINESS_SITE]					AS [BUSINESS_SITE_CD]
           , 'JPY'					            AS [CURRENCY_EXCH]
           , 0									AS [REL_INV_AMT_JPY]
           , 0									AS [REL_INV_AMT_NET_EXCH]
           , 0									AS [REL_INV_QTY]
           , 0									AS [SCMP_ONHAND_INV_AMT_JPY]
           , 0									AS [SCMP_ONHAND_INV_AMT_NET_EXCH]
           , 0									AS [SCMP_ONHAND_INV_QTY]
           , 0									AS [SCMP_TRANSIT_INV_AMT_JPY]
           , 0									AS [SCMP_TRANSIT_INV_AMT_NET_EXCH]
           , 0									AS [SCMP_TRANSIT_INV_QTY]
           , 0                                  AS [TOKU_ONHAND_INV_AMT_JPY]
           , CONVERT(money,[INVENTORY_AMT]*RATE_JPY_BTTM.RATE)	AS [TOKU_ONHAND_INV_AMT_NET_EXCH]
           , [INVENTORY_QTY]					AS [TOKU_ONHAND_INV_QTY]
           , 0									AS [TOKU_TRANSIT_INV_AMT_JPY]
           , 0									AS [TOKU_TRANSIT_INV_AMT_NET_EXCH]
           , 0									AS [TOKU_TRANSIT_INV_QTY]
       FROM [DM_SALES].[dbo].[TUSR_T_OSC_TOKU_INV]

LEFT OUTER JOIN [DM_MST].[dbo].[VPRC_SDM_CURRENCY_RATE] RATE_JPY_BTTM
        ON 
          RATE_JPY_BTTM.CURR_CD_FROM   = [CURRENCY]
        AND 
          RATE_JPY_BTTM.CURR_CD_TO     = 'JPY'
        AND 
           RATE_JPY_BTTM.[CURRENCY_TYPE] = 'BTTM'
        AND 
          RATE_JPY_BTTM.VALID_FROM_YMD =
          (
            SELECT TOP 1
              VALID_FROM_YMD
            FROM
              [DM_MST].[dbo].[VPRC_SDM_CURRENCY_RATE]
            WHERE
              CONVERT(DATE,[VALID_FROM_YMD]) <= [REGISTRATION_DATE]
            AND [CURRENCY_TYPE] = 'BTTM'
            AND 
              CURR_CD_FROM   = [CURRENCY]
            AND 
              CURR_CD_TO     = 'JPY'
            ORDER BY
              VALID_FROM_YMD DESC
          )
      WHERE [W_DS_TB_NAME] = '5'

	  UNION ALL

      SELECT [SCM_CUSTOMER]						AS [SCM_CUSTOMER_CD]
           , [BOOKING_PN_CD]					AS [ORDER_PART_NO_CD]
           , [SEG_CD]							AS [SEG_CD]
           , [CURRENCY]							AS [CURRENCY]
           , [REGISTRATION_DATE]				AS [RECORD_DATE]
           , [BUSINESS_SITE]					AS [BUSINESS_SITE_CD]
           , 'USD'					            AS [CURRENCY_EXCH]
           , 0									AS [REL_INV_AMT_JPY]
           , 0									AS [REL_INV_AMT_NET_EXCH]
           , 0									AS [REL_INV_QTY]
           , 0									AS [SCMP_ONHAND_INV_AMT_JPY]
           , 0									AS [SCMP_ONHAND_INV_AMT_NET_EXCH]
           , 0									AS [SCMP_ONHAND_INV_QTY]
           , 0									AS [SCMP_TRANSIT_INV_AMT_JPY]
           , 0									AS [SCMP_TRANSIT_INV_AMT_NET_EXCH]
           , 0									AS [SCMP_TRANSIT_INV_QTY]
           , 0                                  AS [TOKU_ONHAND_INV_AMT_JPY]
           , CONVERT(money,[INVENTORY_AMT]*RATE_USD_BTTM.RATE)	AS [TOKU_ONHAND_INV_AMT_NET_EXCH]
           , [INVENTORY_QTY]					AS [TOKU_ONHAND_INV_QTY]
           , 0									AS [TOKU_TRANSIT_INV_AMT_JPY]
           , 0									AS [TOKU_TRANSIT_INV_AMT_NET_EXCH]
           , 0									AS [TOKU_TRANSIT_INV_QTY]
       FROM [DM_SALES].[dbo].[TUSR_T_OSC_TOKU_INV]

LEFT OUTER JOIN [DM_MST].[dbo].[VPRC_SDM_CURRENCY_RATE] RATE_USD_BTTM
        ON 
          RATE_USD_BTTM.CURR_CD_FROM   = [CURRENCY]
        AND 
          RATE_USD_BTTM.CURR_CD_TO     = 'USD'
        AND 
           RATE_USD_BTTM.[CURRENCY_TYPE] = 'BTTM'
        AND 
          RATE_USD_BTTM.VALID_FROM_YMD =
          (
            SELECT TOP 1
              VALID_FROM_YMD
            FROM
              [DM_MST].[dbo].[VPRC_SDM_CURRENCY_RATE]
            WHERE
              CONVERT(DATE,[VALID_FROM_YMD]) <= [REGISTRATION_DATE]
            AND [CURRENCY_TYPE] = 'BTTM'
            AND 
              CURR_CD_FROM   = [CURRENCY]
            AND 
              CURR_CD_TO     = 'USD'
            ORDER BY
              VALID_FROM_YMD DESC
          )
      WHERE [W_DS_TB_NAME] = '5'

	  UNION ALL

      SELECT [SCM_CUSTOMER]						AS [SCM_CUSTOMER_CD]
           , [BOOKING_PN_CD]					AS [ORDER_PART_NO_CD]
           , [SEG_CD]							AS [SEG_CD]
           , [CURRENCY]							AS [CURRENCY]
           , [REGISTRATION_DATE]				AS [RECORD_DATE]
           , [BUSINESS_SITE]					AS [BUSINESS_SITE_CD]
           , 'EUR'					            AS [CURRENCY_EXCH]
           , 0									AS [REL_INV_AMT_JPY]
           , 0									AS [REL_INV_AMT_NET_EXCH]
           , 0									AS [REL_INV_QTY]
           , 0									AS [SCMP_ONHAND_INV_AMT_JPY]
           , 0									AS [SCMP_ONHAND_INV_AMT_NET_EXCH]
           , 0									AS [SCMP_ONHAND_INV_QTY]
           , 0									AS [SCMP_TRANSIT_INV_AMT_JPY]
           , 0									AS [SCMP_TRANSIT_INV_AMT_NET_EXCH]
           , 0									AS [SCMP_TRANSIT_INV_QTY]
           , 0                                  AS [TOKU_ONHAND_INV_AMT_JPY]
           , CONVERT(money,[INVENTORY_AMT]*RATE_EUR_BTTM.RATE)	AS [TOKU_ONHAND_INV_AMT_NET_EXCH]
           , [INVENTORY_QTY]					AS [TOKU_ONHAND_INV_QTY]
           , 0									AS [TOKU_TRANSIT_INV_AMT_JPY]
           , 0									AS [TOKU_TRANSIT_INV_AMT_NET_EXCH]
           , 0									AS [TOKU_TRANSIT_INV_QTY]
       FROM [DM_SALES].[dbo].[TUSR_T_OSC_TOKU_INV]

LEFT OUTER JOIN [DM_MST].[dbo].[VPRC_SDM_CURRENCY_RATE] RATE_EUR_BTTM
        ON 
          RATE_EUR_BTTM.CURR_CD_FROM   = [CURRENCY]
        AND 
          RATE_EUR_BTTM.CURR_CD_TO     = 'EUR'
        AND 
           RATE_EUR_BTTM.[CURRENCY_TYPE] = 'BTTM'
        AND 
          RATE_EUR_BTTM.VALID_FROM_YMD =
          (
            SELECT TOP 1
              VALID_FROM_YMD
            FROM
              [DM_MST].[dbo].[VPRC_SDM_CURRENCY_RATE]
            WHERE
              CONVERT(DATE,[VALID_FROM_YMD]) <= [REGISTRATION_DATE]
            AND [CURRENCY_TYPE] = 'BTTM'
            AND 
              CURR_CD_FROM   = [CURRENCY]
            AND 
              CURR_CD_TO     = 'EUR'
            ORDER BY
              VALID_FROM_YMD DESC
          )
      WHERE [W_DS_TB_NAME] = '5'

	  UNION ALL

      SELECT [SCM_CUSTOMER]						AS [SCM_CUSTOMER_CD]
           , [BOOKING_PN_CD]					AS [ORDER_PART_NO_CD]
           , [SEG_CD]							AS [SEG_CD]
           , [CURRENCY]							AS [CURRENCY]
           , [REGISTRATION_DATE]				AS [RECORD_DATE]
           , [BUSINESS_SITE]					AS [BUSINESS_SITE_CD]
           , 'Input Currency'					AS [CURRENCY_EXCH]
           , 0									AS [REL_INV_AMT_JPY]
           , 0									AS [REL_INV_AMT_NET_EXCH]
           , 0									AS [REL_INV_QTY]
           , [INVENTORY_AMT_JPY]				AS [SCMP_ONHAND_INV_AMT_JPY]
           , [INVENTORY_AMT]					AS [SCMP_ONHAND_INV_AMT_NET_EXCH]
           , [INVENTORY_QTY]					AS [SCMP_ONHAND_INV_QTY]
           , 0									AS [SCMP_TRANSIT_INV_AMT_JPY]
           , 0									AS [SCMP_TRANSIT_INV_AMT_NET_EXCH]
           , 0									AS [SCMP_TRANSIT_INV_QTY]
           , 0									AS [TOKU_ONHAND_INV_AMT_JPY]
           , 0									AS [TOKU_ONHAND_INV_AMT_NET_EXCH]
           , 0									AS [TOKU_ONHAND_INV_QTY]
           , 0									AS [TOKU_TRANSIT_INV_AMT_JPY]
           , 0									AS [TOKU_TRANSIT_INV_AMT_NET_EXCH]
           , 0									AS [TOKU_TRANSIT_INV_QTY]
       FROM [DM_SALES].[dbo].[TUSR_T_OSC_TOKU_INV]
      WHERE [W_DS_TB_NAME] <> '5'

	  UNION ALL

      SELECT [SCM_CUSTOMER]						AS [SCM_CUSTOMER_CD]
           , [BOOKING_PN_CD]					AS [ORDER_PART_NO_CD]
           , [SEG_CD]							AS [SEG_CD]
           , [CURRENCY]							AS [CURRENCY]
           , [REGISTRATION_DATE]				AS [RECORD_DATE]
           , [BUSINESS_SITE]					AS [BUSINESS_SITE_CD]
           , 'JPY'					            AS [CURRENCY_EXCH]
           , 0									AS [REL_INV_AMT_JPY]
           , 0									AS [REL_INV_AMT_NET_EXCH]
           , 0									AS [REL_INV_QTY]
           , 0                 				    AS [SCMP_ONHAND_INV_AMT_JPY]
           , CONVERT(money,[INVENTORY_AMT]*RATE_JPY_BTTM.RATE)	AS [SCMP_ONHAND_INV_AMT_NET_EXCH]
           , [INVENTORY_QTY]					AS [SCMP_ONHAND_INV_QTY]
           , 0									AS [SCMP_TRANSIT_INV_AMT_JPY]
           , 0									AS [SCMP_TRANSIT_INV_AMT_NET_EXCH]
           , 0									AS [SCMP_TRANSIT_INV_QTY]
           , 0									AS [TOKU_ONHAND_INV_AMT_JPY]
           , 0									AS [TOKU_ONHAND_INV_AMT_NET_EXCH]
           , 0									AS [TOKU_ONHAND_INV_QTY]
           , 0									AS [TOKU_TRANSIT_INV_AMT_JPY]
           , 0									AS [TOKU_TRANSIT_INV_AMT_NET_EXCH]
           , 0									AS [TOKU_TRANSIT_INV_QTY]
       FROM [DM_SALES].[dbo].[TUSR_T_OSC_TOKU_INV]

LEFT OUTER JOIN [DM_MST].[dbo].[VPRC_SDM_CURRENCY_RATE] RATE_JPY_BTTM
        ON 
          RATE_JPY_BTTM.CURR_CD_FROM   = [CURRENCY]
        AND 
          RATE_JPY_BTTM.CURR_CD_TO     = 'JPY'
        AND 
           RATE_JPY_BTTM.[CURRENCY_TYPE] = 'BTTM'
        AND 
          RATE_JPY_BTTM.VALID_FROM_YMD =
          (
            SELECT TOP 1
              VALID_FROM_YMD
            FROM
              [DM_MST].[dbo].[VPRC_SDM_CURRENCY_RATE]
            WHERE
              CONVERT(DATE,[VALID_FROM_YMD]) <= [REGISTRATION_DATE]
            AND [CURRENCY_TYPE] = 'BTTM'
            AND 
              CURR_CD_FROM   = [CURRENCY]
            AND 
              CURR_CD_TO     = 'JPY'
            ORDER BY
              VALID_FROM_YMD DESC
          )
      WHERE [W_DS_TB_NAME] <> '5'

	  UNION ALL

      SELECT [SCM_CUSTOMER]						AS [SCM_CUSTOMER_CD]
           , [BOOKING_PN_CD]					AS [ORDER_PART_NO_CD]
           , [SEG_CD]							AS [SEG_CD]
           , [CURRENCY]							AS [CURRENCY]
           , [REGISTRATION_DATE]				AS [RECORD_DATE]
           , [BUSINESS_SITE]					AS [BUSINESS_SITE_CD]
           , 'USD'					            AS [CURRENCY_EXCH]
           , 0									AS [REL_INV_AMT_JPY]
           , 0									AS [REL_INV_AMT_NET_EXCH]
           , 0									AS [REL_INV_QTY]
           , 0                 				    AS [SCMP_ONHAND_INV_AMT_JPY]
           , CONVERT(money,[INVENTORY_AMT]*RATE_USD_BTTM.RATE)	AS [SCMP_ONHAND_INV_AMT_NET_EXCH]
           , [INVENTORY_QTY]					AS [SCMP_ONHAND_INV_QTY]
           , 0									AS [SCMP_TRANSIT_INV_AMT_JPY]
           , 0									AS [SCMP_TRANSIT_INV_AMT_NET_EXCH]
           , 0									AS [SCMP_TRANSIT_INV_QTY]
           , 0									AS [TOKU_ONHAND_INV_AMT_JPY]
           , 0									AS [TOKU_ONHAND_INV_AMT_NET_EXCH]
           , 0									AS [TOKU_ONHAND_INV_QTY]
           , 0									AS [TOKU_TRANSIT_INV_AMT_JPY]
           , 0									AS [TOKU_TRANSIT_INV_AMT_NET_EXCH]
           , 0									AS [TOKU_TRANSIT_INV_QTY]
       FROM [DM_SALES].[dbo].[TUSR_T_OSC_TOKU_INV]

LEFT OUTER JOIN [DM_MST].[dbo].[VPRC_SDM_CURRENCY_RATE] RATE_USD_BTTM
        ON 
          RATE_USD_BTTM.CURR_CD_FROM   = [CURRENCY]
        AND 
          RATE_USD_BTTM.CURR_CD_TO     = 'USD'
        AND 
           RATE_USD_BTTM.[CURRENCY_TYPE] = 'BTTM'
        AND 
          RATE_USD_BTTM.VALID_FROM_YMD =
          (
            SELECT TOP 1
              VALID_FROM_YMD
            FROM
              [DM_MST].[dbo].[VPRC_SDM_CURRENCY_RATE]
            WHERE
              CONVERT(DATE,[VALID_FROM_YMD]) <= [REGISTRATION_DATE]
            AND [CURRENCY_TYPE] = 'BTTM'
            AND 
              CURR_CD_FROM   = [CURRENCY]
            AND 
              CURR_CD_TO     = 'USD'
            ORDER BY
              VALID_FROM_YMD DESC
          )
      WHERE [W_DS_TB_NAME] <> '5'

	  UNION ALL

      SELECT [SCM_CUSTOMER]						AS [SCM_CUSTOMER_CD]
           , [BOOKING_PN_CD]					AS [ORDER_PART_NO_CD]
           , [SEG_CD]							AS [SEG_CD]
           , [CURRENCY]							AS [CURRENCY]
           , [REGISTRATION_DATE]				AS [RECORD_DATE]
           , [BUSINESS_SITE]					AS [BUSINESS_SITE_CD]
           , 'EUR'					            AS [CURRENCY_EXCH]
           , 0									AS [REL_INV_AMT_JPY]
           , 0									AS [REL_INV_AMT_NET_EXCH]
           , 0									AS [REL_INV_QTY]
           , 0                 				    AS [SCMP_ONHAND_INV_AMT_JPY]
           , CONVERT(money,[INVENTORY_AMT]*RATE_EUR_BTTM.RATE)	AS [SCMP_ONHAND_INV_AMT_NET_EXCH]
           , [INVENTORY_QTY]					AS [SCMP_ONHAND_INV_QTY]
           , 0									AS [SCMP_TRANSIT_INV_AMT_JPY]
           , 0									AS [SCMP_TRANSIT_INV_AMT_NET_EXCH]
           , 0									AS [SCMP_TRANSIT_INV_QTY]
           , 0									AS [TOKU_ONHAND_INV_AMT_JPY]
           , 0									AS [TOKU_ONHAND_INV_AMT_NET_EXCH]
           , 0									AS [TOKU_ONHAND_INV_QTY]
           , 0									AS [TOKU_TRANSIT_INV_AMT_JPY]
           , 0									AS [TOKU_TRANSIT_INV_AMT_NET_EXCH]
           , 0									AS [TOKU_TRANSIT_INV_QTY]
       FROM [DM_SALES].[dbo].[TUSR_T_OSC_TOKU_INV]

LEFT OUTER JOIN [DM_MST].[dbo].[VPRC_SDM_CURRENCY_RATE] RATE_EUR_BTTM
        ON 
          RATE_EUR_BTTM.CURR_CD_FROM   = [CURRENCY]
        AND 
          RATE_EUR_BTTM.CURR_CD_TO     = 'EUR'
        AND 
           RATE_EUR_BTTM.[CURRENCY_TYPE] = 'BTTM'
        AND 
          RATE_EUR_BTTM.VALID_FROM_YMD =
          (
            SELECT TOP 1
              VALID_FROM_YMD
            FROM
              [DM_MST].[dbo].[VPRC_SDM_CURRENCY_RATE]
            WHERE
              CONVERT(DATE,[VALID_FROM_YMD]) <= [REGISTRATION_DATE]
            AND [CURRENCY_TYPE] = 'BTTM'
            AND 
              CURR_CD_FROM   = [CURRENCY]
            AND 
              CURR_CD_TO     = 'EUR'
            ORDER BY
              VALID_FROM_YMD DESC
          )
      WHERE [W_DS_TB_NAME] <> '5'
       ) BASE
     
GROUP BY [SCM_CUSTOMER_CD]
       , [ORDER_PART_NO_CD]
       , [SEG_CD]
       , [CURRENCY]
       , [RECORD_DATE]
       , [BUSINESS_SITE_CD]
       , [CURRENCY_EXCH]





GO
