USE [BI_DW]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PSL_SYS_BATCHLOG](
	[LOGID] [bigint] IDENTITY(1,1) NOT NULL,
	[EXEDATE] [datetime] NULL,
	[PROGRAMID] [varchar](128) NULL,
	[PROGRAMSUBID] [varchar](128) NULL,
	[STATUS] [varchar](1) NULL,
	[MESSAGE] [varchar](1024) NULL,
	[EXECUTIONTIME] [varchar](20) NULL,
	[EXECUTIONSECOND] [bigint] NULL,
	[RECORDCOUNT] [bigint] NULL,
	[FINISHED] [varchar](1) NULL,
 CONSTRAINT [PK_PSL_SYS_BATCHLOG] PRIMARY KEY CLUSTERED 
(
	[LOGID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, DATA_COMPRESSION = PAGE) ON [BI_DW_Transaction_NonPartition]
) ON [BI_DW_Transaction_NonPartition]

GO
SET ANSI_PADDING OFF
GO