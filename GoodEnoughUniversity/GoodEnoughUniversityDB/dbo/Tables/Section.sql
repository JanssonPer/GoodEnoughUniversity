CREATE TABLE [dbo].[Section] (
    [sectionCode] CHAR (10) NOT NULL,
    [courseCode]  CHAR (6)  NOT NULL,
    PRIMARY KEY CLUSTERED ([sectionCode] ASC, [courseCode] ASC),
    FOREIGN KEY ([courseCode]) REFERENCES [dbo].[Course] ([courseCode])
);

