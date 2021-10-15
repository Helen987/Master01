USE [BI_DW]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PSL_SYS_PKEY](
	[TABLENAME] [varchar](50) NOT NULL,
	[PKCOLUMNNAME] [varchar](50) NOT NULL,
 CONSTRAINT [PK_PSL_SYS_FLPKEY] PRIMARY KEY CLUSTERED 
(
	[TABLENAME] ASC,
	[PKCOLUMNNAME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, DATA_COMPRESSION = PAGE) ON [BI_DW_Master]
) ON [BI_DW_Master]

GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PSL_SYS_PKEY', @level2type=N'COLUMN',@level2name=N'TABLENAME'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PSL_SYS_PKEY', @level2type=N'COLUMN',@level2name=N'TABLENAME'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=1770 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PSL_SYS_PKEY', @level2type=N'COLUMN',@level2name=N'TABLENAME'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHidden', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PSL_SYS_PKEY', @level2type=N'COLUMN',@level2name=N'PKCOLUMNNAME'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_ColumnOrder', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PSL_SYS_PKEY', @level2type=N'COLUMN',@level2name=N'PKCOLUMNNAME'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidth', @value=1575 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PSL_SYS_PKEY', @level2type=N'COLUMN',@level2name=N'PKCOLUMNNAME'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DefaultView', @value=0x02 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PSL_SYS_PKEY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Filter', @value=NULL , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PSL_SYS_PKEY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_OrderBy', @value=NULL , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PSL_SYS_PKEY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_OrderByOn', @value=0 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PSL_SYS_PKEY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Orientation', @value=0x00 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PSL_SYS_PKEY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_TableMaxRecords', @value=10000 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PSL_SYS_PKEY'
GO
