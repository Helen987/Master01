USE [BI_DW]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Z_WEB_TOPICS](
	[TOPICS_ID] [int] NULL,
	[UPDATE_DATE] [date] NULL,
	[TOPICS] [nvarchar](4000) NULL
) ON [BI_DW_Master]

GO
