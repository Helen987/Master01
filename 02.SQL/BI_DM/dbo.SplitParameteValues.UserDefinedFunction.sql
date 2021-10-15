USE [BI_DM]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE FUNCTION [dbo].[SplitParameteValues]
 (
@inputString nvarchar(max)
 )  
 RETURNS @ValuesList table 
 (

Param nvarchar(255)
 
 ) 
 AS  
 
 BEGIN

 Set @inputString=rtrim(Ltrim(@inputString))

 Declare @ListValue nvarchar(max)

 if not right(@inputString,1)=','
 
 set @inputString=@inputString+','


While @inputString<>''
Begin 

select  @ListValue = substring(@inputString,1,charindex(',',@inputString)-1)

Insert Into @ValuesList

select  @ListValue

select @inputString=substring(@inputString,charindex(',',@inputString)+1,len(@inputString)-charindex(',',@inputString))

End

Return
 END



GO
