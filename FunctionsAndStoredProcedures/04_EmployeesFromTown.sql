
--4.	Employees from Town
--Write a stored procedure usp_GetEmployeesFromTown that accepts town name as parameter and return the employees� first and last name that live in the given town. 

CREATE PROC usp_GetEmployeesFromTown @TownName NVARCHAR(MAX)
AS
SELECT FirstName, LastName		
	FROM Employees e
	JOIN Addresses a ON a.AddressID = e.AddressID
	JOIN Towns t ON t.TownID = a.TownID
	WHERE t.Name = @TownName
