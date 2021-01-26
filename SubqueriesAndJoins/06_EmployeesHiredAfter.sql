SELECT FirstName, LastName, HireDate, d.Name
	FROM Employees e
	JOIN Departments d ON e.DepartmentID = d.DepartmentID
	WHERE HireDate > '1999-01-01' AND
		  (d.DepartmentID = 3 OR d.DepartmentID = 10)
	ORDER BY HireDate