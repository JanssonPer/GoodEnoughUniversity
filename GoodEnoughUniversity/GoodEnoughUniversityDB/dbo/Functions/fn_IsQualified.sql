CREATE FUNCTION dbo.fn_IsQualified
	(@courseCode char (6) = null)
 RETURNS char(6) 
 AS 
 BEGIN 
	DECLARE @prerequisite char (6) 
SELECT @prerequisite=  c.prerequisite FROM Course c WHERE c.courseCode = @courseCode 
 RETURN @prerequisite
END

