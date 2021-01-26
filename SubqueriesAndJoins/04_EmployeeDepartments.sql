SELECT TOP(5) EmployeeID, FirstName, Salary, d.Name as [DepartmentName]
	FROM Employees e
	INNER JOIN Departments d ON e.DepartmentID = d.DepartmentID
	WHERE Salary > 15000
	ORDER BY d.DepartmentID ASC
