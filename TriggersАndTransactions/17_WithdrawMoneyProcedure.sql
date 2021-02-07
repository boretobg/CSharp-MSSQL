
/* 4.	Withdraw Money
Add stored procedure usp_WithdrawMoney (AccountId, MoneyAmount) that withdraws money from an existing account. Make sure to guarantee valid positive MoneyAmount with precision up to fourth sign after decimal point. The procedure should produce exact results working with the specified precision. */

CREATE PROC usp_WithdrawMoney (@AccountId INT, @MoneyAmount DECIMAL(15, 4))
AS
BEGIN TRANSACTION
	DECLARE @id INT = (SELECT Id FROM Accounts WHERE Id = @AccountId)

	IF @id IS NULL
		BEGIN
			ROLLBACK
			RETURN
		END
	
	IF @MoneyAmount < 0
		BEGIN
			ROLLBACK
			RETURN
		END

	UPDATE Accounts
		SET Balance -= @MoneyAmount
		WHERE Id = @AccountId
COMMIT