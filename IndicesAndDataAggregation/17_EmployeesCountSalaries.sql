
--17. Employees Count Salaries
--Count the salaries of all employees who don’t have a manager.

SELECT 
	COUNT(Salary)
	FROM Employees
	WHERE ManagerID IS NULL