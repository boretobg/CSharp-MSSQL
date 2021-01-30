
--19. **Salary Challenge
--Write a query that returns:
--	•	FirstName
--	•	LastName
--	•	DepartmentID
--Select all employees who have salary higher than the average salary of their respective departments. Select only the first 10 rows. Order by DepartmentID.
	
SELECT 
	avgs.DepartmentID, AVG(avgs.Salary) AS AverageSalary
	INTO DepartmentsAverageSalaries
	FROM Employees avgs
	GROUP BY avgs.DepartmentID

SELECT TOP(10)
	a.FirstName, 
	a.LastName,
	das.DepartmentID
	FROM Employees a
	JOIN DepartmentsAverageSalaries das ON das.DepartmentID = a.DepartmentID
	WHERE a.Salary > das.AverageSalary
	ORDER BY das.DepartmentID, a.Salary
