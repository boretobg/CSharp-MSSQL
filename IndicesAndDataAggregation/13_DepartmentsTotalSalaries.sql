
--13. Departments Total Salaries
--Create a query that shows the total sum of salaries for each department. Order by DepartmentID.
--Your query should return:	
--	•	DepartmentID

SELECT 
 DepartmentID, 
	SUM(Salary) AS TotalSalary
	FROM Employees
	GROUP BY DepartmentID
	ORDER BY DepartmentID