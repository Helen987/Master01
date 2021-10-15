USE [BI_DM]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE FUNCTION [dbo].[SF_ConvertPartNoCD]
(
     @IN_SO_PART   NVARCHAR(40)             /* éÛíçå^ñº */

)
RETURNS NVARCHAR(18)
AS
BEGIN

    DECLARE @SO_PART  NVARCHAR(18)  = NULL  /* éÛíçå^ñº */

    IF @IN_SO_PART IS NOT NULL BEGIN

         SELECT
            @SO_PART = MAX([BOOKING_PN_CD])
          FROM
            [BI_DM].[dbo].[M_PNO_BOOK_PN]
          WHERE
                [CANCEL_FLG]      = '0'
            AND [BOOKING_PN]      = @IN_SO_PART

          IF @SO_PART IS NULL BEGIN
              SELECT @SO_PART = LEFT(@IN_SO_PART, 18)
          END

          IF @SO_PART = '' BEGIN
              SELECT @SO_PART = NULL
          END
    END
    RETURN @SO_PART
END



GO
