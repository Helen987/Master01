USE [BI_DM]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[M_CAL_CALENDAR_CRM](
	[DAY] [date] NOT NULL,
	[MONTH] [date] NULL,
	[QUARTER] [date] NULL,
	[HALFYEAR] [date] NULL,
	[FISCALYEAR] [date] NULL,
	[YEAR] [date] NULL,
	[DAY_TEXT] [nvarchar](20) NULL,
	[MONTH_TEXT] [nvarchar](20) NULL,
	[QUARTER_TEXT] [nvarchar](20) NULL,
	[HALFYEAR_TEXT] [nvarchar](20) NULL,
	[FISCALYEAR_TEXT] [nvarchar](20) NULL,
	[YEAR_TEXT] [nvarchar](20) NULL,
	[CRM_DM_RNG_FLG] [nvarchar](20) NULL,
	[CRM_DM_RNG_DISP] [nvarchar](20) NULL,
	[CRM_DM_SUM_FLG] [nvarchar](20) NULL,
	[CRM_DM_SUM_DISP] [nvarchar](20) NULL,
 CONSTRAINT [PK_M_CAL_CALENDAR_CRM] PRIMARY KEY CLUSTERED 
(
	[DAY] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, DATA_COMPRESSION = PAGE) ON [BI_DM_Dimension]
) ON [BI_DM_Dimension]

GO
