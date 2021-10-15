USE [BI_DM]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[VF_SAL_RAINBOWDATA_nonEXCH] AS
--20181018 add aoki ASF�V�K���W���[�ǉ��Ή� <S>
SELECT
 [SCM_CUSTOMER_CD]
,[ORDER_PART_NO_CD]
,[SEG_CD]
,[BUSINESS_SITE]
,[CALENDAR_YM]
,[UPDATE_DATE]
,[CURRENCY]
,[TODemand_Amt_JPY]
,[TODemand_Qty]
--20190201_add_c.ma_�W�������f�B�����V�����̔�\���Ή��ɂ��h�������Ή�_START
,[TODemand_Std]
--20190201_add_c.ma_�W�������f�B�����V�����̔�\���Ή��ɂ��h�������Ή�_END
,[TOReply_Amt_JPY]
,[TOReply_Qty]
--20190201_add_c.ma_�W�������f�B�����V�����̔�\���Ή��ɂ��h�������Ή�_START
,[TOReply_Std]
--20190201_c.ma_�W�������f�B�����V�����̔�\���Ή��ɂ��h�������Ή�_END
,[GODemand_Amt_JPY]
,[GODemand_V0_Amt_JPY]
,[GODemand_V1_Amt_JPY]
,[GODemand_Other_Amt_JPY]
,[GODemand_Std]
,[GODemand_V0_Std]
,[GODemand_V1_Std]
,[GODemand_Other_Std]
,[GODemand_Qty]
,[GODemand_V0_Qty]
,[GODemand_V1_Qty]
,[GODemand_Other_Qty]
,[GOReply_Amt_JPY]
,[GOReply_Std]
,[GOReply_Qty]
,[ShippableAATP_Amt_JPY]
,[ShippableAATP_Qty]
,[AdjustedSFOut_Amt_JPY]
,[AdjustedSFOut_Qty]
,[JSF_Amt_JPY]
,[JSF_V0_Amt_JPY]
,[JSF_V1_Amt_JPY]
,[JSF_Other_Amt_JPY]
,[JSF_Qty]
,[JSF_V0_Qty]
,[JSF_V1_Qty]
,[JSF_Other_Qty]
,[ProductionPlanning_Amt]
,[ProductionPlanning_Qty]
--20190201_add_c.ma_�W�������f�B�����V�����̔�\���Ή��ɂ��h�������Ή�_START
,[ProductionPlanning_Std]
,[ProductionPlanning_Demand_Amt]
,[ProductionPlanning_Demand_Qty]
,[ProductionPlanning_Demand_Std]
--20190201_add_c.ma_�W�������f�B�����V�����̔�\���Ή��ɂ��h�������Ή�_END
,[OSC_MoveAve_Cst]
,[OSC_MoveAve_GP_Amt]
,[BI_JSF_V1_Amt] + [AdjustedSFOut_Amt_JPY] AS [BIASF_Amt]
,[BI_JSF_V1_Qty] + [AdjustedSFOut_Qty] AS [BIASF_Qty]
FROM
(
--20181018 add aoki ASF�V�K���W���[�ǉ��Ή� <E>
SELECT
 [SCM_CUSTOMER_CD]
,[ORDER_PART_NO_CD]
,[SEG_CD]
,[BUSINESS_SITE]
,[CALENDAR_YM]
,[UPDATE_DATE]
,[CURRENCY]
,0 AS [TODemand_Amt_JPY]
,0 AS [TODemand_Qty]
--20190201_add_c.ma_�W�������f�B�����V�����̔�\���Ή��ɂ��h�������Ή�_START
,0 AS [TODemand_Std]
--20190201_add_c.ma_�W�������f�B�����V�����̔�\���Ή��ɂ��h�������Ή�_END
,0 AS [TOReply_Amt_JPY]
,0 AS [TOReply_Qty]
--20190201_add_c.ma_�W�������f�B�����V�����̔�\���Ή��ɂ��h�������Ή�_START
,0 AS [TOReply_Std]
--20190201_add_c.ma_�W�������f�B�����V�����̔�\���Ή��ɂ��h�������Ή�_END
,0 AS [GODemand_Amt_JPY]
,0 AS [GODemand_V0_Amt_JPY]
,0 AS [GODemand_V1_Amt_JPY]
,0 AS [GODemand_Other_Amt_JPY]
,0 AS [GODemand_Std]
,0 AS [GODemand_V0_Std]
,0 AS [GODemand_V1_Std]
,0 AS [GODemand_Other_Std]
,0 AS [GODemand_Qty]
,0 AS [GODemand_V0_Qty]
,0 AS [GODemand_V1_Qty]
,0 AS [GODemand_Other_Qty]
,0 AS [GOReply_Amt_JPY]
,0 AS [GOReply_Std]
,0 AS [GOReply_Qty]
,SUM([ShippableAATP_Amt_JPY]) AS [ShippableAATP_Amt_JPY]
,SUM([ShippableAATP_Qty]) AS [ShippableAATP_Qty]
,SUM([AdjustedSFOut_Amt_JPY]) AS [AdjustedSFOut_Amt_JPY]
,SUM([AdjustedSFOut_Qty]) AS [AdjustedSFOut_Qty]
,0 AS [JSF_Amt_JPY]
,0 AS [JSF_V0_Amt_JPY]
,0 AS [JSF_V1_Amt_JPY]
,0 AS [JSF_Other_Amt_JPY]
,0 AS [JSF_Qty]
,0 AS [JSF_V0_Qty]
,0 AS [JSF_V1_Qty]
,0 AS [JSF_Other_Qty]
,0 AS [ProductionPlanning_Amt]
,0 AS [ProductionPlanning_Qty]
--20190201_add_c.ma_�W�������f�B�����V�����̔�\���Ή��ɂ��h�������Ή�_START
,0 AS [ProductionPlanning_Std]
,0 AS [ProductionPlanning_Demand_Amt]
,0 AS [ProductionPlanning_Demand_Qty]
,0 AS [ProductionPlanning_Demand_Std]
--20190201_add_c.ma_�W�������f�B�����V�����̔�\���Ή��ɂ��h�������Ή�_END
,0 AS [OSC_MoveAve_Cst]
,0 AS [OSC_MoveAve_GP_Amt]
--20181018 add aoki ASF�V�K���W���[�ǉ��Ή� <S>
,0 AS [BI_JSF_V1_Amt]
,0 AS [BI_JSF_V1_Qty]
--20181018 add aoki ASF�V�K���W���[�ǉ��Ή� <E>
FROM [DM_SALES].[dbo].[TPRC_T_FORECASTHISTORY]
WHERE [RESULTDIV] <> N'1'
GROUP BY 
 [SCM_CUSTOMER_CD]
,[ORDER_PART_NO_CD]
,[SEG_CD]
,[BUSINESS_SITE]
,[CALENDAR_YM]
,[UPDATE_DATE]
,[CURRENCY]

UNION ALL

SELECT
 [SCM_CUSTOMER_CD]
,[ORDER_PART_NO_CD]
,[SEG_CD]
,[BUSINESS_SITE]
,[CALENDAR_YM]
,[UPDATE_DATE]
,[CURRENCY]
,SUM([TODemand_Amt_JPY]) AS [TODemand_Amt_JPY]
,SUM([TODemand_Qty]) AS [TODemand_Qty]
--20190201_c.ma_�W�������f�B�����V�����̔�\���Ή��ɂ��h�������Ή�_START
,SUM([TODemand_Std]) AS [TODemand_Std]
--20190201_c.ma_�W�������f�B�����V�����̔�\���Ή��ɂ��h�������Ή�_END
,SUM([TOReply_Amt_JPY]) AS [TOReply_Amt_JPY]
,SUM([TOReply_Qty]) AS [TOReply_Qty]
--20190201_c.ma_�W�������f�B�����V�����̔�\���Ή��ɂ��h�������Ή�_START
,SUM([TOReply_Std]) AS [TOReply_Std]
--20190201_c.ma_�W�������f�B�����V�����̔�\���Ή��ɂ��h�������Ή�_END
,(isnull(SUM([GODemand_V0_Amt_JPY]),(0)) + isnull(SUM([GODemand_V1_Amt_JPY]),(0))) AS [GODemand_Amt_JPY]
,SUM([GODemand_V0_Amt_JPY]) AS [GODemand_V0_Amt_JPY]
,SUM([GODemand_V1_Amt_JPY]) AS [GODemand_V1_Amt_JPY]
,SUM([GODemand_Other_Amt_JPY]) AS [GODemand_Other_Amt_JPY]
,(isnull(SUM([GODemand_V0_Std]),(0)) + isnull(SUM([GODemand_V1_Std]),(0))) AS [GODemand_Std]
,SUM([GODemand_V0_Std]) AS [GODemand_V0_Std]
,SUM([GODemand_V1_Std]) AS [GODemand_V1_Std]
,SUM([GODemand_Other_Std]) AS [GODemand_Other_Std]
,(isnull(SUM([GODemand_V0_Qty]),(0)) + isnull(SUM([GODemand_V1_Qty]),(0))) AS [GODemand_Qty]
,SUM([GODemand_V0_Qty]) AS [GODemand_V0_Qty]
,SUM([GODemand_V1_Qty]) AS [GODemand_V1_Qty]
,SUM([GODemand_Other_Qty]) AS [GODemand_Other_Qty]
,SUM([GOReply_Amt_JPY]) AS [GOReply_Amt_JPY]
,SUM([GOReply_Std]) AS [GOReply_Std]
,SUM([GOReply_Qty]) AS [GOReply_Qty]
,SUM([ShippableAATP_Amt_JPY]) AS [ShippableAATP_Amt_JPY]
,SUM([ShippableAATP_Qty]) AS [ShippableAATP_Qty]
,SUM([AdjustedSFOut_Amt_JPY]) AS [AdjustedSFOut_Amt_JPY]
,SUM([AdjustedSFOut_Qty]) AS [AdjustedSFOut_Qty]
,(isnull(SUM([JSF_V0_Amt_JPY]),(0)) + isnull(SUM([JSF_V1_Amt_JPY]),(0))) AS [JSF_Amt_JPY]
,SUM([JSF_V0_Amt_JPY]) AS [JSF_V0_Amt_JPY]
,SUM([JSF_V1_Amt_JPY]) AS [JSF_V1_Amt_JPY]
,SUM([JSF_Other_Amt_JPY]) AS [JSF_Other_Amt_JPY]
,(isnull(SUM([JSF_V0_Qty]),(0)) + isnull(SUM([JSF_V1_Qty]),(0))) AS [JSF_Qty]
,SUM([JSF_V0_Qty]) AS [JSF_V0_Qty]
,SUM([JSF_V1_Qty]) AS [JSF_V1_Qty]
,SUM([JSF_Other_Qty]) AS [JSF_Other_Qty]
,SUM([ProductionPlanning_Amt]) AS [ProductionPlanning_Amt]
,SUM([ProductionPlanning_Qty]) AS [ProductionPlanning_Qty]
--20190201_add_c.ma_�W�������f�B�����V�����̔�\���Ή��ɂ��h�������Ή�_START
,SUM([ProductionPlanning_Std]) AS [ProductionPlanning_Std]
,SUM([ProductionPlanning_Demand_Amt]) AS [ProductionPlanning_Demand_Amt]
,SUM([ProductionPlanning_Demand_Qty]) AS [ProductionPlanning_Demand_Qty]
,SUM([ProductionPlanning_Demand_Std]) AS [ProductionPlanning_Demand_Std]
--20190201_add_c.ma_�W�������f�B�����V�����̔�\���Ή��ɂ��h�������Ή�_END
,SUM(OSC_MoveAve_Cst)    AS [OSC_MoveAve_Cst]
,SUM(OSC_MoveAve_GP_Amt) AS [OSC_MoveAve_GP_Amt]
--20181018 add aoki ASF�V�K���W���[�ǉ��Ή� <S>
,SUM(BI_JSF_V1_Amt) AS [BI_JSF_V1_Amt]
,SUM(BI_JSF_V1_Qty) AS [BI_JSF_V1_Qty]
--20181018 add aoki ASF�V�K���W���[�ǉ��Ή� <E>
FROM (
SELECT
 [SCM_CUSTOMER_CD]
,[ORDER_PART_NO_CD]
,[SEG_CD]
,[BUSINESS_SITE]
,[CALENDAR_YM]
,[UPDATE_DATE]
,[RESULTDIV]
,[CURRENCY]
,0 AS [TODemand_Amt_JPY]
,0 AS [TODemand_Qty]
--20190201_add_c.ma_�W�������f�B�����V�����̔�\���Ή��ɂ��h�������Ή�_START
,0 AS [TODemand_Std]
--20190201_add_c.ma_�W�������f�B�����V�����̔�\���Ή��ɂ��h�������Ή�_END
,0 AS [TOReply_Amt_JPY]
,0 AS [TOReply_Qty]
--20190201_add_c.ma_�W�������f�B�����V�����̔�\���Ή��ɂ��h�������Ή�_START
,0 AS [TOReply_Std]
--20190201_add_c.ma_�W�������f�B�����V�����̔�\���Ή��ɂ��h�������Ή�_END
--,CASE WHEN [V0V1DIV] = N'V0'                       THEN [GODemand_Amt_JPY] ELSE 0 END AS [GODemand_V0_Amt_JPY]
,CASE WHEN [V0V1DIV] IN (N'V0', N'S0')             THEN [GODemand_Amt_JPY] ELSE 0 END AS [GODemand_V0_Amt_JPY]
--,CASE WHEN [V0V1DIV] = N'V1'
,CASE WHEN [V0V1DIV] IN (N'V1', N'S1')
        THEN CASE WHEN [CALENDAR_YM] between DATEADD(DAY,1-DATEPART(DAY,UPDATE_DATE),UPDATE_DATE) and DATEADD(MONTH,5,DATEADD(DAY,1-DATEPART(DAY,UPDATE_DATE),UPDATE_DATE))
                  THEN 0 
                  ELSE [GODemand_Amt_JPY]
             END 
        ELSE 0 END AS [GODemand_V1_Amt_JPY]
--,CASE WHEN [V0V1DIV] NOT IN  (N'V0', N'V1')        THEN [GODemand_Amt_JPY] ELSE 0 END AS [GODemand_Other_Amt_JPY]
,CASE WHEN [V0V1DIV] NOT IN  (N'V0', N'V1', N'S0', N'S1')        THEN [GODemand_Amt_JPY] ELSE 0 END AS [GODemand_Other_Amt_JPY]
--,CASE WHEN [V0V1DIV] = N'V0'                       THEN [GODemand_Std] ELSE 0 END AS [GODemand_V0_Std]
,CASE WHEN [V0V1DIV] IN (N'V0', N'S0')             THEN [GODemand_Std_JPY] ELSE 0 END AS [GODemand_V0_Std]
--,CASE WHEN [V0V1DIV] = N'V1'
,CASE WHEN [V0V1DIV] IN (N'V1', N'S1')
        THEN CASE WHEN [CALENDAR_YM] between DATEADD(DAY,1-DATEPART(DAY,UPDATE_DATE),UPDATE_DATE) and DATEADD(MONTH,5,DATEADD(DAY,1-DATEPART(DAY,UPDATE_DATE),UPDATE_DATE))
                  THEN 0 
                  ELSE [GODemand_Std_JPY]
             END 
        ELSE 0 END AS [GODemand_V1_Std]
--,CASE WHEN [V0V1DIV] NOT IN  (N'V0', N'V1')        THEN [GODemand_Std] ELSE 0 END AS [GODemand_Other_Std]
,CASE WHEN [V0V1DIV] NOT IN  (N'V0', N'V1', N'S0', N'S1')       THEN [GODemand_Std_JPY] ELSE 0 END AS [GODemand_Other_Std]
--,CASE WHEN [V0V1DIV] = N'V0'                       THEN [GODemand_Qty] ELSE 0 END AS [GODemand_V0_Qty]
,CASE WHEN [V0V1DIV] IN (N'V0', N'S0')             THEN [GODemand_Qty] ELSE 0 END AS [GODemand_V0_Qty]
--,CASE WHEN [V0V1DIV] = N'V1'                       
,CASE WHEN [V0V1DIV] IN (N'V1', N'S1')                       
        THEN CASE WHEN [CALENDAR_YM] between DATEADD(DAY,1-DATEPART(DAY,UPDATE_DATE),UPDATE_DATE) and DATEADD(MONTH,5,DATEADD(DAY,1-DATEPART(DAY,UPDATE_DATE),UPDATE_DATE)) 
                  THEN 0 
                  ELSE [GODemand_Qty]
             END 
        ELSE 0 END AS [GODemand_V1_Qty]
--,CASE WHEN [V0V1DIV] NOT IN  (N'V0', N'V1')        THEN [GODemand_Qty] ELSE 0 END AS [GODemand_Other_Qty]
,CASE WHEN [V0V1DIV] NOT IN  (N'V0', N'V1', N'S0', N'S1')        THEN [GODemand_Qty] ELSE 0 END AS [GODemand_Other_Qty]
,0 AS [GOReply_Amt_JPY]
,0 AS [GOReply_Std]
,0 AS [GOReply_Qty]
,0 AS [ShippableAATP_Amt_JPY]
,0 AS [ShippableAATP_Qty]
,0 AS [AdjustedSFOut_Amt_JPY]
,0 AS [AdjustedSFOut_Qty]
--,CASE WHEN [V0V1DIV] = N'V0'                       THEN [JSF_Amt_JPY] ELSE 0 END AS [JSF_V0_Amt_JPY]
,CASE WHEN [V0V1DIV] IN (N'V0',N'S0')              THEN [JSF_Amt_JPY] ELSE 0 END AS [JSF_V0_Amt_JPY]
--,CASE WHEN [V0V1DIV] = N'V1'                       THEN [JSF_Amt_JPY] ELSE 0 END AS [JSF_V1_Amt_JPY]
,CASE WHEN [V0V1DIV] IN (N'V1',N'S1')                       THEN [JSF_Amt_JPY] ELSE 0 END AS [JSF_V1_Amt_JPY]
--,CASE WHEN [V0V1DIV] NOT IN  (N'V0', N'V1')        THEN [JSF_Amt_JPY] ELSE 0 END AS [JSF_Other_Amt_JPY]
,CASE WHEN [V0V1DIV] NOT IN  (N'V0', N'V1', N'S0', N'S1')        THEN [JSF_Amt_JPY] ELSE 0 END AS [JSF_Other_Amt_JPY]
--,CASE WHEN [V0V1DIV] = N'V0'                       THEN [JSF_Qty] ELSE 0 END AS [JSF_V0_Qty]
,CASE WHEN [V0V1DIV] IN (N'V0', N'S0')             THEN [JSF_Qty] ELSE 0 END AS [JSF_V0_Qty]
--,CASE WHEN [V0V1DIV] = N'V1'                       THEN [JSF_Qty] ELSE 0 END AS [JSF_V1_Qty]
,CASE WHEN [V0V1DIV] IN (N'V1', N'S1')                       THEN [JSF_Qty] ELSE 0 END AS [JSF_V1_Qty]
--,CASE WHEN [V0V1DIV] NOT IN  (N'V0', N'V1')        THEN [JSF_Qty] ELSE 0 END AS [JSF_Other_Qty]
,CASE WHEN [V0V1DIV] NOT IN  (N'V0', N'V1', N'S0', N'S1')        THEN [JSF_Qty] ELSE 0 END AS [JSF_Other_Qty]
,0 AS [ProductionPlanning_Amt]
,0 AS [ProductionPlanning_Qty]
--20190201_add_c.ma_�W�������f�B�����V�����̔�\���Ή��ɂ��h�������Ή�_START
,0 AS [ProductionPlanning_Std]
,0 AS [ProductionPlanning_Demand_Amt]
,0 AS [ProductionPlanning_Demand_Qty]
,0 AS [ProductionPlanning_Demand_Std]
--20190201_add_c.ma_�W�������f�B�����V�����̔�\���Ή��ɂ��h�������Ή�_END
,0 AS [OSC_MoveAve_Cst]
,0 AS [OSC_MoveAve_GP_Amt]
--20181018 add aoki ASF�V�K���W���[�ǉ��Ή� <S>
,CASE WHEN [V0V1DIV] IN (N'V1',N'S1')
      THEN CASE WHEN [CALENDAR_YM] >= DATEADD(MONTH, 6, DATEADD(DAY, 1, EOMONTH(UPDATE_DATE, -1)))
                THEN [JSF_Amt_JPY]
                ELSE 0
           END
      ELSE 0
 END AS [BI_JSF_V1_Amt]
,CASE WHEN [V0V1DIV] IN (N'V1',N'S1')
      THEN CASE WHEN [CALENDAR_YM] >= DATEADD(MONTH, 6, DATEADD(DAY, 1, EOMONTH(UPDATE_DATE, -1)))
                THEN [JSF_Qty]
                ELSE 0
           END
      ELSE 0
 END AS [BI_JSF_V1_Qty]
--20181018 add aoki ASF�V�K���W���[�ǉ��Ή� <E>
FROM [DM_SALES].[dbo].[TPRC_T_V1JSF]
) AS T
GROUP BY 
 [SCM_CUSTOMER_CD]
,[ORDER_PART_NO_CD]
,[SEG_CD]
,[BUSINESS_SITE]
,[CALENDAR_YM]
,[UPDATE_DATE]
,[CURRENCY]

UNION ALL

SELECT
 [SCM_CUSTOMER_CD]
,[ORDER_PART_NO_CD]
,[SEG_CD]
,[BUSINESS_SITE]
,[CALENDAR_YM]
,[UPDATE_DATE]
,[CURRENCY]
,SUM([TODemand_Amt_JPY]) AS [TODemand_Amt_JPY]
,SUM([TODemand_Qty]) AS [TODemand_Qty]
--20190201_add_c.ma_�W�������f�B�����V�����̔�\���Ή��ɂ��h�������Ή�_START
,SUM([TODemand_Std_JPY]) AS [TODemand_Std]
--20190201_add_c.ma_�W�������f�B�����V�����̔�\���Ή��ɂ��h�������Ή�_END
,SUM([TOReply_Amt_JPY]) AS [TOReply_Amt_JPY]
,SUM([TOReply_Qty]) AS [TOReply_Qty]
--20190201_add_c.ma_�W�������f�B�����V�����̔�\���Ή��ɂ��h�������Ή�_START
,SUM([TOReply_Std_JPY]) AS [TOReply_Std]
--20190201_add_c.ma_�W�������f�B�����V�����̔�\���Ή��ɂ��h�������Ή�_END
,0 AS [GODemand_Amt_JPY]
,0 AS [GODemand_V0_Amt_JPY]
,0 AS [GODemand_V1_Amt_JPY]
,0 AS [GODemand_Other_Amt_JPY]
,0 AS [GODemand_Std]
,0 AS [GODemand_V0_Std]
,0 AS [GODemand_V1_Std]
,0 AS [GODemand_Other_Std]
,0 AS [GODemand_Qty]
,0 AS [GODemand_V0_Qty]
,0 AS [GODemand_V1_Qty]
,0 AS [GODemand_Other_Qty]
,SUM([GOReply_Amt_JPY]) AS [GOReply_Amt_JPY]
,SUM([GOReply_Std_JPY]) AS [GOReply_Std_JPY]
,SUM([GOReply_Qty]) AS [GOReply_Qty]
,0 AS [ShippableAATP_Amt_JPY]
,0 AS [ShippableAATP_Qty]
,0 AS [AdjustedSFOut_Amt_JPY]
,0 AS [AdjustedSFOut_Qty]
,0 AS [JSF_Amt_JPY]
,0 AS [JSF_V0_Amt_JPY]
,0 AS [JSF_V1_Amt_JPY]
,0 AS [JSF_Other_Amt_JPY]
,0 AS [JSF_Qty]
,0 AS [JSF_V0_Qty]
,0 AS [JSF_V1_Qty]
,0 AS [JSF_Other_Qty]
,0 AS [ProductionPlanning_Amt]
,0 AS [ProductionPlanning_Qty]
--20190201_add_c.ma_�W�������f�B�����V�����̔�\���Ή��ɂ��h�������Ή�_START
,0 AS [ProductionPlanning_Std]
,0 AS [ProductionPlanning_Demand_Amt]
,0 AS [ProductionPlanning_Demand_Qty]
,0 AS [ProductionPlanning_Demand_Std]
--20190201_add_c.ma_�W�������f�B�����V�����̔�\���Ή��ɂ��h�������Ή�_END
,SUM(ISNULL([OSC_MoveAve_Cst], 0))    AS [OSC_MoveAve_Cst]
,SUM(ISNULL([OSC_MoveAve_GP_Amt], 0)) AS [OSC_MoveAve_GP_Amt]
--20181018 add aoki ASF�V�K���W���[�ǉ��Ή� <S>
,0 AS [BI_JSF_V1_Amt]
,0 AS [BI_JSF_V1_Qty]
--20181018 add aoki ASF�V�K���W���[�ǉ��Ή� <E>
FROM [DM_SALES].[dbo].[TPRC_T_TOGOINV]
GROUP BY 
 [SCM_CUSTOMER_CD]
,[ORDER_PART_NO_CD]
,[SEG_CD]
,[BUSINESS_SITE]
,[CALENDAR_YM]
,[UPDATE_DATE]
,[CURRENCY]

UNION ALL

SELECT
 [SCM_CUSTOMER_CD]
,[ORDER_PART_NO_CD]
,[SEG_CD]
,[BUSINESS_SITE]
,[CALENDAR_YM]
,[UPDATE_DATE]
,[CURRENCY]
,0 AS [TODemand_Amt_JPY]
,0 AS [TODemand_Qty]
--20190201_add_c.ma_�W�������f�B�����V�����̔�\���Ή��ɂ��h�������Ή�_START
,0 AS [TODemand_Std]
--20190201_add_c.ma_�W�������f�B�����V�����̔�\���Ή��ɂ��h�������Ή�_END
,0 AS [TOReply_Amt_JPY]
,0 AS [TOReply_Qty]
--20190201_add_c.ma_�W�������f�B�����V�����̔�\���Ή��ɂ��h�������Ή�_START
,0 AS [TOReply_Std]
--20190201_add_c.ma_�W�������f�B�����V�����̔�\���Ή��ɂ��h�������Ή�_END
,0 AS [GODemand_Amt_JPY]
,0 AS [GODemand_V0_Amt_JPY]
,0 AS [GODemand_V1_Amt_JPY]
,0 AS [GODemand_Other_Amt_JPY]
,0 AS [GODemand_Std]
,0 AS [GODemand_V0_Std]
,0 AS [GODemand_V1_Std]
,0 AS [GODemand_Other_Std]
,0 AS [GODemand_Qty]
,0 AS [GODemand_V0_Qty]
,0 AS [GODemand_V1_Qty]
,0 AS [GODemand_Other_Qty]
,0 AS [GOReply_Amt_JPY]
,0 AS [GOReply_Std]
,0 AS [GOReply_Qty]
,0 AS [ShippableAATP_Amt_JPY]
,0 AS [ShippableAATP_Qty]
,0 AS [AdjustedSFOut_Amt_JPY]
,0 AS [AdjustedSFOut_Qty]
,0 AS [JSF_Amt_JPY]
,0 AS [JSF_V0_Amt_JPY]
,0 AS [JSF_V1_Amt_JPY]
,0 AS [JSF_Other_Amt_JPY]
,0 AS [JSF_Qty]
,0 AS [JSF_V0_Qty]
,0 AS [JSF_V1_Qty]
,0 AS [JSF_Other_Qty]
,[ProductionPlanning_Amt]
,[ProductionPlanning_Qty]
--20190201_add_c.ma_�W�������f�B�����V�����̔�\���Ή��ɂ��h�������Ή�_START
,[ProductionPlanning_Std]
,0 AS [ProductionPlanning_Demand_Amt]
,0 AS [ProductionPlanning_Demand_Qty]
,0 AS [ProductionPlanning_Demand_Std]
--20190201_add_c.ma_�W�������f�B�����V�����̔�\���Ή��ɂ��h�������Ή�_END
,0 AS [OSC_MoveAve_Cst]
,0 AS [OSC_MoveAve_GP_Amt]
--20181018 add aoki ASF�V�K���W���[�ǉ��Ή� <S>
,0 AS [BI_JSF_V1_Amt]
,0 AS [BI_JSF_V1_Qty]
--20181018 add aoki ASF�V�K���W���[�ǉ��Ή� <E>
FROM [DM_SALES].[dbo].[TPRC_T_PRODUCTION_PLAN_REPLY]

--20190201_add_c.ma_�W�������f�B�����V�����̔�\���Ή��ɂ��h�������Ή�_START
UNION ALL

SELECT
 [SCM_CUSTOMER_CD]
,[ORDER_PART_NO_CD]
,[SEG_CD]
,[BUSINESS_SITE]
,[CALENDAR_YM]
,[UPDATE_DATE]
,[CURRENCY]
,0 AS [TODemand_Amt_JPY]
,0 AS [TODemand_Qty]
,0 AS [TODemand_Std]
,0 AS [TOReply_Amt_JPY]
,0 AS [TOReply_Qty]
,0 AS [TOReply_Std]
,0 AS [GODemand_Amt_JPY]
,0 AS [GODemand_V0_Amt_JPY]
,0 AS [GODemand_V1_Amt_JPY]
,0 AS [GODemand_Other_Amt_JPY]
,0 AS [GODemand_Std]
,0 AS [GODemand_V0_Std]
,0 AS [GODemand_V1_Std]
,0 AS [GODemand_Other_Std]
,0 AS [GODemand_Qty]
,0 AS [GODemand_V0_Qty]
,0 AS [GODemand_V1_Qty]
,0 AS [GODemand_Other_Qty]
,0 AS [GOReply_Amt_JPY]
,0 AS [GOReply_Std]
,0 AS [GOReply_Qty]
,0 AS [ShippableAATP_Amt_JPY]
,0 AS [ShippableAATP_Qty]
,0 AS [AdjustedSFOut_Amt_JPY]
,0 AS [AdjustedSFOut_Qty]
,0 AS [JSF_Amt_JPY]
,0 AS [JSF_V0_Amt_JPY]
,0 AS [JSF_V1_Amt_JPY]
,0 AS [JSF_Other_Amt_JPY]
,0 AS [JSF_Qty]
,0 AS [JSF_V0_Qty]
,0 AS [JSF_V1_Qty]
,0 AS [JSF_Other_Qty]
,0 AS [ProductionPlanning_Amt]
,0 AS [ProductionPlanning_Qty]
,0 AS [ProductionPlanning_Std]
,[ProductionPlanningRequest_Amt] AS [ProductionPlanning_Demand_Amt]
,[ProductionPlanningRequest_Qty] AS [ProductionPlanning_Demand_Qty]
,[ProductionPlanningRequest_Std] AS [ProductionPlanning_Demand_Std]
,0 AS [OSC_MoveAve_Cst]
,0 AS [OSC_MoveAve_GP_Amt]
,0 AS [BI_JSF_V1_Amt]
,0 AS [BI_JSF_V1_Qty]
FROM [DM_SALES].[dbo].[TPRC_T_PRODUCTION_PLAN_DEMAND]
--20190201_add_c.ma_�W�������f�B�����V�����̔�\���Ή��ɂ��h�������Ή�_END

UNION ALL

SELECT
 [SCM_CUSTOMER_CD]
,[ORDER_PART_NO_CD]
,[SEG_CD]
,[BUSINESS_SITE]
,[CALENDAR_YM]
,[UPDATE_DATE]
,[CURRENCY]
,SUM([TODemand_Amt]) AS [TODemand_Amt_JPY]
,SUM([TODemand_Qty]) AS [TODemand_Qty]
--20190201_add_c.ma_�W�������f�B�����V�����̔�\���Ή��ɂ��h�������Ή�_START
,0                   AS [TODemand_Std]
--20190201_add_c.ma_�W�������f�B�����V�����̔�\���Ή��ɂ��h�������Ή�_END
,SUM([TOReply_Amt]) AS [TOReply_Amt_JPY]
,SUM([TOReply_Qty]) AS [TOReply_Qty]
--20190201_add_c.ma_�W�������f�B�����V�����̔�\���Ή��ɂ��h�������Ή�_START
,0                  AS [TOReply_Std]
--20190201_add_c.ma_�W�������f�B�����V�����̔�\���Ή��ɂ��h�������Ή�_END
,SUM([GODemand_Amt]) AS [GODemand_Amt_JPY]
,SUM([GODemand_V0_Amt]) AS [GODemand_V0_Amt_JPY]
,SUM([GODemand_V1_Amt]) AS [GODemand_V1_Amt_JPY]
,SUM([GODemand_Other_Amt]) AS [GODemand_Other_Amt_JPY]
,SUM([GODemand_Std]) AS [GODemand_Std]
,SUM([GODemand_V0_Std]) AS [GODemand_V0_Std]
,SUM([GODemand_V1_Std]) AS [GODemand_V1_Std]
,SUM([GODemand_Other_Std]) AS [GODemand_Other_Std]
,SUM([GODemand_Qty]) AS [GODemand_Qty]
,SUM([GODemand_V0_Qty]) AS [GODemand_V0_Qty]
,SUM([GODemand_V1_Qty]) AS [GODemand_V1_Qty]
,SUM([GODemand_Other_Qty]) AS [GODemand_Other_Qty]
,SUM([GOReply_Amt]) AS [GOReply_Amt_JPY]
,SUM([GOReply_Std]) AS [GOReply_Std]
,SUM([GOReply_Qty]) AS [GOReply_Qty]
,SUM([ShippableAATP_Amt]) AS [ShippableAATP_Amt_JPY]
,SUM([ShippableAATP_Qty]) AS [ShippableAATP_Qty]
,SUM([AdjustedSFOut_Amt]) AS [AdjustedSFOut_Amt_JPY]
,SUM([AdjustedSFOut_Qty]) AS [AdjustedSFOut_Qty]
,SUM([JSF_Amt]) AS [JSF_Amt_JPY]
,SUM([JSF_V0_Amt]) AS [JSF_V0_Amt_JPY]
,SUM([JSF_V1_Amt]) AS [JSF_V1_Amt_JPY]
,SUM([JSF_Other_Amt]) AS [JSF_Other_Amt_JPY]
,SUM([JSF_Qty]) AS [JSF_Qty]
,SUM([JSF_V0_Qty]) AS [JSF_V0_Qty]
,SUM([JSF_V1_Qty]) AS [JSF_V1_Qty]
,SUM([JSF_Other_Qty]) AS [JSF_Other_Qty]
,SUM([ProductionPlanning_Amt]) AS [ProductionPlanning_Amt]
,SUM([ProductionPlanning_Qty]) AS [ProductionPlanning_Qty]
--20190201_add_c.ma_�W�������f�B�����V�����̔�\���Ή��ɂ��h�������Ή�_START
,0 AS [ProductionPlanning_Std]
,0 AS [ProductionPlanning_Demand_Amt]
,0 AS [ProductionPlanning_Demand_Qty]
,0 AS [ProductionPlanning_Demand_Std]
--20190201_add_c.ma_�W�������f�B�����V�����̔�\���Ή��ɂ��h�������Ή�_END
,0 AS [OSC_MoveAve_Cst]
,0 AS [OSC_MoveAve_GP_Amt]
--20181018 add aoki ASF�V�K���W���[�ǉ��Ή� <S>
,0 AS [BI_JSF_V1_Amt]
,0 AS [BI_JSF_V1_Qty]
--20181018 add aoki ASF�V�K���W���[�ǉ��Ή� <E>
FROM [BI_DM].[dbo].[T_PRO_RAINBOWDATA]
GROUP BY 
 [SCM_CUSTOMER_CD]
,[ORDER_PART_NO_CD]
,[SEG_CD]
,[BUSINESS_SITE]
,[CALENDAR_YM]
,[UPDATE_DATE]
,[CURRENCY]
) AS SUMMARY
GO
