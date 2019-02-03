CREATE VIEW [dbo].[spGetPeople]
	AS SELECT [p].[Id] PersonId, [p].[FirstName], [p].[LastName], [a].[Id],
			[a].[City], [a].[Country], [a].[ZipCode] FROM [Person] AS p 
	LEFT JOIN [Adress] AS a ON p.Id = a.PersonId
