--Print percentage of high pass (VG) for each course.
--GetPercentWithAForCourse() TESTED - Wtf bre? Wich course is selected and shit?
CREATE PROCEDURE dbo.usp_GetPercentWithAForCourse
	@coursecode varchar(10)
AS
SET XACT_ABORT, NOCOUNT ON
BEGIN TRY
	SELECT Alls.courseCode, (Passed.passedStudents / CAST(Alls.antal as decimal))*100 as 'percent'
	FROM (SELECT courseCode, count(*) as passedStudents 
	FROM Studied WHERE grade != 0 
	GROUP BY courseCode) AS Passed 
	INNER JOIN (SELECT courseCode, COUNT(*) AS antal FROM Studied 
	GROUP BY courseCode) AS Alls ON Alls.courseCode = Passed.courseCode ORDER BY 'percent'
END TRY
BEGIN CATCH
	IF @@trancount > 0 ROLLBACK TRANSACTION
	DECLARE @msg nvarchar(2048) = error_message()  
	RAISERROR (@msg, 16, 1)
END CATCH