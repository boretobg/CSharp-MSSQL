
--12.	Calculating Interest
--Your task is to create a stored procedure usp_CalculateFutureValueForAccount that uses the function from the previous problem to give an interest to a person's account for 5 years, along with information about his/her account id, first name, last name and current balance as it is shown in the example below. It should take the AccountId and the interest rate as parameters. Again you are provided with “dbo.ufn_CalculateFutureValue” function which was part of the previous task.

CREATE OR ALTER FUNCTION ufn_CalculateFutureValue(@Sum DECIMAL(15, 2), @YearlyRate FLOAT, @Years INT)
RETURNS DECIMAL(15, 4)
AS
BEGIN
	RETURN @Sum * POWER((1 + @YearlyRate), @Years) 
END

GO

CREATE PROC usp_CalculateFutureValueForAccount (@AccountID INT, @InterestRate DECIMAL(15, 2))
AS
SELECT TOP(1)
	a.AccountHolderId [Account Id],
	ah.FirstName,
	ah.LastName,
	a.Balance,
	dbo.ufn_CalculateFutureValue(Balance, @InterestRate, 5) AS [Balance in 5 Years]
	FROM Accounts a
	JOIN AccountHolders ah ON ah.Id = a.AccountHolderId
	WHERE a.AccountHolderId = @AccountID
	GROUP BY a.AccountHolderId, ah.FirstName, ah.LastName, a.Balance

EXEC usp_CalculateFutureValueForAccount 1, 0.1