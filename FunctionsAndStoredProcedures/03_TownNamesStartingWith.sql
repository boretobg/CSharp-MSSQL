
--3.	Town Names Starting With
--Write a stored procedure usp_GetTownsStartingWith that accept string as parameter and returns all town names starting with that string. 

CREATE PROC usp_GetTownsStartingWith @Letter NVARCHAR(MAX)
AS
SELECT Name
	FROM Towns
	WHERE Name LIKE @Letter + '%'