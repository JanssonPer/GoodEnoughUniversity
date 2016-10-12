--CreateAssignment(); TESTED - works

CREATE PROCEDURE dbo.usp_CreateStudentPhone
	@ssn char(10) = null,
	@studentPhone varchar(10) = null
AS
SET XACT_ABORT, NOCOUNT ON
BEGIN TRY
	INSERT INTO StudentPhone VALUES(@ssn, @studentPhone)
END TRY
BEGIN CATCH
	IF @@trancount > 0 ROLLBACK TRANSACTION
	DECLARE @msg nvarchar(2048) = error_message()  
	RAISERROR (@msg, 16, 1)
END CATCH