CREATE TABLE [dbo].[Assignment] (
    [assignmentName] VARCHAR (20) NOT NULL,
    [credits]        INT          NOT NULL,
    [sectionCode]    CHAR (10)    NOT NULL,
    [courseCode]     CHAR (6)     NOT NULL,
    PRIMARY KEY CLUSTERED ([assignmentName] ASC, [sectionCode] ASC, [courseCode] ASC),
    FOREIGN KEY ([sectionCode], [courseCode]) REFERENCES [dbo].[Section] ([sectionCode], [courseCode])
);

