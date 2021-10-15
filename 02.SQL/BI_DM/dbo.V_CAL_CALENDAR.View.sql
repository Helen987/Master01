USE [BI_DM]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[V_CAL_CALENDAR]
AS
select    format(CAL_MAIN.[MONTH],'yyyy/MM') as PreMONTH
         ,CAL_MAIN.[QUARTER]
         ,CAL_MAIN.HALFYEAR
         ,CAL_MAIN.FISCALYEAR
         ,format(DATEADD(month,-1,convert(DateTime,CAL_MAIN.[DAY],11)),'yyyy/MM') as Mon_Bef_PreMONTH
         ,CAL_PQuarter.[QUARTER] as PreQUARTER
         ,MIN(Get_MONTH_Q.[MONTH]) as PreQUARTER_FROM
         ,MAX(Get_MONTH_Q.[MONTH]) as PreQUARTER_TO
         ,CAL_PHalfY.HALFYEAR as PreHALFYEAR
         ,MIN(Get_MONTH_H.[MONTH]) as PreHALFYEAR_FROM
         ,MAX(Get_MONTH_H.[MONTH]) as PreHALFYEAR_TO
         ,CAL_PYear.FISCALYEAR as PreYEAR
         ,MIN(Get_MONTH_Y.[MONTH]) as PreYEAR_FROM
         ,MAX(Get_MONTH_Y.[MONTH]) as PreYEAR_TO
         ,format(DATEADD(year,-1,convert(DateTime,CAL_MAIN.[DAY],11)),'yyyy/MM') as PreYEARMONTH
--         ,CAL_PYear.[QUARTER] as PreYEAR_QUARTER
--         ,MIN(Get_MONTH_PreQ.[MONTH]) as PreYEAR_QUARTER_FROM
--         ,MAX(Get_MONTH_PreQ.[MONTH]) as PreYEAR_QUARTER_TO
  from [BI_DM].[dbo].[M_CAL_CALENDAR] CAL_MAIN

   /* 前四半期カレンダ取得用結合   START   */
   left outer join (
                    select [MONTH],[QUARTER],HALFYEAR,FISCALYEAR
                      from [BI_DM].[dbo].[M_CAL_CALENDAR] CAL
                  group by [MONTH],[QUARTER],HALFYEAR,FISCALYEAR
                    ) CAL_PQuarter
     ON format(DATEADD(month,-3,convert(DateTime,CAL_MAIN.[DAY],11)),'yyyy/MM') = format(CAL_PQuarter.[MONTH],'yyyy/MM')
   left outer join (
                    select [QUARTER]
                           ,format([MONTH],'yyyy/MM') as [MONTH]
                      from [BI_DM].[dbo].[M_CAL_CALENDAR]
                  group by [QUARTER]
                           ,format([MONTH],'yyyy/MM')
                    ) Get_MONTH_Q
     ON CAL_PQuarter.[QUARTER] = Get_MONTH_Q.[QUARTER]
   /* 前四半期カレンダ取得用結合   END   */

   /* 前半期カレンダ取得用結合   START   */
   left outer join (
                    select [MONTH],[QUARTER],HALFYEAR,FISCALYEAR
                      from [BI_DM].[dbo].[M_CAL_CALENDAR] CAL
                  group by [MONTH],[QUARTER],HALFYEAR,FISCALYEAR
                   ) CAL_PHalfY
     on format(DATEADD(month,-6,convert(DateTime,CAL_MAIN.[DAY],11)),'yyyy/MM') = format(CAL_PHalfY.[MONTH],'yyyy/MM')
   left outer join (select [HALFYEAR]
                           ,format([MONTH],'yyyy/MM') as [MONTH]
                      from [BI_DM].[dbo].[M_CAL_CALENDAR]
                  group by [HALFYEAR]
                           ,format([MONTH],'yyyy/MM')
                   ) Get_MONTH_H
     ON CAL_PHalfY.[HALFYEAR] = Get_MONTH_H.[HALFYEAR]
   /* 前半期カレンダ取得用結合   END   */

   /* 前年カレンダ取得用結合   START   */
    left outer join (
                     select [MONTH],[QUARTER],HALFYEAR,FISCALYEAR
                       from [BI_DM].[dbo].[M_CAL_CALENDAR] CAL
                   group by [MONTH],[QUARTER],HALFYEAR,FISCALYEAR
                    ) CAL_PYear
     ON format(DATEADD(month,-12,convert(DateTime,CAL_MAIN.[DAY],11)),'yyyy/MM') = format(CAL_PYear.[MONTH],'yyyy/MM')
    left outer join (select [FISCALYEAR]
                            ,format([MONTH],'yyyy/MM') as [MONTH]
                       from [BI_DM].[dbo].[M_CAL_CALENDAR]
                   group by [FISCALYEAR]
                           ,format([MONTH],'yyyy/MM')
                    ) Get_MONTH_Y
     ON CAL_PYear.[FISCALYEAR] = Get_MONTH_Y.[FISCALYEAR]
   /* 前年カレンダ取得用結合   END   */

--   /* 前年同四半期カレンダ取得用結合   START   */
--    left outer join (
--                     select [MONTH],[QUARTER],HALFYEAR,FISCALYEAR
--                       from [BI_DM].[dbo].[M_CAL_CALENDAR] CAL
--                   group by [MONTH],[QUARTER],HALFYEAR,FISCALYEAR
--                    ) CAL_PYear_Q
--     ON format(DATEADD(month,-12,convert(DateTime,CAL_MAIN.[DAY],11)),'yyyy/MM') = format(CAL_PYear_Q.[MONTH],'yyyy/MM')
--    left outer join (select [QUARTER]
--                           ,format([MONTH],'yyyy/MM') as [MONTH]
--                      from [BI_DM].[dbo].[M_CAL_CALENDAR]
--                  group by [QUARTER]
--                           ,format([MONTH],'yyyy/MM')
--                    ) Get_MONTH_PreQ
--     ON CAL_PYear.[QUARTER] = Get_MONTH_PreQ.[QUARTER]
--   /* 前年同四半期カレンダ取得用結合   END   */
 group by
          CAL_MAIN.[MONTH]
         ,CAL_MAIN.[QUARTER]
         ,CAL_MAIN.HALFYEAR
         ,CAL_MAIN.FISCALYEAR
         ,format(DATEADD(month,-1,convert(DateTime,CAL_MAIN.[DAY],11)),'yyyy/MM')
         ,CAL_PQuarter.[QUARTER]
         ,CAL_PHalfY.HALFYEAR
         ,CAL_PYear.FISCALYEAR
  --       ,CAL_PYear.[QUARTER]
         ,format(DATEADD(year,-1,convert(DateTime,CAL_MAIN.[DAY],11)),'yyyy/MM') 



GO
