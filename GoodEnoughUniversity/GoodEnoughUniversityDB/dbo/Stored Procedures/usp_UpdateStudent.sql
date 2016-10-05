--UpdateStudent(); TESTED - Works

CREATE PROCEDURE dbo.usp_UpdateStudent
	@ssn char(10) = null,
	@studentName varchar(55) = null,
	@studentAddress varchar(100) = null,
	@studentType varchar(15) = null
AS
SET XACT_ABORT, NOCOUNT ON
BEGIN TRY
	UPDATE Student 
	SET studentName = @studentName, studentAddress = @studentAddress, studentType = @studentType
	WHERE ssn = @ssn
END TRY
BEGIN CATCH
	IF @@trancount > 0 ROLLBACK TRANSACTION
	DECLARE @msg nvarchar(2048) = error_message()  
	RAISERROR (@msg, 16, 1)
END CATCH