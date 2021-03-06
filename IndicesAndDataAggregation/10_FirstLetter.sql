
--10. First Letter
--Write a query that returns all unique wizard first letters of their first names only if they have deposit of type Troll Chest. Order them alphabetically. Use GROUP BY for uniqueness.

SELECT 
	DISTINCT SUBSTRING(FirstName, 1, 1) AS FirstLetter
	FROM WizzardDeposits
	WHERE DepositGroup = 'Troll Chest'
	GROUP BY FirstName