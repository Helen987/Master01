USE [BI_DW]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[R_SFM_BCCT_BAMBOO_CODE_MST](
	[CODE_ID] [nvarchar](4) NOT NULL,
	[CODE_VALUE] [nvarchar](4) NOT NULL,
	[CODE_NAME] [nvarchar](255) NULL,
	[DELETE_FLG] [nvarchar](1) NULL,
	[LAST_MODIFIED_DATE] [date] NULL,
 CONSTRAINT [PK_R_BCCT_BAMBOO_CODE_MST] PRIMARY KEY CLUSTERED 
(
	[CODE_ID] ASC,
	[CODE_VALUE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, DATA_COMPRESSION = PAGE) ON [BI_DW_Master]
) ON [BI_DW_Master]

GO
