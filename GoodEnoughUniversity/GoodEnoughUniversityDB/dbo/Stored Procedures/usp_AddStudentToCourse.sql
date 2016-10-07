CREATE PROCEDURE dbo.usp_AddStudentToCourse
	@ssn char(10) = null,
	@courseCode char(6) = null
AS
SET XACT_ABORT, NOCOUNT ON
BEGIN TRY
	IF dbo.fn_isQualified(@courseCode) IN (SELECT sd.courseCode FROM Studied sd WHERE sd.ssn=@ssn)
		INSERT INTO Studies VALUES(@ssn, @courseCode)
	IF  dbo.fn_isQualified(@courseCode) = null
		INSERT INTO Studies VALUES(@ssn, @courseCode)
END TRY
BEGIN CATCH
	IF @@trancount > 0 ROLLBACK TRANSACTION
	DECLARE @msg nvarchar(2048) = error_message()
	RAISERROR (@msg, 16, 1)
END CATCH