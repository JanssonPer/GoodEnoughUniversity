--Print all the students who passed a given course (Name of the students will not be shown.)
--GetStudentWhoPassedCourse() TESTED - Works

CREATE PROCEDURE dbo.usp_GetStudentWhoPassedCourse
	@courseCode char(6) = null
AS
SET XACT_ABORT, NOCOUNT ON
BEGIN TRY
	SELECT ssn
	FROM Studied sd
	WHERE grade <> 0 AND sd.courseCode = @courseCode
END TRY
BEGIN CATCH
	IF @@trancount > 0 ROLLBACK TRANSACTION
	DECLARE @msg nvarchar(2048) = error_message()  
	RAISERROR (@msg, 16, 1)
END CATCH