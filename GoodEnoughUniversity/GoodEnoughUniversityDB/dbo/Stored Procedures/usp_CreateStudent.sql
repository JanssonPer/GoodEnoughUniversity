--CreateStudent();

CREATE PROCEDURE dbo.usp_CreateStudent
	@ssn char(6) = null,
	@studentName varchar(55) = null,
	@studentAddress varchar(100) = null,
	@studentType varchar(15) = null,
	@countryOfOrigin varchar(55) = null
AS
SET XACT_ABORT, NOCOUNT ON
BEGIN TRY
	INSERT INTO Student VALUES(@ssn, @studentName, @studentAddress, @studentType)

	IF @studentType = 'ExchangeStudent'
		INSERT INTO ExchangeStudent VALUES(@countryOfOrigin, @ssn)
	-- Insert trigger to create SwedishStudent or ExchangeStudent
END TRY
BEGIN CATCH
	IF @@trancount > 0 ROLLBACK TRANSACTION
	DECLARE @msg nvarchar(2048) = error_message()  
	RAISERROR (@msg, 16, 1)
END CATCH