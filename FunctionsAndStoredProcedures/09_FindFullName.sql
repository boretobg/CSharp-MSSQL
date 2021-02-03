
--9.	Find Full Name
--You are given a database schema with tables AccountHolders(Id (PK), FirstName, LastName, SSN) and Accounts(Id (PK), AccountHolderId (FK), Balance).  Write a stored procedure usp_GetHoldersFullName that selects the full names of all people. 

CREATE PROC usp_GetHoldersFullName
AS
SELECT 
	CONCAT(FirstName, ' ', LastName) AS [Full Name]
	FROM AccountHolders

