
--6. Deposits Sum for Ollivander Family
--Select all deposit groups and their total deposit sums but only for the wizards who have their magic wands crafted by Ollivander family.

SELECT	
	DISTINCT DepositGroup,
	SUM(DepositAmount) AS TotalSum
	FROM WizzardDeposits
	WHERE MagicWandCreator = 'Ollivander family'
	GROUP BY DepositGroup