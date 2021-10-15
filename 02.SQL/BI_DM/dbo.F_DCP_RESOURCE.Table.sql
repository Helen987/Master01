USE [BI_DM]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[F_DCP_RESOURCE](
	[WBS] [nvarchar](30) NOT NULL,
	[DELIBERATION_CD] [nvarchar](6) NOT NULL,
	[CALENDAR_YM] [date] NOT NULL,
	[DELIBERATION_FLAG] [int] NOT NULL,
	[DESIGN_CD] [nvarchar](25) NOT NULL,
	[DEV_RESOURCE_ACT] [numeric](18, 2) NULL,
	[DEV_RESOURCE_BUD] [numeric](18, 2) NULL,
	[DCP_UPDATETIME] [smalldatetime] NULL,
	[REG_DATETIME] [smalldatetime] NULL,
	[UPD_DATETIME] [smalldatetime] NULL,
 CONSTRAINT [PK_F_DCP_RESOURCE] PRIMARY KEY CLUSTERED 
(
	[WBS] ASC,
	[DELIBERATION_CD] ASC,
	[CALENDAR_YM] ASC,
	[DESIGN_CD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, DATA_COMPRESSION = PAGE) ON [PS_PartitionByMonth_DM]([CALENDAR_YM])
) ON [PS_PartitionByMonth_DM]([CALENDAR_YM])

GO
ALTER TABLE [dbo].[F_DCP_RESOURCE] ADD  CONSTRAINT [DF__F_DCP_RES__REG_D__4E739D3B]  DEFAULT (getdate()) FOR [REG_DATETIME]
GO
ALTER TABLE [dbo].[F_DCP_RESOURCE] ADD  CONSTRAINT [DF__F_DCP_RES__UPD_D__4F67C174]  DEFAULT (getdate()) FOR [UPD_DATETIME]
GO