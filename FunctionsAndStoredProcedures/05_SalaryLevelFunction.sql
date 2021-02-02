
--5.	Salary Level Function
--Write a function ufn_GetSalaryLevel(@salary DECIMAL(18,4)) that receives salary of an employee and returns the level of the salary.
--	•	If salary is < 30000 return "Low"
--	•	If salary is between 30000 and 50000 (inclusive) return "Average"
--	•	If salary is > 50000 return "High"

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

--SELECT 
	--Salary,
	--(SELECT dbo.ufn_GetSalaryLevel(Salary)) AS SalaryLevel
	--FROM Employees
