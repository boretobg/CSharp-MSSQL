
/*8.	Employees with Three Projects
Create a procedure usp_AssignProject(@emloyeeId, @projectID) that assigns projects to employee. If the employee has more than 3 project throw exception and rollback the changes. The exception message must be: "The employee has too many projects!" with Severity = 16, State = 1.*/

CREATE PROC usp_AssignProject @emloyeeId INT, @projectID INT
AS
BEGIN TRANSACTION
	IF (SELECT COUNT(*) FROM EmployeesProjects WHERE EmployeeID = @emloyeeId) >= 3
		BEGIN
			ROLLBACK
			RAISERROR('The employee has too many projects!', 16, 1)
			RETURN
		END
	ELSE
		BEGIN
			INSERT INTO EmployeesProjects (EmployeeID, ProjectID)
			VALUES (@emloyeeId, @projectID)
		END
COMMIT