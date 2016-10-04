--Studies  
--GetStudentsOnStudiesCourse() TESTED - Works
CREATE PROCEDURE dbo.GetStudentOnStudiesCourse
	@courseCode char(6) = null
AS
SET XACT_ABORT, NOCOUNT ON
BEGIN TRY
	SELECT *
	FROM Student st
	INNER JOIN Studies ss
	ON st.ssn = ss.ssn
	WHERE ss.courseCode = @courseCode
END TRY
BEGIN CATCH
	IF @@trancount > 0 ROLLBACK TRANSACTION
	DECLARE @msg varchar(2048) = error_message()  
	RAISERROR (@msg, 16, 1)
END CATCH