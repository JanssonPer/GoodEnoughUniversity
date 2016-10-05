--Print the study result of a given course for university register ( all information about students will be shown). 
--GetResultForCourse() TESTED - Works

CREATE PROCEDURE dbo.usp_GetResultForCourse
	@courseCode char(6) = null
AS
SET XACT_ABORT, NOCOUNT ON
BEGIN TRY
	SELECT *
	FROM Student st
	INNER JOIN Studied sd
	ON st.ssn=sd.ssn
	WHERE sd.courseCode= @courseCode
END TRY
BEGIN CATCH
	IF @@trancount > 0 ROLLBACK TRANSACTION
	DECLARE @msg nvarchar(2048) = error_message()  
	RAISERROR (@msg, 16, 1)
END CATCH