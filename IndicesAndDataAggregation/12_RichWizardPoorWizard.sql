
--12. * Rich Wizard, Poor Wizard
--Mr. Bodrog definitely likes his werewolves more than you. This is your last chance to survive! Give him some data to play his favorite game Rich Wizard, Poor Wizard. The rules are simple: You compare the deposits of every wizard with the wizard after him. If a wizard is the last one in the database, simply ignore it. In the end you have to sum the difference between the deposits.

SELECT 
    SUM(b.DepositAmount - a.DepositAmount) AS SumDifference
	FROM WizzardDeposits a
	JOIN WizzardDeposits b ON b.Id + 1 = a.Id