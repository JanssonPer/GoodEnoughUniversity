CREATE TABLE [dbo].[ExchangeStudent] (
    [countryOfOrigin] VARCHAR (55) NULL,
    [ssn]             CHAR (10)    NOT NULL,
    PRIMARY KEY CLUSTERED ([ssn] ASC),
    FOREIGN KEY ([ssn]) REFERENCES [dbo].[Student] ([ssn])
);

