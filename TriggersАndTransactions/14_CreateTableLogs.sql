CREATE TRIGGER tr_AddLogsAfterAccountUpdate
ON Accounts FOR UPDATE
AS
	DECLARE @newSum DECIMAL(15, 2) = (SELECT Balance FROM inserted)
	DECLARE @oldSum DECIMAL(15, 2) = (SELECT Balance FROM deleted)
	DECLARE @accountId INT = (SELECT Id FROM inserted)

	INSERT INTO Logs (AccountId, OldSum, NewSum)
	VALUES
		(@accountId, @oldSum, @newSum)