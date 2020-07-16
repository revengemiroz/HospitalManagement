CREATE TABLE [dbo].[UserData]
(
	[Id] INT NOT NULL IDENTITY, 
    [Username] NCHAR(20) NULL, 
    [password] NCHAR(20) NULL, 
    [Email] NCHAR(30) NULL, 
    [job] NCHAR(20) NULL 
)
