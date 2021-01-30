
--16. Employees Maximum Salaries
--Find the max salary for each department. Filter those, which have max salaries NOT in the range 30000 – 70000.

SELECT
	DepartmentID,
	MAX(Salary) AS MaxSalary
	FROM Employees
	GROUP BY DepartmentID
	HAVING MAX(Salary) NOT BETWEEN 30000 AND 70000