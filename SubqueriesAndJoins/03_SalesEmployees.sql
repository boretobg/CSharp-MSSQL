SELECT TOP(50) EmployeeID, FirstName, LastName, d.Name as [DepartmentName]
	FROM Employees e
	INNER JOIN Departments d ON e.DepartmentID = d.DepartmentID
	WHERE d.DepartmentID = 3
	ORDER BY d.DepartmentID ASC
