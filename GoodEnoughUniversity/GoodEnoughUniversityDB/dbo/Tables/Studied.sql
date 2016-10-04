CREATE TABLE [dbo].[Studied] (
    [grade]      INT       NOT NULL,
    [ssn]        CHAR (10) NOT NULL,
    [courseCode] CHAR (6)  NOT NULL,
    PRIMARY KEY CLUSTERED ([ssn] ASC, [courseCode] ASC),
    FOREIGN KEY ([courseCode]) REFERENCES [dbo].[Course] ([courseCode]),
    FOREIGN KEY ([ssn]) REFERENCES [dbo].[Student] ([ssn])
);

