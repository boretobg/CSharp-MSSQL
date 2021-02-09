SELECT 
	FirstName,
	LastName, Age
	FROM Passengers AS p
    LEFT JOIN Tickets AS t ON t.PassengerId = p.Id
	WHERE t.Id IS NULL
	ORDER BY Age DESC, FirstName, LastName
