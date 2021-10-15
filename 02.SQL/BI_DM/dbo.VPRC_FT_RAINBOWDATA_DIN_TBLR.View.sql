USE [BI_DM]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [dbo].[VPRC_FT_RAINBOWDATA_DIN_TBLR] AS
WITH   CUR_RATE
AS     (SELECT * FROM [DM_MST].[dbo].[VPRC_FSDM_OSC_CUR_RATE]),
RAINBOWDATA_DIN_BM AS (
SELECT
     [SCM_CUSTOMER_CD]
    ,[B_WIN_SCM_CUSTOMER_CD]
    ,[ORDER_PART_NO_CD]
    ,[SEG_CD]
    ,[BUSINESS_SITE]
    ,[CALENDAR_YM]
    ,[CURRENCY]
    ,CUR_RATE.[CURR_CD_TO] AS [CURRENCY_EXCH]
    ,CONVERT(money,[TODemand_Amt] * CUR_RATE.B_RATE) AS [TODemand_Amt_B]
    ,CONVERT(money,[TODemand_Amt] * CUR_RATE.M_RATE) AS [TODemand_Amt_M]
    ,CONVERT(money,[TOReply_Amt] * CUR_RATE.B_RATE) AS [TOReply_Amt_B]
    ,CONVERT(money,[TOReply_Amt] * CUR_RATE.M_RATE) AS [TOReply_Amt_M]
    ,CONVERT(money,[GODemand_Amt] * CUR_RATE.B_RATE) AS [GODemand_Amt_B]
    ,CONVERT(money,[GODemand_Amt] * CUR_RATE.M_RATE) AS [GODemand_Amt_M]
    ,CONVERT(money,[GODemand_V0_Amt] * CUR_RATE.B_RATE) AS [GODemand_V0_Amt_B]
    ,CONVERT(money,[GODemand_V0_Amt] * CUR_RATE.M_RATE) AS [GODemand_V0_Amt_M]
    ,CONVERT(money,[GODemand_V1_Amt] * CUR_RATE.B_RATE) AS [GODemand_V1_Amt_B]
    ,CONVERT(money,[GODemand_V1_Amt] * CUR_RATE.M_RATE) AS [GODemand_V1_Amt_M]
    ,CONVERT(money,[GODemand_Std] * CUR_RATE.B_RATE) AS [GODemand_Std_B]
    ,CONVERT(money,[GODemand_Std] * CUR_RATE.M_RATE) AS [GODemand_Std_M]
    ,CONVERT(money,[GODemand_V0_Std] * CUR_RATE.B_RATE) AS [GODemand_V0_Std_B]
    ,CONVERT(money,[GODemand_V0_Std] * CUR_RATE.M_RATE) AS [GODemand_V0_Std_M]
    ,CONVERT(money,[GODemand_V1_Std] * CUR_RATE.B_RATE) AS [GODemand_V1_Std_B]
    ,CONVERT(money,[GODemand_V1_Std] * CUR_RATE.M_RATE) AS [GODemand_V1_Std_M]
    ,CONVERT(money,[GOReply_Amt] * CUR_RATE.B_RATE) AS [GOReply_Amt_B]
    ,CONVERT(money,[GOReply_Amt] * CUR_RATE.M_RATE) AS [GOReply_Amt_M]
    ,CONVERT(money,[GOReply_Std] * CUR_RATE.B_RATE) AS [GOReply_Std_B]
    ,CONVERT(money,[GOReply_Std] * CUR_RATE.M_RATE) AS [GOReply_Std_M]
    ,CONVERT(money,[ShippableAATP_Amt] * CUR_RATE.B_RATE) AS [ShippableAATP_Amt_B]
    ,CONVERT(money,[ShippableAATP_Amt] * CUR_RATE.M_RATE) AS [ShippableAATP_Amt_M]
    ,CONVERT(money,[AdjustedSFOut_Amt] * CUR_RATE.B_RATE) AS [AdjustedSFOut_Amt_B]
    ,CONVERT(money,[AdjustedSFOut_Amt] * CUR_RATE.M_RATE) AS [AdjustedSFOut_Amt_M]
    ,CONVERT(money,[JSF_Amt] * CUR_RATE.B_RATE) AS [JSF_Amt_B]
    ,CONVERT(money,[JSF_Amt] * CUR_RATE.M_RATE) AS [JSF_Amt_M]
    ,CONVERT(money,[JSF_V0_Amt] * CUR_RATE.B_RATE) AS [JSF_V0_Amt_B]
    ,CONVERT(money,[JSF_V0_Amt] * CUR_RATE.M_RATE) AS [JSF_V0_Amt_M]
    ,CONVERT(money,[JSF_V1_Amt] * CUR_RATE.B_RATE) AS [JSF_V1_Amt_B]
    ,CONVERT(money,[JSF_V1_Amt] * CUR_RATE.M_RATE) AS [JSF_V1_Amt_M]
    ,CONVERT(money,[ProductionPlanning_Amt] * CUR_RATE.B_RATE) AS [ProductionPlanning_Amt_B]
    ,CONVERT(money,[ProductionPlanning_Amt] * CUR_RATE.M_RATE) AS [ProductionPlanning_Amt_M]
    ,CONVERT(money,[GODemand_Amt_NB_Bwin] * CUR_RATE.B_RATE) AS [GODemand_Amt_NB_Bwin_B]
    ,CONVERT(money,[GODemand_Amt_NB_Bwin] * CUR_RATE.M_RATE) AS [GODemand_Amt_NB_Bwin_M]
    ,CONVERT(money,[GODemand_Amt_NB_Din] * CUR_RATE.B_RATE) AS [GODemand_Amt_NB_Din_B]
    ,CONVERT(money,[GODemand_Amt_NB_Din] * CUR_RATE.M_RATE) AS [GODemand_Amt_NB_Din_M]
    ,CONVERT(money,[GOReply_Amt_NB_Bwin] * CUR_RATE.M_RATE) AS [GOReply_Amt_NB_Bwin_M]
    ,CONVERT(money,[GOReply_Amt_NB_Bwin] * CUR_RATE.B_RATE) AS [GOReply_Amt_NB_Bwin_B]
    ,CONVERT(money,[GOReply_Amt_NB_Din] * CUR_RATE.B_RATE) AS [GOReply_Amt_NB_Din_B]
    ,CONVERT(money,[GOReply_Amt_NB_Din] * CUR_RATE.M_RATE) AS [GOReply_Amt_NB_Din_M]
  FROM [BI_DM].[dbo].[F_SAL_RAINBOWDATA_DIN]
  LEFT OUTER JOIN CUR_RATE
   ON CUR_RATE.[CURR_CD_FROM] = 'JPY'
  AND [F_SAL_RAINBOWDATA_DIN].[CALENDAR_YM] = CUR_RATE.[VALID_FROM_YMD]
WHERE [CURRENCY_EXCH] = 'JPY'
)
SELECT
     [F_SAL_RAINBOWDATA_DIN].[SCM_CUSTOMER_CD]
    ,[F_SAL_RAINBOWDATA_DIN].[B_WIN_SCM_CUSTOMER_CD]
    ,[F_SAL_RAINBOWDATA_DIN].[ORDER_PART_NO_CD]
    ,[F_SAL_RAINBOWDATA_DIN].[SEG_CD]
    ,[F_SAL_RAINBOWDATA_DIN].[BUSINESS_SITE]
    ,[F_SAL_RAINBOWDATA_DIN].[CALENDAR_YM]
    ,[F_SAL_RAINBOWDATA_DIN].[CURRENCY]
    ,[F_SAL_RAINBOWDATA_DIN].[CURRENCY_EXCH]
    ,[TODemand_Amt] AS [TODemand_Amt_Q]
    ,[TODemand_Amt_B]
    ,[TODemand_Amt_M]
    ,[TOReply_Amt] AS [TOReply_Amt_Q]
    ,[TOReply_Amt_B]
    ,[TOReply_Amt_M]
    ,[GODemand_Amt] AS [GODemand_Amt_Q]
    ,[GODemand_Amt_B]
    ,[GODemand_Amt_M]
    ,[GODemand_V0_Amt] AS [GODemand_V0_Amt_Q]
    ,[GODemand_V0_Amt_B]
    ,[GODemand_V0_Amt_M]
    ,[GODemand_V1_Amt] AS [GODemand_V1_Amt_Q]
    ,[GODemand_V1_Amt_B]
    ,[GODemand_V1_Amt_M]
    ,[GODemand_Std] AS [GODemand_Std_Q]
    ,[GODemand_Std_B]
    ,[GODemand_Std_M]
    ,[GODemand_V0_Std] AS [GODemand_V0_Std_Q]
    ,[GODemand_V0_Std_B]
    ,[GODemand_V0_Std_M]
    ,[GODemand_V1_Std] AS [GODemand_V1_Std_Q]
    ,[GODemand_V1_Std_B]
    ,[GODemand_V1_Std_M]
    ,[GOReply_Amt] AS [GOReply_Amt_Q]
    ,[GOReply_Amt_B]
    ,[GOReply_Amt_M]
    ,[GOReply_Std] AS [GOReply_Std_Q]
    ,[GOReply_Std_B]
    ,[GOReply_Std_M]
    ,[ShippableAATP_Amt] AS [ShippableAATP_Amt_Q]
    ,[ShippableAATP_Amt_B]
    ,[ShippableAATP_Amt_M]
    ,[AdjustedSFOut_Amt] AS [AdjustedSFOut_Amt_Q]
    ,[AdjustedSFOut_Amt_B]
    ,[AdjustedSFOut_Amt_M]
    ,[JSF_Amt] AS [JSF_Amt_Q]
    ,[JSF_Amt_B]
    ,[JSF_Amt_M]
    ,[JSF_V0_Amt] AS [JSF_V0_Amt_Q]
    ,[JSF_V0_Amt_B]
    ,[JSF_V0_Amt_M]
    ,[JSF_V1_Amt] AS [JSF_V1_Amt_Q]
    ,[JSF_V1_Amt_B]
    ,[JSF_V1_Amt_M]
    ,[ProductionPlanning_Amt] AS [ProductionPlanning_Amt_Q]
    ,[ProductionPlanning_Amt_B]
    ,[ProductionPlanning_Amt_M]
    ,[OSC_MoveAve_Cst]
    ,[OSC_MoveAve_GP_Amt]
    ,[GODemand_Qty]
    ,[GODemand_Amt_NB_Bwin] AS [GODemand_Amt_NB_Bwin_Q]
    ,[GODemand_Amt_NB_Bwin_B]
    ,[GODemand_Amt_NB_Bwin_M]
    ,[GODemand_Amt_NB_Din] AS [GODemand_Amt_NB_Din_Q]
    ,[GODemand_Amt_NB_Din_B]
    ,[GODemand_Amt_NB_Din_M]
    ,[GOReply_Qty]
    ,[GOReply_Amt_NB_Bwin] AS [GOReply_Amt_NB_Bwin_Q]
    ,[GOReply_Amt_NB_Bwin_B]
    ,[GOReply_Amt_NB_Bwin_M]
    ,[GOReply_Amt_NB_Din] AS [GOReply_Amt_NB_Din_Q]
    ,[GOReply_Amt_NB_Din_B]
    ,[GOReply_Amt_NB_Din_M]
  FROM [BI_DM].[dbo].[F_SAL_RAINBOWDATA_DIN]
  LEFT JOIN RAINBOWDATA_DIN_BM
    ON ISNULL([F_SAL_RAINBOWDATA_DIN].[SCM_CUSTOMER_CD],'$$NULL$$') = ISNULL(RAINBOWDATA_DIN_BM.[SCM_CUSTOMER_CD],'$$NULL$$')
   AND ISNULL([F_SAL_RAINBOWDATA_DIN].[B_WIN_SCM_CUSTOMER_CD],'$$NULL$$') = ISNULL(RAINBOWDATA_DIN_BM.[B_WIN_SCM_CUSTOMER_CD],'$$NULL$$')
   AND ISNULL([F_SAL_RAINBOWDATA_DIN].[ORDER_PART_NO_CD],'$$NULL$$') = ISNULL(RAINBOWDATA_DIN_BM.[ORDER_PART_NO_CD],'$$NULL$$')
   AND ISNULL([F_SAL_RAINBOWDATA_DIN].[SEG_CD],'$$NULL$$') = ISNULL(RAINBOWDATA_DIN_BM.[SEG_CD],'$$NULL$$')
   AND ISNULL([F_SAL_RAINBOWDATA_DIN].[BUSINESS_SITE],'$$NULL$$') = ISNULL(RAINBOWDATA_DIN_BM.[BUSINESS_SITE],'$$NULL$$')
   AND ISNULL(CONVERT(nvarchar,[F_SAL_RAINBOWDATA_DIN].[CALENDAR_YM],112),'$$NULL$$') = ISNULL(CONVERT(nvarchar,RAINBOWDATA_DIN_BM.[CALENDAR_YM],112),'$$NULL$$')
   AND ISNULL([F_SAL_RAINBOWDATA_DIN].[CURRENCY],'$$NULL$$') = ISNULL(RAINBOWDATA_DIN_BM.[CURRENCY],'$$NULL$$')
   AND ISNULL([F_SAL_RAINBOWDATA_DIN].[CURRENCY_EXCH],'$$NULL$$') = ISNULL(RAINBOWDATA_DIN_BM.[CURRENCY_EXCH],'$$NULL$$')


  
GO
