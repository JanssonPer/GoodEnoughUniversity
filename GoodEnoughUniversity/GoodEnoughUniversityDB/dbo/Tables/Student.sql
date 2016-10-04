CREATE TABLE [dbo].[Student] (
    [ssn]            CHAR (10)     NOT NULL,
    [studentName]    VARCHAR (55)  NOT NULL,
    [studentAddress] VARCHAR (100) NULL,
    [studentType]    VARCHAR (20)  NULL,
    PRIMARY KEY CLUSTERED ([ssn] ASC),
    CONSTRAINT [valid_type] CHECK ([studentType]='ExchangeStudent' OR [studentType]='SwedishStudent')
);

