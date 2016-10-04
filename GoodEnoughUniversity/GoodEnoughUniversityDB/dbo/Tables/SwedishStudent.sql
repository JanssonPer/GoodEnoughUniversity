CREATE TABLE [dbo].[SwedishStudent] (
    [ssn] CHAR (10) NOT NULL,
    PRIMARY KEY CLUSTERED ([ssn] ASC),
    FOREIGN KEY ([ssn]) REFERENCES [dbo].[Student] ([ssn])
);

