
/*9.	Delete Employees
Create a table Deleted_Employees(EmployeeId PK, FirstName, LastName, MiddleName, JobTitle, DepartmentId, Salary) that will hold information about fired (deleted) employees from the Employees table. Add a trigger to Employees table that inserts the corresponding information about the deleted records in Deleted_Employees.*/

CREATE TRIGGER tr_DeletedEmployeesTrigger
ON Employees FOR DELETE
AS
	INSERT INTO Deleted_Employees (FirstName, LastName, MiddleName, JobTitle, DepartmentId, Salary)
	SELECT FirstName, LastName, MiddleName, JobTitle, DepartmentID, Salary FROM deleted


