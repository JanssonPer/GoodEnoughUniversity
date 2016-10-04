--Section for a given course 
--GetCourseSections() 

--assignment for a given course
--GetAssigmentsForCourse() TESTED - Works
CREATE PROCEDURE dbo.GetAssignemntOnCourse
	@courseCode char(6) = null
AS
SET XACT_ABORT, NOCOUNT ON
BEGIN TRY
	SELECT * 
	FROM Assignment a
	INNER JOIN Course c
	ON a.courseCode = c.courseCode
	WHERE c.courseCode = @courseCode
END TRY
BEGIN CATCH
	IF @@trancount > 0 ROLLBACK TRANSACTION
	DECLARE @msg nvarchar(2048) = error_message()  
	RAISERROR (@msg, 16, 1)
END CATCH