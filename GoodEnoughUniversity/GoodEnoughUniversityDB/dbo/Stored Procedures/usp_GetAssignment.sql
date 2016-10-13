--GetAssignment() TESTED - Works
CREATE PROCEDURE dbo.usp_GetAssignment
	@assignmentName varchar(20) = null,
	@sectionCode char(10) = null,
	@courseCode char(6) = null
AS
SET XACT_ABORT, NOCOUNT ON
BEGIN TRY
	SELECT *
	FROM Assignment a
	WHERE a.assignmentName = @assignmentName AND a.sectionCode = @sectionCode AND a.courseCode =@courseCode
END TRY
BEGIN CATCH
      IF @@trancount > 0 ROLLBACK TRANSACTION
      DECLARE @msg nvarchar(2048) = error_message()  
      RAISERROR (@msg, 16, 1)
	  END CATCH
