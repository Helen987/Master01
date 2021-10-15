USE [BI_DM]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[M_CUR_CURRENCY](
	[CURR_CD] [nvarchar](5) NOT NULL,
 CONSTRAINT [PK_M_CUR_CURRENCY] PRIMARY KEY CLUSTERED 
(
	[CURR_CD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, DATA_COMPRESSION = PAGE) ON [BI_DM_Dimension]
) ON [BI_DM_Dimension]

GO
