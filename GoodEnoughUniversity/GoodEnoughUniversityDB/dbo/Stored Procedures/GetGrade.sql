--Print the study result for a course. 
--GetGrade() TESTED - Works

CREATE PROCEDURE dbo.GetGrade
	@courseCode char(6) = null,
	@ssn char(10) = null
AS
SET XACT_ABORT, NOCOUNT ON
BEGIN TRY
	SELECT grade
	FROM studied sd
	WHERE sd.ssn=@ssn AND sd.courseCode=@courseCode
END TRY
BEGIN CATCH
	IF @@trancount > 0 ROLLBACK TRANSACTION
	DECLARE @msg nvarchar(2048) = error_message()  
	RAISERROR (@msg, 16, 1)
END CATCH