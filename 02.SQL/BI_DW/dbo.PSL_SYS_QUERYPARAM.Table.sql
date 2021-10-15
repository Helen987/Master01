USE [BI_DW]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PSL_SYS_QUERYPARAM](
	[PARAMID] [varchar](50) NOT NULL,
	[PARAMTYPE] [varchar](2) NULL,
	[KIND] [varchar](1) NULL,
	[SIGN] [varchar](1) NULL,
	[OPT] [varchar](2) NULL,
	[LOWVALUE] [varchar](50) NULL,
	[HIGHVALUE] [varchar](50) NULL,
	[CDLASTCHANGENR] [varchar](14) NULL,
	[CDTABNAME] [varchar](30) NULL,
	[EXEDATE] [smalldatetime] NULL,
	[FLAGINITPARAMVALUE] [bit] NULL,
	[NOTE] [varchar](255) NULL,
 CONSTRAINT [PK_PSL_SYS_QUERYPARAM] PRIMARY KEY CLUSTERED 
(
	[PARAMID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, DATA_COMPRESSION = PAGE) ON [BI_DW_Master]
) ON [BI_DW_Master]

GO
ALTER TABLE [dbo].[PSL_SYS_QUERYPARAM] ADD  CONSTRAINT [DF_PSL_SYS_QUERYPARAM_CDLASTCHANGER]  DEFAULT ((0)) FOR [CDLASTCHANGENR]
GO
ALTER TABLE [dbo].[PSL_SYS_QUERYPARAM] ADD  CONSTRAINT [DF_PSL_SYS_QUERYPARAM_FLAGINITPARAMVALUE]  DEFAULT ((1)) FOR [FLAGINITPARAMVALUE]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PSL_SYS_QUERYPARAM', @level2type=N'COLUMN',@level2name=N'PARAMID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PSL_SYS_QUERYPARAM', @level2type=N'COLUMN',@level2name=N'PARAMID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=3090 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PSL_SYS_QUERYPARAM', @level2type=N'COLUMN',@level2name=N'PARAMID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PSL_SYS_QUERYPARAM', @level2type=N'COLUMN',@level2name=N'PARAMTYPE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PSL_SYS_QUERYPARAM', @level2type=N'COLUMN',@level2name=N'PARAMTYPE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=1200 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PSL_SYS_QUERYPARAM', @level2type=N'COLUMN',@level2name=N'PARAMTYPE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PSL_SYS_QUERYPARAM', @level2type=N'COLUMN',@level2name=N'KIND'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PSL_SYS_QUERYPARAM', @level2type=N'COLUMN',@level2name=N'KIND'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=570 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PSL_SYS_QUERYPARAM', @level2type=N'COLUMN',@level2name=N'KIND'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PSL_SYS_QUERYPARAM', @level2type=N'COLUMN',@level2name=N'SIGN'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PSL_SYS_QUERYPARAM', @level2type=N'COLUMN',@level2name=N'SIGN'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=570 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PSL_SYS_QUERYPARAM', @level2type=N'COLUMN',@level2name=N'SIGN'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PSL_SYS_QUERYPARAM', @level2type=N'COLUMN',@level2name=N'OPT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PSL_SYS_QUERYPARAM', @level2type=N'COLUMN',@level2name=N'OPT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=510 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PSL_SYS_QUERYPARAM', @level2type=N'COLUMN',@level2name=N'OPT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PSL_SYS_QUERYPARAM', @level2type=N'COLUMN',@level2name=N'LOWVALUE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PSL_SYS_QUERYPARAM', @level2type=N'COLUMN',@level2name=N'LOWVALUE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=1350 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PSL_SYS_QUERYPARAM', @level2type=N'COLUMN',@level2name=N'LOWVALUE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PSL_SYS_QUERYPARAM', @level2type=N'COLUMN',@level2name=N'HIGHVALUE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PSL_SYS_QUERYPARAM', @level2type=N'COLUMN',@level2name=N'HIGHVALUE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=1140 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PSL_SYS_QUERYPARAM', @level2type=N'COLUMN',@level2name=N'HIGHVALUE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PSL_SYS_QUERYPARAM', @level2type=N'COLUMN',@level2name=N'CDLASTCHANGENR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PSL_SYS_QUERYPARAM', @level2type=N'COLUMN',@level2name=N'CDLASTCHANGENR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PSL_SYS_QUERYPARAM', @level2type=N'COLUMN',@level2name=N'CDLASTCHANGENR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PSL_SYS_QUERYPARAM', @level2type=N'COLUMN',@level2name=N'CDTABNAME'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PSL_SYS_QUERYPARAM', @level2type=N'COLUMN',@level2name=N'CDTABNAME'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PSL_SYS_QUERYPARAM', @level2type=N'COLUMN',@level2name=N'CDTABNAME'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PSL_SYS_QUERYPARAM', @level2type=N'COLUMN',@level2name=N'EXEDATE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PSL_SYS_QUERYPARAM', @level2type=N'COLUMN',@level2name=N'EXEDATE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=1740 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PSL_SYS_QUERYPARAM', @level2type=N'COLUMN',@level2name=N'EXEDATE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PSL_SYS_QUERYPARAM', @level2type=N'COLUMN',@level2name=N'NOTE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PSL_SYS_QUERYPARAM', @level2type=N'COLUMN',@level2name=N'NOTE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=2100 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PSL_SYS_QUERYPARAM', @level2type=N'COLUMN',@level2name=N'NOTE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DefaultView', @value=0x02 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PSL_SYS_QUERYPARAM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Filter', @value=NULL , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PSL_SYS_QUERYPARAM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_OrderBy', @value=NULL , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PSL_SYS_QUERYPARAM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_OrderByOn', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PSL_SYS_QUERYPARAM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Orientation', @value=0x00 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PSL_SYS_QUERYPARAM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_RowHeight', @value=165 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PSL_SYS_QUERYPARAM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_TableMaxRecords', @value=10000 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PSL_SYS_QUERYPARAM'
GO
