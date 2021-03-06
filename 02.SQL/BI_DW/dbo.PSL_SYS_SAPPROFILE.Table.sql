USE [BI_DW]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PSL_SYS_SAPPROFILE](
	[SAPPROFILE] [varchar](50) NOT NULL,
	[SAPAPPSERVER] [varchar](50) NOT NULL,
	[SAPCLIENT] [varchar](3) NOT NULL,
	[SAPSYSTEMNUMBER] [varchar](2) NULL,
	[SAPUSER] [varchar](12) NOT NULL,
	[SAPPASSWORD] [varchar](40) NULL,
	[SAPLANGUAGE] [varchar](2) NOT NULL,
	[SAPUNICODE] [varchar](1) NOT NULL,
	[NOTE] [varchar](255) NULL,
 CONSTRAINT [PK_PSL_SYS_SAPPROFILE] PRIMARY KEY CLUSTERED 
(
	[SAPPROFILE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, DATA_COMPRESSION = PAGE) ON [BI_DW_Master]
) ON [BI_DW_Master]

GO
SET ANSI_PADDING OFF
GO
