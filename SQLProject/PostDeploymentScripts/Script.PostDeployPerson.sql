﻿/*
Post-Deployment Script Template							
--------------------------------------------------------------------------------------
 This file contains SQL statements that will be appended to the build script.		
 Use SQLCMD syntax to include a file in the post-deployment script.			
 Example:      :r .\myfile.sql								
 Use SQLCMD syntax to reference a variable in the post-deployment script.		
 Example:      :setvar TableName MyTable							
               SELECT * FROM [$(TableName)]					
--------------------------------------------------------------------------------------
*/
IF NOT EXISTS (SELECT p.FirstName, p.LastName FROM [Person] p where p.FirstName = 'Demo' AND p.LastName = 'User')
BEGIN
	INSERT INTO dbo.Person (FirstName, LastName) 
	VALUES ('Demo', 'User')
END