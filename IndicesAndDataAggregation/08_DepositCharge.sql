
--8.  Deposit Charge
--Create a query that selects:
--	• Deposit group 
--	• Magic wand creator
--	• Minimum deposit charge for each group 
--Select the data in ascending ordered by MagicWandCreator and DepositGroup.

SELECT 
	DISTINCT DepositGroup,
	MagicWandCreator,
	MIN(DepositCharge) AS MinDepositCharge
	FROM WizzardDeposits
	GROUP BY DepositGroup, MagicWandCreator
	ORDER BY MagicWandCreator, DepositGroup