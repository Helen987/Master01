--Oct 15,2021 Helen changed
USE [BI_DM]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author:		Tetsuo Asahi
-- Create date: 2015/04/16
-- Description:	�X�P�W���[�����[�̓������x���o�͈ʒu�v�Z�֐�
-- =============================================
CREATE FUNCTION [dbo].[DCP_Schedule_DateLabel_Point] 
(
	 @prevDate date -- �O����t
	,@currDate date -- ������t
)
RETURNS float
AS
BEGIN
	DECLARE @Result float

	IF @currDate IS NULL RETURN NULL

	IF @prevDate IS NULL
		--�O����t���Ȃ��Ƃ��� �ꗥ -1.0 ��Ԃ�
		SET @Result = -1.0
	ELSE
		--�O����t�ƍ�����t�̓�����15�������̏ꍇ�A-2�ɂȂ�悤�Ɋ֐��𒲐��B
		--�������傫���ꍇ�́A-1.0�Ɏ�������悤�� 2^-x �̊֐���I���B
		SELECT @Result = -1.0-POWER(2.00,DATEDIFF(DAY, @currDate, @prevDate)/15)  

	RETURN @Result

END



GO
