USE [BI_DW]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PSL_SYS_QUERYPROFILE](
	[PROFILEID] [varchar](50) NOT NULL,
	[PROFILESUBID] [varchar](50) NOT NULL,
	[SELECTIONID] [varchar](50) NOT NULL,
	[SAPPROFILE] [varchar](50) NOT NULL,
	[DBPROFILE] [varchar](50) NOT NULL,
	[QUERYID] [varchar](50) NOT NULL,
	[WORKSPACE] [varchar](50) NULL,
	[USERGROUP] [varchar](12) NOT NULL,
	[VARIANT] [varchar](50) NOT NULL,
	[PARAMID] [varchar](50) NOT NULL,
	[SELNAME] [varchar](50) NULL,
	[IMTABLENAME] [varchar](50) NOT NULL,
	[FLTABLENAME] [varchar](50) NOT NULL,
	[NOTE] [varchar](255) NULL,
 CONSTRAINT [PK_PSL_SYS_QUERYPROFILE] PRIMARY KEY CLUSTERED 
(
	[PROFILEID] ASC,
	[PROFILESUBID] ASC,
	[SELECTIONID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, DATA_COMPRESSION = PAGE) ON [BI_DW_Master]
) ON [BI_DW_Master]

GO
ALTER TABLE [dbo].[PSL_SYS_QUERYPROFILE] ADD  CONSTRAINT [DF_PSL_SYS_QUERYPROFILE_VARIANT]  DEFAULT ('STANDARD') FOR [VARIANT]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PSL_SYS_QUERYPROFILE', @level2type=N'COLUMN',@level2name=N'PROFILEID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PSL_SYS_QUERYPROFILE', @level2type=N'COLUMN',@level2name=N'PROFILEID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=1920 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PSL_SYS_QUERYPROFILE', @level2type=N'COLUMN',@level2name=N'PROFILEID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PSL_SYS_QUERYPROFILE', @level2type=N'COLUMN',@level2name=N'PROFILESUBID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PSL_SYS_QUERYPROFILE', @level2type=N'COLUMN',@level2name=N'PROFILESUBID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PSL_SYS_QUERYPROFILE', @level2type=N'COLUMN',@level2name=N'PROFILESUBID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PSL_SYS_QUERYPROFILE', @level2type=N'COLUMN',@level2name=N'SELECTIONID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PSL_SYS_QUERYPROFILE', @level2type=N'COLUMN',@level2name=N'SELECTIONID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PSL_SYS_QUERYPROFILE', @level2type=N'COLUMN',@level2name=N'SELECTIONID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PSL_SYS_QUERYPROFILE', @level2type=N'COLUMN',@level2name=N'SAPPROFILE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PSL_SYS_QUERYPROFILE', @level2type=N'COLUMN',@level2name=N'SAPPROFILE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PSL_SYS_QUERYPROFILE', @level2type=N'COLUMN',@level2name=N'SAPPROFILE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PSL_SYS_QUERYPROFILE', @level2type=N'COLUMN',@level2name=N'DBPROFILE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PSL_SYS_QUERYPROFILE', @level2type=N'COLUMN',@level2name=N'DBPROFILE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PSL_SYS_QUERYPROFILE', @level2type=N'COLUMN',@level2name=N'DBPROFILE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PSL_SYS_QUERYPROFILE', @level2type=N'COLUMN',@level2name=N'QUERYID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PSL_SYS_QUERYPROFILE', @level2type=N'COLUMN',@level2name=N'QUERYID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=1965 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PSL_SYS_QUERYPROFILE', @level2type=N'COLUMN',@level2name=N'QUERYID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PSL_SYS_QUERYPROFILE', @level2type=N'COLUMN',@level2name=N'WORKSPACE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PSL_SYS_QUERYPROFILE', @level2type=N'COLUMN',@level2name=N'WORKSPACE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PSL_SYS_QUERYPROFILE', @level2type=N'COLUMN',@level2name=N'WORKSPACE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PSL_SYS_QUERYPROFILE', @level2type=N'COLUMN',@level2name=N'USERGROUP'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PSL_SYS_QUERYPROFILE', @level2type=N'COLUMN',@level2name=N'USERGROUP'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PSL_SYS_QUERYPROFILE', @level2type=N'COLUMN',@level2name=N'USERGROUP'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PSL_SYS_QUERYPROFILE', @level2type=N'COLUMN',@level2name=N'VARIANT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PSL_SYS_QUERYPROFILE', @level2type=N'COLUMN',@level2name=N'VARIANT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PSL_SYS_QUERYPROFILE', @level2type=N'COLUMN',@level2name=N'VARIANT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PSL_SYS_QUERYPROFILE', @level2type=N'COLUMN',@level2name=N'PARAMID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PSL_SYS_QUERYPROFILE', @level2type=N'COLUMN',@level2name=N'PARAMID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=1845 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PSL_SYS_QUERYPROFILE', @level2type=N'COLUMN',@level2name=N'PARAMID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PSL_SYS_QUERYPROFILE', @level2type=N'COLUMN',@level2name=N'SELNAME'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PSL_SYS_QUERYPROFILE', @level2type=N'COLUMN',@level2name=N'SELNAME'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=1020 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PSL_SYS_QUERYPROFILE', @level2type=N'COLUMN',@level2name=N'SELNAME'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PSL_SYS_QUERYPROFILE', @level2type=N'COLUMN',@level2name=N'IMTABLENAME'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PSL_SYS_QUERYPROFILE', @level2type=N'COLUMN',@level2name=N'IMTABLENAME'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PSL_SYS_QUERYPROFILE', @level2type=N'COLUMN',@level2name=N'IMTABLENAME'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PSL_SYS_QUERYPROFILE', @level2type=N'COLUMN',@level2name=N'FLTABLENAME'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PSL_SYS_QUERYPROFILE', @level2type=N'COLUMN',@level2name=N'FLTABLENAME'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=1800 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PSL_SYS_QUERYPROFILE', @level2type=N'COLUMN',@level2name=N'FLTABLENAME'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PSL_SYS_QUERYPROFILE', @level2type=N'COLUMN',@level2name=N'NOTE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PSL_SYS_QUERYPROFILE', @level2type=N'COLUMN',@level2name=N'NOTE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=-1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PSL_SYS_QUERYPROFILE', @level2type=N'COLUMN',@level2name=N'NOTE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DefaultView', @value=0x02 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PSL_SYS_QUERYPROFILE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Filter', @value=NULL , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PSL_SYS_QUERYPROFILE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_OrderBy', @value=NULL , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PSL_SYS_QUERYPROFILE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_OrderByOn', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PSL_SYS_QUERYPROFILE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Orientation', @value=0x00 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PSL_SYS_QUERYPROFILE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_TableMaxRecords', @value=10000 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PSL_SYS_QUERYPROFILE'
GO
