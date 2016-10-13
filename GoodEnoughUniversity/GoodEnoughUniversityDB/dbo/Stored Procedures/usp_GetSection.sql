--GetSections() TESTED - Works
CREATE PROCEDURE dbo.usp_GetSection
	@sectionCode char(10) = null,
	@courseCode char(6) = null
AS
SET XACT_ABORT, NOCOUNT ON
BEGIN TRY
	SELECT *
	FROM Section
	WHERE sectionCode = @sectionCode AND courseCode=@courseCode
END TRY
BEGIN CATCH
      IF @@trancount > 0 ROLLBACK TRANSACTION
      DECLARE @msg nvarchar(2048) = error_message()  
      RAISERROR (@msg, 16, 1)
END CATCH