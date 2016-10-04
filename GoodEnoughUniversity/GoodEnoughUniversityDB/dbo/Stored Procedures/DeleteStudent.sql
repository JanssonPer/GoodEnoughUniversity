--DeleteStudent();

CREATE PROCEDURE dbo.DeleteStudent
	@ssn char(10) = null
AS
SET XACT_ABORT, NOCOUNT ON
BEGIN TRY
	DELETE FROM Student 
	WHERE ssn = @ssn
END TRY
BEGIN CATCH
	IF @@trancount > 0 ROLLBACK TRANSACTION
	DECLARE @msg nvarchar(2048) = error_message()  
	RAISERROR (@msg, 16, 1)
END CATCH