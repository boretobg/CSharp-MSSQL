
--6.	Employees by Salary Level
--Write a stored procedure usp_EmployeesBySalaryLevel that receive as parameter level of salary (low, average or high) and print the names of all employees that have given level of salary. You should use the function - "dbo.ufn_GetSalaryLevel(@Salary) ", which was part of the previous task, inside your "CREATE PROCEDURE …" query.

CREATE FUNCTION ufn_GetSalaryLevel(@salary DECIMAL(18,4))
RETURNS NVARCHAR(MAX)
AS
BEGIN
	IF @salary < 30000
		RETURN 'Low'
	ELSE IF @salary <= 50000
		RETURN 'Average'
	ELSE 
		RETURN 'High'

	RETURN NULL
END

GO

CREATE PROC usp_EmployeesBySalaryLevel @LevelSalary NVARCHAR(MAX)
AS
SELECT
	FirstName, LastName
	FROM Employees
	WHERE dbo.ufn_GetSalaryLevel(Salary) = @LevelSalary

EXEC usp_EmployeesBySalaryLevel 'High'