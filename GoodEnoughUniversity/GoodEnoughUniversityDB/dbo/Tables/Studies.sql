CREATE TABLE [dbo].[Studies] (
    [ssn]        CHAR (10) NOT NULL,
    [courseCode] CHAR (6)  NOT NULL,
    PRIMARY KEY CLUSTERED ([ssn] ASC, [courseCode] ASC),
    FOREIGN KEY ([courseCode]) REFERENCES [dbo].[Course] ([courseCode]),
    FOREIGN KEY ([ssn]) REFERENCES [dbo].[Student] ([ssn])
);


GO
CREATE TRIGGER CreditLimit 
ON Studies
AFTER INSERT
AS
DECLARE @ssn varchar(10)
SELECT @ssn = ssn FROM inserted 
IF EXISTS(
			SELECT s.ssn, Count(*) AS totalcredits
				FROM Studies s 
					INNER JOIN Assignment a
					ON a.courseCode = s.courseCode
						WHERE ssn = @ssn
						GROUP BY ssn
						HAVING COUNT(*) >= 45)
BEGIN
PRINT ('A student can not study more than 45 credits');
ROLLBACK TRANSACTION;
RETURN    
END