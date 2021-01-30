
--14. Employees Minimum Salaries
--Select the minimum salary from the employees for departments with ID (2, 5, 7) but only for those hired after 01/01/2000.
--Your query should return:	
--	•	DepartmentID


SELECT 
 DepartmentID, 
	MIN(Salary) AS MinimumSalary
	FROM Employees
	WHERE DepartmentID IN(2, 5, 7) AND HireDate > '2000-01-01'
	GROUP BY DepartmentID