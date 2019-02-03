CREATE PROCEDURE [dbo].[spInsertPerson]
	@FirstName NVARCHAR(50),
	@LastName NVARCHAR(50)
AS
	INSERT INTO dbo.Person (FirstName, LastName) 
	VALUES (@FirstName, @LastName)
RETURN 0
