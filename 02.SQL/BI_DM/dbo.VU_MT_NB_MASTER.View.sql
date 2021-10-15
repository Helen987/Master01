USE [BI_DM]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[VU_MT_NB_MASTER]
AS 
SELECT [B_WIN_SCM_CUSTOMER_CODE]  AS [SCM_Customer_Bwin]
      ,[BOOKING_P_N]              AS [Booking_PN]
      ,[D_IN_SCM_CUSTOMER_CODE]   AS [SCM_Customer_Din]
      ,[ALLOCATION_FLAG]          AS [AllocationFlag]
      ,[N_B_RATE]                 AS [N_B_Rate]
      ,[ADJUST]                   AS [ADJUST]
      ,[ALLOCATION_RATE]          AS [AllocationRate]
      ,[OPPSEQ]                   AS [OpportunitySeq]
--NB処理修正にともなう取得条件・取得元変更20170412前田Start
--FROM [BI_DM].[dbo].[M_RBW_NB_MASTER]
FROM [DM_MST].[dbo].[TPRC_SDM_NB_MASTER]
WHERE TPRC_SDM_NB_MASTER.DEEMED_DATE = (
                                        SELECT 
                                              MAX(TPRC_SDM_NB_MASTER.DEEMED_DATE)
                                        FROM 
                                         [DM_MST].[dbo].[TPRC_SDM_NB_MASTER]
                                     )

--NB処理修正にともなう取得条件・取得元変更20170412前田End

GO
