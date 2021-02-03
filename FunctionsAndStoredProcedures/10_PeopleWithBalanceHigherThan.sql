
--10.	People with Balance Higher Than
--Your task is to create a stored procedure usp_GetHoldersWithBalanceHigherThan that accepts a number as a parameter and returns all people who have more money in total of all their accounts than the supplied number. Order them by first name, then by last name


CREATE PROC usp_GetHoldersWithBalanceHigherThan (@Number DECIMAL(15, 2))
AS
SELECT 
	FirstName, 
	LastName
	FROM AccountHolders ah
	JOIN Accounts a ON a.AccountHolderId = ah.Id
	GROUP BY FirstName, LastName
	HAVING SUM(Balance) >= @Number
	ORDER BY FirstName, LastName
