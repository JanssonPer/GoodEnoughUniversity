--Print information about student
 
--A student can not be registered to a course for which she is not qualified (prerequisite)   


--GetStudent() TESTED - Works 

CREATE PROCEDURE dbo.usp_GetStudent
	@ssn char(10) = null
AS
SET XACT_ABORT, NOCOUNT ON
BEGIN TRY
	SELECT *
	FROM Student
	WHERE ssn = @ssn
END TRY
BEGIN CATCH
      IF @@trancount > 0 ROLLBACK TRANSACTION
      DECLARE @msg nvarchar(2048) = error_message()  
      RAISERROR (@msg, 16, 1)
END CATCH

