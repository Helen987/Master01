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
--20190117_add_c.ma_Rainbow�f�ʕێ��AQTY�Ή�_START
    ,[UPDATE_DATE]
--20190117_add_c.ma_Rainbow�f�ʕێ��AQTY�Ή�_END
    ,[CURRENCY]
    ,[CURRENCY_EXCH]
    ,[TODemand_Amt]
--20190117_add_c.ma_Rainbow�f�ʕێ��AQTY�Ή�_START
    ,[TODemand_Qty]
--20190117_add_c.ma_Rainbow�f�ʕێ��AQTY�Ή�_END
--20190201_add_c.ma_�W�������f�B�����V�����̔�\���Ή��ɂ��h�������Ή�_START
    ,[TODemand_Std]
--20190201_add_c.ma_�W�������f�B�����V�����̔�\���Ή��ɂ��h�������Ή�_END
    ,[TOReply_Amt]
--20190117_add_c.ma_Rainbow�f�ʕێ��AQTY�Ή�_START
    ,[TOReply_Qty]
--20190117_add_c.ma_Rainbow�f�ʕێ��AQTY�Ή�_END
--20190201_add_c.ma_�W�������f�B�����V�����̔�\���Ή��ɂ��h�������Ή�_START
    ,[TOReply_Std]
--20190201_add_c.ma_�W�������f�B�����V�����̔�\���Ή��ɂ��h�������Ή�_END
--20190122 modified �\�`���L���[�u�̃������̗��p�ʂ̍팸 0��NULL <S>
--    ,[GODemand_Amt]
    ,CASE WHEN [GODemand_Amt] = 0 THEN NULL ELSE [GODemand_Amt] END AS [GODemand_Amt]
--20190122 modified �\�`���L���[�u�̃������̗��p�ʂ̍팸 0��NULL <S>
    ,[GODemand_V0_Amt]
--20190117_add_c.ma_Rainbow�f�ʕێ��AQTY�Ή�_START
    ,[GODemand_V0_Qty]
--20190117_add_c.ma_Rainbow�f�ʕێ��AQTY�Ή�_END
    ,[GODemand_V1_Amt]
--20190117_add_c.ma_Rainbow�f�ʕێ��AQTY�Ή�_START
    ,[GODemand_V1_Qty]
--20190117_add_c.ma_Rainbow�f�ʕێ��AQTY�Ή�_END
--20190122 modified �\�`���L���[�u�̃������̗��p�ʂ̍팸 0��NULL <S>
--    ,[GODemand_Std]
    ,CASE WHEN [GODemand_Std] = 0 THEN NULL ELSE [GODemand_Std] END AS [GODemand_Std]
--20190122 modified �\�`���L���[�u�̃������̗��p�ʂ̍팸 0��NULL <S>
    ,[GODemand_V0_Std]
    ,[GODemand_V1_Std]
    ,[GOReply_Amt]
    ,[GOReply_Std]
    ,[ShippableAATP_Amt]
--20190117_add_c.ma_Rainbow�f�ʕێ��AQTY�Ή�_START
    ,[ShippableAATP_Qty]
--20190117_add_c.ma_Rainbow�f�ʕێ��AQTY�Ή�_END
    ,[AdjustedSFOut_Amt]
--20190117_add_c.ma_Rainbow�f�ʕێ��AQTY�Ή�_START
    ,[AdjustedSFOut_Qty]
--20190117_add_c.ma_Rainbow�f�ʕێ��AQTY�Ή�_END
--20190122 modified �\�`���L���[�u�̃������̗��p�ʂ̍팸 0��NULL <S>
--    ,[JSF_Amt]
    ,CASE WHEN [JSF_Amt] = 0 THEN NULL ELSE [JSF_Amt] END AS [JSF_Amt]
--20190122 modified �\�`���L���[�u�̃������̗��p�ʂ̍팸 0��NULL <S>
--20190117_add_c.ma_Rainbow�f�ʕێ��AQTY�Ή�_START
    ,CASE WHEN [JSF_Qty] = 0 THEN NULL ELSE [JSF_Qty] END AS [JSF_Qty]
--20190117_add_c.ma_Rainbow�f�ʕێ��AQTY�Ή�_END
    ,[JSF_V0_Amt]
--20190117_add_c.ma_Rainbow�f�ʕێ��AQTY�Ή�_START
    ,[JSF_V0_Qty]
--20190117_add_c.ma_Rainbow�f�ʕێ��AQTY�Ή�_END
    ,[JSF_V1_Amt]
--20190117_add_c.ma_Rainbow�f�ʕێ��AQTY�Ή�_START
    ,[JSF_V1_Qty]
--20190117_add_c.ma_Rainbow�f�ʕێ��AQTY�Ή�_END
    ,[ProductionPlanning_Amt]
--20190201_add_c.ma_�W�������f�B�����V�����̔�\���Ή��ɂ��h�������Ή�_START
    ,[ProductionPlanning_Qty]
    ,[ProductionPlanning_Std]
--20190201_add_c.ma_�W�������f�B�����V�����̔�\���Ή��ɂ��h�������Ή�_END
--20190225_add_yushuang.yin_�W�������f�B�����V�����̔�\���Ή��ɂ��h�������Ή�_START
    ,[ProductionPlanning_Demand_Amt]
    ,[ProductionPlanning_Demand_Qty]
    ,[ProductionPlanning_Demand_Std]
--20190225_add_yushuang.yin_�W�������f�B�����V�����̔�\���Ή��ɂ��h�������Ή�_END
    ,[OSC_MoveAve_Cst]
    ,[OSC_MoveAve_GP_Amt]
--20190122 modified �\�`���L���[�u�̃������̗��p�ʂ̍팸 0��NULL <S>
 --   ,[GODemand_Qty]
     ,CASE WHEN [GODemand_Qty] = 0 THEN NULL ELSE [GODemand_Qty] END AS [GODemand_Qty]
--20190122 modified �\�`���L���[�u�̃������̗��p�ʂ̍팸 0��NULL <S>
    ,[GODemand_Amt_NB_Bwin]
    ,[GODemand_Amt_NB_Din]
    ,[GOReply_Qty]
    ,[GOReply_Amt_NB_Bwin]
    ,[GOReply_Amt_NB_Din]
--20181018 add aoki ASF�V�K���W���[�ǉ��Ή� <S>
    ,[BIASF_Amt]
--20181018 add aoki ASF�V�K���W���[�ǉ��Ή� <E>
--20190117_add_c.ma_Rainbow�f�ʕێ��AQTY�Ή�_START
    ,[BIASF_Qty]
--20190117_add_c.ma_Rainbow�f�ʕێ��AQTY�Ή�_END
  FROM [BI_DM].[dbo].[F_SAL_RAINBOWDATA_DIN]

  
GO
