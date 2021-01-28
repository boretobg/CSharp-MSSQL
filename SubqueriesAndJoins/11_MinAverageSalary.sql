SELECT TOP(1)
	(SELECT AVG(Salary) 
			FROM Employees 
			WHERE DepartmentID = d.DepartmentID)
	FROM Employees e
	JOIN Departments d ON e.DepartmentID = d.DepartmentID
	ORDER BY Salary