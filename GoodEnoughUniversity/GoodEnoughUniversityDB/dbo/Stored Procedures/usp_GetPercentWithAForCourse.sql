--Print percentage of high pass (VG) for each course.
--GetPercentWithAForCourse() TESTED - Wtf bre? Wich course is selected and shit?
CREATE PROCEDURE dbo.usp_GetPercentWithAForCourse
	@coursecode varchar(10) = null
AS
SET XACT_ABORT, NOCOUNT ON
BEGIN TRY
SELECT Grade, (COUNT(Grade)* 100 / 
					(SELECT COUNT(*)
						FROM Studied 
						WHERE courseCode=@coursecode))AS ScorePercentage 
FROM Studied
GROUP BY courseCode, Grade 
HAVING courseCode= @coursecode AND Grade='5'
END TRY
BEGIN CATCH
	IF @@trancount > 0 ROLLBACK TRANSACTION
	DECLARE @msg nvarchar(2048) = error_message()  
	RAISERROR (@msg, 16, 1)
END CATCH
