USE [BI_DW]
GO
/****** Object:  Table [dbo].[Z_SSAS_SYNC_EXCLUSION_CONTROL]    Script Date: 2019/01/30 13:57:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Z_SSAS_SYNC_EXCLUSION_CONTROL](
	[DB_NAME] [nvarchar](20) NOT NULL,
	[STATUS] [nvarchar](20) NOT NULL,
	[DB_PROCESSING_COUNT] [int] NOT NULL,
	[LAST_UPDATED_TIME] [datetime] NULL,
 CONSTRAINT [PK_Z_SSAS_SYNC_EXCLUSION_CONTROL] PRIMARY KEY CLUSTERED 
(
	[DB_NAME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [BI_DW_Master]
) ON [BI_DW_Master]

GO

USE [BI_DW]
GO
TRUNCATE TABLE [Z_SSAS_SYNC_EXCLUSION_CONTROL]
INSERT INTO [Z_SSAS_SYNC_EXCLUSION_CONTROL] VALUES
  ('CRM', '00_None', 0, GETDATE())
, ('DCP_BI', '00_None', 0, GETDATE())
, ('Finance_01', '00_None', 0, GETDATE())
, ('Finance_02', '00_None', 0, GETDATE())
, ('GP_Simulation', '00_None', 0, GETDATE())
, ('Logistics_01', '00_None', 0, GETDATE())
, ('Procure_01', '00_None', 0, GETDATE())
, ('Procure_02', '00_None', 0, GETDATE())
, ('Sales_01', '00_None', 0, GETDATE())
, ('Sales_02', '00_None', 0, GETDATE())
, ('Sales_03', '00_None', 0, GETDATE())
, ('01_Sales_001', '00_None', 0, GETDATE())
, ('01_Sales_002', '00_None', 0, GETDATE())
, ('01_Sales_004', '00_None', 0, GETDATE())
, ('01_Sales_005', '00_None', 0, GETDATE())
, ('01_Sales_010', '00_None', 0, GETDATE())
, ('01_Sales_011', '00_None', 0, GETDATE())
, ('01_Sales_013', '00_None', 0, GETDATE())
, ('01_Sales_014', '00_None', 0, GETDATE())
, ('05_Finance_004', '00_None', 0, GETDATE())

