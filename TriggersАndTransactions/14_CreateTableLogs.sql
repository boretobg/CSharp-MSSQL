
/*Create Table Logs 
Create a table – Logs (LogId, AccountId, OldSum, NewSum). Add a trigger to the Accounts table that enters a new entry into the Logs table every time the sum on an account changes. Submit only the query that creates the trigger.*/

CREATE TRIGGER tr_AddLogsAfterAccountUpdate
ON Accounts FOR UPDATE
AS
	DECLARE @newSum DECIMAL(15, 2) = (SELECT Balance FROM inserted)
	DECLARE @oldSum DECIMAL(15, 2) = (SELECT Balance FROM deleted)
	DECLARE @accountId INT = (SELECT Id FROM inserted)

	INSERT INTO Logs (AccountId, OldSum, NewSum)
	VALUES
		(@accountId, @oldSum, @newSum)