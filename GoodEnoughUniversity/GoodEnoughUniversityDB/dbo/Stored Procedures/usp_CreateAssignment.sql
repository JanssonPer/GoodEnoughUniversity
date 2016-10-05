--CreateAssignment(); TESTED - works

CREATE PROCEDURE dbo.usp_CreateAssignment
	@assignmentName varchar(20) = null,
	@credits int = null,
	@sectionCode char(10) = null,
	@courseCode char(6) = null
AS
SET XACT_ABORT, NOCOUNT ON
BEGIN TRY
	INSERT INTO Assignment VALUES(@assignmentName, @credits, @sectionCode, @courseCode)
END TRY
BEGIN CATCH
	IF @@trancount > 0 ROLLBACK TRANSACTION
	DECLARE @msg nvarchar(2048) = error_message()  
	RAISERROR (@msg, 16, 1)
END CATCH