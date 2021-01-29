
--5. Deposits Sum
--Select all deposit groups and their total deposit sums.

SELECT 
	DISTINCT DepositGroup,
	SUM(DepositAmount) AS TotalSum
	FROM WizzardDeposits
	GROUP BY DepositGroup