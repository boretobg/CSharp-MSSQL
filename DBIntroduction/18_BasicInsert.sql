SET IDENTITY_INSERT Towns ON
INSERT INTO Towns (Id, Name)
	VALUES
		(1, 'Sofia'), (2, 'Plovdiv'), (3, 'Varna'), (4, 'Burgas')

SET IDENTITY_INSERT Towns OFF
SET IDENTITY_INSERT Departments ON
INSERT INTO Departments (Id, Name)
	VALUES
		(1, 'Engineering'), (2, 'Sales'), (3, 'Marketing'), (4, 'Software Development'), (5, 'Quality Assurance')

ALTER TABLE Addresses
ADD FOREIGN KEY (TownId) REFERENCES Towns(Id)

SET IDENTITY_INSERT Departments OFF
SET IDENTITY_INSERT Addresses ON
INSERT INTO Addresses (Id, AddressText, TownId)
	VALUES
		(1, NULL, 1), (2, NULL, 2), (3, NULL, 4), (4, NULL, 3), (5, NULL, 1)

SET IDENTITY_INSERT Addresses OFF
SET IDENTITY_INSERT Employees ON
INSERT INTO Employees (Id, FirstName, MiddleName, LastName, JobTitle, DepartmentId, HireDate, Salary, AddressId)
	VALUES
		(1, 'Ivan', 'Ivanov', 'Ivanov', '.NET Developer', 4, '2013-02-01', 3500.00, 1),
		(2, 'Petar', 'Petrov', 'Petrov', 'Senior Engineer', 1, '2004-03-02', 4000.00, 2),
		(3, 'Maria', 'Petrova', 'Ivanova', 'Intern', 5, '2016-08-28', 525.25, 3),
		(4, 'Georgi', 'Teziev', 'Ivanov', 'CEO', 2, '2007-12-09', 3000.00, 4),
		(5, 'Peter', 'Pan', 'Pan', 'Intern', 3, '2016-08-28', 599.88, 5)