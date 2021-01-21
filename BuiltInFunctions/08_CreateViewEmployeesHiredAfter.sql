CREATE VIEW V_EmployeesHiredAfter2000 AS
SELECT FirstName, LastName	
	FROM Employees
	WHERE HireDate >= '2001/01/01'