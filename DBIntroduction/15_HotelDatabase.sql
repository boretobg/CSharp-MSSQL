CREATE TABLE Employees
(
	Id INT PRIMARY KEY IDENTITY,
	FirstName NVARCHAR(35) NOT NULL,
	LastName NVARCHAR(35) NOT NULL,
	Title NVARCHAR(35) NOT NULL,
	Notes NVARCHAR(MAX)
)

CREATE TABLE Customers
(
	AccountNumber INT PRIMARY KEY IDENTITY,
	FirstName NVARCHAR(35) NOT NULL,
	LastName NVARCHAR(35) NOT NULL,
	PhoneNumber NVARCHAR(10),
	EmergencyName NVARCHAR(35),
	EmergencyNumber NVARCHAR(10),
	Notes NVARCHAR(MAX)
)

CREATE TABLE RoomStatus
(
	RoomStatus BIT NOT NULL,
	Notes NVARCHAR(MAX)
)

CREATE TABLE RoomTypes
(
	RoomType NVARCHAR(35) NOT NULL,
	Notes NVARCHAR(MAX)
)

CREATE TABLE BedTypes
(
	BedType NVARCHAR(35) NOT NULL,
	Notes NVARCHAR(MAX)
)

CREATE TABLE Rooms
(
	RoomNumber INT PRIMARY KEY IDENTITY,
	RoomType NVARCHAR(35) NOT NULL,
	BedType NVARCHAR(35) NOT NULL,
	Rate INT,
	RoomStatus BIT NOT NULL,
	Notes NVARCHAR(MAX)
)

CREATE TABLE Payments
(
	Id INT PRIMARY KEY IDENTITY,
	EmployeeId INT NOT NULL,
	PaymentDay DATE NOT NULL,
	AccountNumber INT NOT NULL,
	FirstDateOccupied DATE,
	LastDateOccupied DATE,
	TotalDays INT,
	AmountCharged DECIMAL,
	TaxRate INT,
	TaxAmount DECIMAL,
	PaymentTotal DECIMAL NOT NULL,
	Notes NVARCHAR(MAX)
)

CREATE TABLE Occupancies
(
	Id INT PRIMARY KEY IDENTITY,
	EmployeeId INT NOT NULL,
	DateOccupied DATE NOT NULL,
	AccountNumber INT,
	RoomNumber INT,
	RateApplied INT,
	PhoneCharge DECIMAL,
	Notes NVARCHAR(MAX)
)

SET IDENTITY_INSERT Employees ON
INSERT INTO Employees (Id, FirstName, LastName, Title, Notes)
	VALUES
		(1, 'Ivan', 'Popov', 'CEO', NULL), 
		(2, 'Invvan', 'Anapov', 'VIP', NULL), 
		(3, 'Ivaan', 'Ataopov', 'MC', NULL)

SET IDENTITY_INSERT Employees OFF
SET IDENTITY_INSERT Customers ON
INSERT INTO Customers (AccountNumber, FirstName, LastName, PhoneNumber, EmergencyName, EmergencyNumber, Notes)
	VALUES
		(1, 'Modas', 'ASDj', '0987654321', 'nOneLASDo', '123474', NULL),
		(2, 'Msssdas', 'ndssdfASDj', '09875346', 'nOSDFneo', '45845474', NULL),
		(3, 'AdaModas', 'ASDjgdg', '063765431', 'FJDSJFnOneo', '21377', NULL)

SET IDENTITY_INSERT Customers OFF
INSERT INTO RoomStatus (RoomStatus, Notes)
	VALUES
		(1, NULL), (0, NULL), (1, NULL)

INSERT INTO RoomTypes (RoomType, Notes)
	VALUES
		('one bed', NULL), ('two bed', NULL), ('three bed', NULL)

INSERT INTO BedTypes (BedType, Notes)
	VALUES
		('type1', NULL), ('type2', NULL), ('type3', NULL)

SET IDENTITY_INSERT Rooms ON
INSERT INTO Rooms (RoomNumber, RoomType, BedType, Rate, RoomStatus, Notes)
	VALUES
		(1, 'type', 'type', 12, 1, NULL), (2, 'type1', 'type1', 42, 0, NULL), (3, 'type2', 'type2', 18, 1, NULL)

SET IDENTITY_INSERT Rooms OFF
SET IDENTITY_INSERT Payments ON
INSERT INTO Payments (Id, EmployeeId, PaymentDay, AccountNumber, FirstDateOccupied, LastDateOccupied, TotalDays, AmountCharged, TaxRate, TaxAmount, PaymentTotal, Notes)
	VALUES
		(1, 456, '01-01-2016', 26, '01-2-2016', '11-02-2020', 1, 12.5, 23, 23.5, 134, NULL),
		(2, 156, '11-01-2013', 36, '01-01-2006', '01-6-2006', 2, 62.5, 43, 27.5, 234, NULL),
		(3, 256, '01-11-2006', 46, '11-01-2013', '01-02-2016', 3, 15.5, 13, 63.5, 264, NULL)

SET IDENTITY_INSERT Payments OFF
SET IDENTITY_INSERT Occupancies ON
INSERT INTO Occupancies (Id, EmployeeId, DateOccupied, AccountNumber, RoomNumber, RateApplied, PhoneCharge, Notes)
	VALUES
		(1, 1242, '01-01-2001', 456, 120, 100, 23.4, NULL),
		(2, 633, '11-01-2021', 356, 122, 80, 25.6, NULL),
		(3, 142, '01-11-2011', 156, 121, 200, 13.4, NULL)