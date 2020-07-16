CREATE TABLE [dbo].[Messages] (
    [Id]      INT         IDENTITY (1, 1) NOT NULL,
    [Recieve]      NCHAR (30)  NULL,
    [Sender]    NCHAR (30)  NULL,
    [Message] NCHAR (200) NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);

