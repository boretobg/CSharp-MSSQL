
/*	2.Create Table Emails
  Create another table – NotificationEmails(Id, Recipient, Subject, Body). Add a trigger to logs table and create new email whenever new record is inserted in logs table. The following data is required to be filled for each email:
		•	Recipient – AccountId
		•	Subject – "Balance change for account: {AccountId}"
		•	Body - "On {date} your balance was changed from {old} to {new}."*/

CREATE TRIGGER tr_AddNewEmailAfterNewRecord
ON Logs FOR INSERT
AS
	DECLARE @accountId INT = (SELECT AccountId FROM inserted)
	DECLARE @oldSum DECIMAL(15, 2) = (SELECT OldSum FROM deleted)	
	DECLARE @newSum DECIMAL(15, 2) = (SELECT NewSum FROM deleted)

	INSERT INTO NotificationEmails (Recipient, Subject, Body)
	VALUES
		(
			@accountId,
			'Balance change for account: ' + CAST(@accountId AS NVARCHAR),
			'On ' + CONVERT(VARCHAR, GETDATE(), 101) + ' your balance was changed from ' + CAST(@oldSum AS NVARCHAR) + ' to ' + CAST(@newSum AS NVARCHAR) + '.'
		)
