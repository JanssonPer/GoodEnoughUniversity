--CreateCourse(); TESTED - Works
CREATE PROCEDURE dbo.usp_CreateCourse
	@courseCode char(6) = null,
	@courseName varchar(20) = null,
	@prerequisite char(6) = null
AS
SET XACT_ABORT, NOCOUNT ON
BEGIN TRY
	INSERT INTO Course VALUES (@courseCode, @courseName, @prerequisite)
END TRY
BEGIN CATCH
	IF @@trancount > 0 ROLLBACK TRANSACTION
	DECLARE @msg nvarchar(2048) = error_message()  
	RAISERROR (@msg, 16, 1)
END CATCH