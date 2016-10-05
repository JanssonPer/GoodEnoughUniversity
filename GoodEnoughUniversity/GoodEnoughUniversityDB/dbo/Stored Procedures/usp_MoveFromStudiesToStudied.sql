--MoveFromStudiesToStudied(); TESTED - Works

CREATE PROCEDURE dbo.usp_MoveFromStudiesToStudied
	@ssn char(10) = null,
	@courseCode char(6) = null,
	@grade int = null
AS
SET XACT_ABORT, NOCOUNT ON
BEGIN TRY
	DELETE FROM Studies
	WHERE ssn = @ssn AND courseCode = @courseCode
	INSERT INTO Studied(grade, ssn, courseCode)
	VALUES(@grade, @ssn, @courseCode)
END TRY
BEGIN CATCH
	IF @@trancount > 0 ROLLBACK TRANSACTION
	DECLARE @msg nvarchar(2048) = error_message()  
	RAISERROR (@msg, 16, 1)
END CATCH