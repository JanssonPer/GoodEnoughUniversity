--Print the study result of a given student for a given course. 
--GetStudentResultForCourse() TESTED - Samma som GetGrade, borde kanske ändra GetGrade till att hämta alla grades?

CREATE PROCEDURE dbo.usp_GetStudentResultForCourse
	@courseCode char(6) = null,
	@ssn char(10) = null
AS
SET XACT_ABORT, NOCOUNT ON
BEGIN TRY
	SELECT grade
	FROM studied sd
	WHERE sd.ssn = @ssn AND sd.courseCode = @courseCode
END TRY
BEGIN CATCH
	IF @@trancount > 0 ROLLBACK TRANSACTION
	DECLARE @msg nvarchar(2048) = error_message()  
	RAISERROR (@msg, 16, 1)
END CATCH