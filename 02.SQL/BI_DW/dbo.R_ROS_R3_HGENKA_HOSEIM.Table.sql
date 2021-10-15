USE [BI_DW]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[R_ROS_R3_HGENKA_HOSEIM](
	[KAISHA_CODE] [nvarchar](2) NOT NULL,
	[KOJYO_CODE] [nvarchar](2) NOT NULL,
	[TANTO_CODE] [nvarchar](2) NOT NULL,
	[H_CODE] [nvarchar](18) NOT NULL,
	[H_TEXT] [nvarchar](40) NULL,
	[TUKA_CODE] [nvarchar](5) NULL,
	[SU_TANI] [nvarchar](3) NULL,
	[H_GENKA] [decimal](17, 2) NULL,
	[O_H_GENKA] [decimal](17, 2) NULL,
	[HOUKA_GENKA] [decimal](17, 2) NULL,
	[O_HOUKA_GENKA] [decimal](17, 2) NULL,
	[HOSEI_GENKA] [decimal](17, 2) NULL,
	[O_HOSEI_GENKA] [decimal](17, 2) NULL,
	[Y_RATE] [decimal](9, 2) NOT NULL,
	[KANSAN_TUKA] [nvarchar](11) NULL,
	[NENKI] [nvarchar](5) NULL,
	[KOUSIN_KUBUN] [nvarchar](1) NULL,
	[REG_DATETIME] [date] NULL,
	[UPD_DATETIME] [date] NULL
) ON [BI_DW_Staging]
WITH
(
DATA_COMPRESSION = PAGE
)

GO
