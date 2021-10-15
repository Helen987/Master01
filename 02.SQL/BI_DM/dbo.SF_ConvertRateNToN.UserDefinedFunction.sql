USE [BI_DM]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO





CREATE FUNCTION [dbo].[SF_ConvertRateNToN]
(
     @IN_varCURR_CD_FROM   NVARCHAR(5)             /* Š·ŽZ‘O’Ê‰Ý */
    ,@IN_varCURR_CD_TO     NVARCHAR(5)             /* Š·ŽZŒã’Ê‰Ý */
    ,@IN_datDATE           DATE                    /* “ú•t */
    ,@IN_mnyMoney          MONEY                   /* ‹àŠz */
)
RETURNS MONEY
AS
BEGIN

    DECLARE @mnyMoney  MONEY  = NULL  /* ‹àŠz */

	/* ŠCŠO“WŠJ‘Î‰ž‚Å‘½‘Î‘½Š·ŽZ‚Æ‚É‚È‚é */
    IF @IN_varCURR_CD_FROM = @IN_varCURR_CD_TO
		BEGIN
			SELECT @mnyMoney = @IN_mnyMoney
		END
    ELSE

	BEGIN
      SELECT
        @mnyMoney = (@IN_mnyMoney / CC.[CURR_FACT_FROM]) * CC.[RATE]
      FROM
        (
          SELECT
            MAX([VALID_FROM_YMD]) AS MAX_VALID_FROM_YMD
          FROM
            [dbo].[M_CUR_CURRENCY_RATE]
          WHERE
                [CURR_CD_FROM]    = @IN_varCURR_CD_FROM
            AND [CURR_CD_TO]      = @IN_varCURR_CD_TO
            AND [VALID_FROM_YMD] <= @IN_datDATE
        ) AS MC
        INNER JOIN [dbo].[M_CUR_CURRENCY_RATE] AS CC ON
              CC.[CURR_CD_FROM]   = @IN_varCURR_CD_FROM
          AND CC.[CURR_CD_TO]     = @IN_varCURR_CD_TO
          AND CC.[VALID_FROM_YMD] = MC.[MAX_VALID_FROM_YMD]
    END

    RETURN @mnyMoney
END






GO
