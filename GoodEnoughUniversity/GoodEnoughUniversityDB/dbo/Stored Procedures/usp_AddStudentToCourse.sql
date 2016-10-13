CREATE PROCEDURE dbo.usp_AddStudentToCourse
	@ssn char(10),
	@courseCode char(6)
AS
SET XACT_ABORT, NOCOUNT ON

BEGIN TRY
	
	IF EXISTS( 
			SELECT prerequisite 
			FROM Course c 
			WHERE c.courseCode =@courseCode 
			INTERSECT
					SELECT courseCode
					FROM Studied
					WHERE ssn=@ssn
			 )	
		
	OR (
		SELECT prerequisite 
		FROM Course
		WHERE courseCode = @courseCode 
		) IS NULL

		INSERT INTO Studies 
		VALUES(@ssn, @courseCode)
	ELSE
		RAISERROR('The student is not qualified for this course', 16, 1)

END TRY
BEGIN CATCH
	IF @@trancount > 0 ROLLBACK TRANSACTION
	DECLARE @msg nvarchar(2048) = error_message()
	RAISERROR (@msg, 16, 1)
END CATCH
GO

