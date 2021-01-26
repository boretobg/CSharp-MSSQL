SELECT TOP(5) e.EmployeeID, FirstName, 
	CASE
		WHEN p.StartDate >= '2005-01-01' THEN NULL
		ELSE p.Name
		END AS Name
	FROM Employees e
		LEFT JOIN EmployeesProjects ep ON e.EmployeeID = ep.EmployeeID
		LEFT JOIN Projects p ON ep.ProjectID = p.ProjectID 
	WHERE e.EmployeeID = 24
	ORDER BY EmployeeID
