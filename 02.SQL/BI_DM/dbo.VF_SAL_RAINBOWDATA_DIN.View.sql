USE [BI_DM]
GO

/****** Object:  View [dbo].[VF_SAL_RAINBOWDATA_DIN]    Script Date: 2017/03/03 11:05:26 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO



CREATE VIEW [dbo].[VF_SAL_RAINBOWDATA_DIN] AS
SELECT
     [SCM_CUSTOMER_CD]
    ,[B_WIN_SCM_CUSTOMER_CD]
    ,[ORDER_PART_NO_CD]
    ,[SEG_CD]
    ,[BUSINESS_SITE]
    ,[CALENDAR_YM]
--20190117_add_c.ma_Rainbow断面保持、QTY対応_START
    ,[UPDATE_DATE]
--20190117_add_c.ma_Rainbow断面保持、QTY対応_END
    ,[CURRENCY]
    ,[CURRENCY_EXCH]
    ,[TODemand_Amt]
--20190117_add_c.ma_Rainbow断面保持、QTY対応_START
    ,[TODemand_Qty]
--20190117_add_c.ma_Rainbow断面保持、QTY対応_END
--20190201_add_c.ma_標準原価ディメンションの非表示対応により派生した対応_START
    ,[TODemand_Std]
--20190201_add_c.ma_標準原価ディメンションの非表示対応により派生した対応_END
    ,[TOReply_Amt]
--20190117_add_c.ma_Rainbow断面保持、QTY対応_START
    ,[TOReply_Qty]
--20190117_add_c.ma_Rainbow断面保持、QTY対応_END
--20190201_add_c.ma_標準原価ディメンションの非表示対応により派生した対応_START
    ,[TOReply_Std]
--20190201_add_c.ma_標準原価ディメンションの非表示対応により派生した対応_END
--20190122 modified 表形式キューブのメモリの利用量の削減 0⇒NULL <S>
--    ,[GODemand_Amt]
    ,CASE WHEN [GODemand_Amt] = 0 THEN NULL ELSE [GODemand_Amt] END AS [GODemand_Amt]
--20190122 modified 表形式キューブのメモリの利用量の削減 0⇒NULL <S>
    ,[GODemand_V0_Amt]
--20190117_add_c.ma_Rainbow断面保持、QTY対応_START
    ,[GODemand_V0_Qty]
--20190117_add_c.ma_Rainbow断面保持、QTY対応_END
    ,[GODemand_V1_Amt]
--20190117_add_c.ma_Rainbow断面保持、QTY対応_START
    ,[GODemand_V1_Qty]
--20190117_add_c.ma_Rainbow断面保持、QTY対応_END
--20190122 modified 表形式キューブのメモリの利用量の削減 0⇒NULL <S>
--    ,[GODemand_Std]
    ,CASE WHEN [GODemand_Std] = 0 THEN NULL ELSE [GODemand_Std] END AS [GODemand_Std]
--20190122 modified 表形式キューブのメモリの利用量の削減 0⇒NULL <S>
    ,[GODemand_V0_Std]
    ,[GODemand_V1_Std]
    ,[GOReply_Amt]
    ,[GOReply_Std]
    ,[ShippableAATP_Amt]
--20190117_add_c.ma_Rainbow断面保持、QTY対応_START
    ,[ShippableAATP_Qty]
--20190117_add_c.ma_Rainbow断面保持、QTY対応_END
    ,[AdjustedSFOut_Amt]
--20190117_add_c.ma_Rainbow断面保持、QTY対応_START
    ,[AdjustedSFOut_Qty]
--20190117_add_c.ma_Rainbow断面保持、QTY対応_END
--20190122 modified 表形式キューブのメモリの利用量の削減 0⇒NULL <S>
--    ,[JSF_Amt]
    ,CASE WHEN [JSF_Amt] = 0 THEN NULL ELSE [JSF_Amt] END AS [JSF_Amt]
--20190122 modified 表形式キューブのメモリの利用量の削減 0⇒NULL <S>
--20190117_add_c.ma_Rainbow断面保持、QTY対応_START
    ,CASE WHEN [JSF_Qty] = 0 THEN NULL ELSE [JSF_Qty] END AS [JSF_Qty]
--20190117_add_c.ma_Rainbow断面保持、QTY対応_END
    ,[JSF_V0_Amt]
--20190117_add_c.ma_Rainbow断面保持、QTY対応_START
    ,[JSF_V0_Qty]
--20190117_add_c.ma_Rainbow断面保持、QTY対応_END
    ,[JSF_V1_Amt]
--20190117_add_c.ma_Rainbow断面保持、QTY対応_START
    ,[JSF_V1_Qty]
--20190117_add_c.ma_Rainbow断面保持、QTY対応_END
    ,[ProductionPlanning_Amt]
--20190201_add_c.ma_標準原価ディメンションの非表示対応により派生した対応_START
    ,[ProductionPlanning_Qty]
    ,[ProductionPlanning_Std]
--20190201_add_c.ma_標準原価ディメンションの非表示対応により派生した対応_END
--20190225_add_yushuang.yin_標準原価ディメンションの非表示対応により派生した対応_START
    ,[ProductionPlanning_Demand_Amt]
    ,[ProductionPlanning_Demand_Qty]
    ,[ProductionPlanning_Demand_Std]
--20190225_add_yushuang.yin_標準原価ディメンションの非表示対応により派生した対応_END
    ,[OSC_MoveAve_Cst]
    ,[OSC_MoveAve_GP_Amt]
--20190122 modified 表形式キューブのメモリの利用量の削減 0⇒NULL <S>
 --   ,[GODemand_Qty]
     ,CASE WHEN [GODemand_Qty] = 0 THEN NULL ELSE [GODemand_Qty] END AS [GODemand_Qty]
--20190122 modified 表形式キューブのメモリの利用量の削減 0⇒NULL <S>
    ,[GODemand_Amt_NB_Bwin]
    ,[GODemand_Amt_NB_Din]
    ,[GOReply_Qty]
    ,[GOReply_Amt_NB_Bwin]
    ,[GOReply_Amt_NB_Din]
--20181018 add aoki ASF新規メジャー追加対応 <S>
    ,[BIASF_Amt]
--20181018 add aoki ASF新規メジャー追加対応 <E>
--20190117_add_c.ma_Rainbow断面保持、QTY対応_START
    ,[BIASF_Qty]
--20190117_add_c.ma_Rainbow断面保持、QTY対応_END
  FROM [BI_DM].[dbo].[F_SAL_RAINBOWDATA_DIN]

  
GO
