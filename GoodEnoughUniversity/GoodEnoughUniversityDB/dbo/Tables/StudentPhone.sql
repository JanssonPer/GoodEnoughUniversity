CREATE TABLE [dbo].[StudentPhone] (
    [ssn]          CHAR (10)    NOT NULL,
    [studentPhone] VARCHAR (10) NOT NULL,
    PRIMARY KEY CLUSTERED ([ssn] ASC, [studentPhone] ASC),
    FOREIGN KEY ([ssn]) REFERENCES [dbo].[Student] ([ssn])
);

