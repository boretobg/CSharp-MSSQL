SELECT e.EmployeeID, e.FirstName, e.ManagerID, d.FirstName as ManagerName
	FROM Employees e
	JOIN Employees d ON e.ManagerID = d.EmployeeID
	WHERE e.ManagerID = 3 OR e.ManagerID = 7
	ORDER BY EmployeeID