SELECT TOP(5) EmployeeID, JobTitle, a.AddressID, a.AddressText
	FROM Employees e
	LEFT JOIN Addresses a ON e.AddressID = a.AddressID
	ORDER BY a.AddressID
