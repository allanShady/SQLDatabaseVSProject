CREATE TABLE [dbo].[Adress]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [PersonId] INT NOT NULL, 
    [City] NVARCHAR(50) NOT NULL, 
    [Country] NVARCHAR(50) NOT NULL, 
    [ZipCode] NVARCHAR(50) NOT NULL, 
    CONSTRAINT [FK_Adress_Person] FOREIGN KEY ([PersonId]) REFERENCES [Person]([Id])
)
