--GetCourse() TESTED - Works
CREATE PROCEDURE dbo.usp_GetCourse
	@courseCode varchar(6) = null
AS
SET XACT_ABORT, NOCOUNT ON
BEGIN TRY

	SELECT *  -- Bad practice att använda *?
	FROM Course
	WHERE courseCode = @courseCode
END TRY
BEGIN CATCH
      IF @@trancount > 0 ROLLBACK TRANSACTION
      DECLARE @msg nvarchar(2048) = error_message()  
      RAISERROR (@msg, 16, 1)
END CATCH