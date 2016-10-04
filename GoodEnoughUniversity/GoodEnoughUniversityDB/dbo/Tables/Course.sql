CREATE TABLE [dbo].[Course] (
    [courseCode]   CHAR (6)     NOT NULL,
    [courseName]   VARCHAR (50) NOT NULL,
    [prerequisite] CHAR (6)     NULL,
    PRIMARY KEY CLUSTERED ([courseCode] ASC)
);

