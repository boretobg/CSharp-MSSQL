
--18. *3rd Highest Salary
--Find the third highest salary in each department if there is such. 

SELECT DepartmentID, Salary
	FROM
	(SELECT 
	DepartmentID,
	Salary,
	DENSE_RANK() OVER(PARTITION BY DepartmentID ORDER BY Salary DESC) AS Third
	FROM Employees
	GROUP BY DepartmentID, Salary) AS Ranked
	WHERE Third = 3
	