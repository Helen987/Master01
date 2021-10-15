USE [BI_DW]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[R_PPL_FIXED_PPPRODPLAN](
	[DATATYPE] [nvarchar](1) NULL,
	[PRODUCTPLANPN] [nvarchar](40) NULL,
	[PARTNO] [nvarchar](40) NULL,
	[PPPRODUCTPLANPN] [nvarchar](40) NULL,
	[DATEOFDATA] [nvarchar](8) NULL,
	[PRODUCTPLANSTAT] [nvarchar](2) NULL,
	[PRICE_00] [money] NULL,
	[PRICE_01] [money] NULL,
	[PRICE_02] [money] NULL,
	[PRICE_03] [money] NULL,
	[DEMANDPTN] [nvarchar](2) NULL,
	[FIXEDPRODPLAN_00M] [decimal](38, 4) NULL,
	[FIXEDPRODPLAN_01M] [decimal](38, 4) NULL,
	[FIXEDPRODPLAN_02M] [decimal](38, 4) NULL,
	[FIXEDPRODPLAN_03M] [decimal](38, 4) NULL,
	[FIXEDPRODPLAN_04M] [decimal](38, 4) NULL,
	[FIXEDPRODPLAN_05M] [decimal](38, 4) NULL,
	[FIXEDPRODPLAN_01A] [decimal](38, 4) NULL,
	[FIXEDPRODPLAN_02A] [decimal](38, 4) NULL,
	[FIXEDPRODPLAN_03A] [decimal](38, 4) NULL,
	[FIXEDPRODPLAN_04A] [decimal](38, 4) NULL,
	[FIXEDPRODPLAN_05A] [decimal](38, 4) NULL,
	[FIXEDPRODPLAN_06A] [decimal](38, 4) NULL,
	[FIXEDPRODPLAN_07A] [decimal](38, 4) NULL,
	[FIXEDPRODPLAN_08A] [decimal](38, 4) NULL,
	[FIXEDPRODPLAN_09A] [decimal](38, 4) NULL,
	[FIXEDPRODPLAN_10A] [decimal](38, 4) NULL,
	[FIXEDPRODPLAN_11A] [decimal](38, 4) NULL,
	[FIXEDPRODPLAN_12A] [decimal](38, 4) NULL,
	[FIXEDPRODPLAN_13A] [decimal](38, 4) NULL,
	[FIXEDPRODPLAN_14A] [decimal](38, 4) NULL,
	[FIXEDPRODPLAN_15A] [decimal](38, 4) NULL,
	[FIXEDPRODPLAN_16A] [decimal](38, 4) NULL,
	[FIXEDPRODPLAN_17A] [decimal](38, 4) NULL,
	[FIXEDPRODPLAN_18A] [decimal](38, 4) NULL,
	[FIXEDPRODPLAN_19A] [decimal](38, 4) NULL,
	[FIXEDPRODPLAN_20A] [decimal](38, 4) NULL,
	[FIXEDPRODPLAN_21A] [decimal](38, 4) NULL,
	[FIXEDPRODPLAN_22A] [decimal](38, 4) NULL,
	[FIXEDPRODPLAN_23A] [decimal](38, 4) NULL,
	[FIXEDPRODPLAN_24A] [decimal](38, 4) NULL,
	[FIXEDPRODPLAN_25A] [decimal](38, 4) NULL,
	[FIXEDPRODPLAN_26A] [decimal](38, 4) NULL,
	[FIXEDPRODPLAN_27A] [decimal](38, 4) NULL,
	[FIXEDPRODPLAN_28A] [decimal](38, 4) NULL,
	[FIXEDPRODPLAN_01B] [decimal](38, 4) NULL,
	[FIXEDPRODPLAN_02B] [decimal](38, 4) NULL,
	[FIXEDPRODPLAN_03B] [decimal](38, 4) NULL,
	[FIXEDPRODPLAN_04B] [decimal](38, 4) NULL,
	[FIXEDPRODPLAN_05B] [decimal](38, 4) NULL,
	[FIXEDPRODPLAN_06B] [decimal](38, 4) NULL,
	[FIXEDPRODPLAN_07B] [decimal](38, 4) NULL,
	[FIXEDPRODPLAN_08B] [decimal](38, 4) NULL,
	[FIXEDPRODPLAN_09B] [decimal](38, 4) NULL,
	[FIXEDPRODPLAN_10B] [decimal](38, 4) NULL,
	[FIXEDPRODPLAN_11B] [decimal](38, 4) NULL,
	[FIXEDPRODPLAN_12B] [decimal](38, 4) NULL,
	[FIXEDPRODPLAN_13B] [decimal](38, 4) NULL,
	[FIXEDPRODPLAN_14B] [decimal](38, 4) NULL,
	[FIXEDPRODPLAN_15B] [decimal](38, 4) NULL,
	[FIXEDPRODPLAN_16B] [decimal](38, 4) NULL,
	[FIXEDPRODPLAN_17B] [decimal](38, 4) NULL,
	[FIXEDPRODPLAN_18B] [decimal](38, 4) NULL,
	[FIXEDPRODPLAN_19B] [decimal](38, 4) NULL,
	[FIXEDPRODPLAN_20B] [decimal](38, 4) NULL,
	[FIXEDPRODPLAN_21B] [decimal](38, 4) NULL,
	[FIXEDPRODPLAN_22B] [decimal](38, 4) NULL,
	[FIXEDPRODPLAN_23B] [decimal](38, 4) NULL,
	[FIXEDPRODPLAN_24B] [decimal](38, 4) NULL,
	[FIXEDPRODPLAN_25B] [decimal](38, 4) NULL,
	[FIXEDPRODPLAN_26B] [decimal](38, 4) NULL,
	[FIXEDPRODPLAN_27B] [decimal](38, 4) NULL,
	[FIXEDPRODPLAN_28B] [decimal](38, 4) NULL,
	[FIXEDPRODPLAN_AMT] [money] NULL,
	[FIXEDPRODPLAN_AMT_1] [money] NULL,
	[FIXEDPRODPLAN_AMT_2] [money] NULL,
	[FIXEDPRODPLAN_AMT_3] [money] NULL,
	[FIXEDPRODPLAN_AMT_4] [money] NULL,
	[FIXEDPRODPLAN_AMT_5] [money] NULL,
	[CURRENCY] [nvarchar](3) NULL,
	[RENEWALDATE] [nvarchar](8) NULL,
	[RENEWALTIME] [nvarchar](6) NULL,
	[UPDATER] [nvarchar](20) NULL,
--20180315 add aoki <S>
	[FIXEDPRODPLAN_06M] [decimal](38, 4) NULL,
	[FIXEDPRODPLAN_07M] [decimal](38, 4) NULL,
	[FIXEDPRODPLAN_08M] [decimal](38, 4) NULL,
	[FIXEDPRODPLAN_AMT_6] [money] NULL,
	[FIXEDPRODPLAN_AMT_7] [money] NULL,
	[FIXEDPRODPLAN_AMT_8] [money] NULL,
	[FIXEDPRODPLAN_29A] [decimal](38, 4) NULL,
	[FIXEDPRODPLAN_30A] [decimal](38, 4) NULL,
	[FIXEDPRODPLAN_31A] [decimal](38, 4) NULL,
	[FIXEDPRODPLAN_32A] [decimal](38, 4) NULL,
	[FIXEDPRODPLAN_33A] [decimal](38, 4) NULL,
	[FIXEDPRODPLAN_34A] [decimal](38, 4) NULL,
	[FIXEDPRODPLAN_35A] [decimal](38, 4) NULL,
	[FIXEDPRODPLAN_36A] [decimal](38, 4) NULL,
	[FIXEDPRODPLAN_37A] [decimal](38, 4) NULL,
	[FIXEDPRODPLAN_38A] [decimal](38, 4) NULL,
	[FIXEDPRODPLAN_39A] [decimal](38, 4) NULL,
	[FIXEDPRODPLAN_40A] [decimal](38, 4) NULL,
	[FIXEDPRODPLAN_41A] [decimal](38, 4) NULL,
	[FIXEDPRODPLAN_29B] [decimal](38, 4) NULL,
	[FIXEDPRODPLAN_30B] [decimal](38, 4) NULL,
	[FIXEDPRODPLAN_31B] [decimal](38, 4) NULL,
	[FIXEDPRODPLAN_32B] [decimal](38, 4) NULL,
	[FIXEDPRODPLAN_33B] [decimal](38, 4) NULL,
	[FIXEDPRODPLAN_34B] [decimal](38, 4) NULL,
	[FIXEDPRODPLAN_35B] [decimal](38, 4) NULL,
	[FIXEDPRODPLAN_36B] [decimal](38, 4) NULL,
	[FIXEDPRODPLAN_37B] [decimal](38, 4) NULL,
	[FIXEDPRODPLAN_38B] [decimal](38, 4) NULL,
	[FIXEDPRODPLAN_39B] [decimal](38, 4) NULL,
	[FIXEDPRODPLAN_40B] [decimal](38, 4) NULL,
	[FIXEDPRODPLAN_41B] [decimal](38, 4) NULL,
--20180315 add aoki <E>

) ON [BI_DW_Staging]

GO
