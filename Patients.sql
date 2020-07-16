CREATE TABLE [dbo].[Patients]
(
	[PatientID] INT NOT NULL PRIMARY KEY IDENTITY, 
    [Pname] NCHAR(20) NULL, 
    [Age] INT NULL, 
    [Gender] NCHAR(10) NULL, 
    [BG] NCHAR(10) NULL, 
    [problem] VARCHAR(MAX) NULL
)
