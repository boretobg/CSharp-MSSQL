CREATE TABLE Categories
(
	Id INT PRIMARY KEY IDENTITY,
	CategoryName NVARCHAR(35) NOT NULL,
	DailyRate INT,
	WeeklyRate INT,
	MonthlyRate INT,
	WeekendRate INT
)

CREATE TABLE Cars
(
	Id INT PRIMARY KEY IDENTITY,
	PlateNumber NVARCHAR(10),
	Manufacturer NVARCHAR(35) NOT NULL,
	Model NVARCHAR(35) NOT NULL,
	CarYear INT NOT NULL,
	CategoryId INT,
	Doors INT NOT NULL,
	Picture NVARCHAR(MAX),
	Condition NVARCHAR(35),
	Avaiable BIT
)

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
	Id INT PRIMARY KEY IDENTITY,
	DriverLicenseNumber NVARCHAR(10),
	FullName NVARCHAR(35) NOT NULL,
	Address NVARCHAR(35),
	City NVARCHAR(35) NOT NULL,
	ZIPCode INT NOT NULL,
	Notes NVARCHAR(MAX)
)

CREATE TABLE RentalOrders
(
	Id INT PRIMARY KEY IDENTITY,
	EmployeeId INT NOT NULL,
	CustomerId INT NOT NULL,
	CarId INT NOT NULL,
	TankLevel INT,
	KilometrageStart INT,
	KilometrageEnd INT,
	TotalKilometrage INT,
	StartDate DATE,
	EndDate DATE,
	TotalDays INT,
	RateApplied INT,
	TaxRate INT,
	OrderStatus BIT,
	Notes NVARCHAR(MAX)
)

SET IDENTITY_INSERT Categories ON
INSERT INTO Categories (Id, CategoryName, DailyRate, WeeklyRate, MonthlyRate, WeekendRate)
	VALUES
	(1, 'Cat', 12, 25, 45, 5), 
	(2, 'CaDfgt', 6, 21, 47, 6),
	(3, 'Cggat', 15, 45, 41, 7)

SET IDENTITY_INSERT Categories OFF
SET IDENTITY_INSERT Cars ON
INSERT INTO Cars (Id, PlateNumber, Manufacturer, Model, CarYear, CategoryId, Doors, Picture, Condition, Avaiable)
	VALUES
	(1, 'j42klj2', 'Tesla', 'X', 2018, 32, 5, 'link', 'New', 1),
	(2, 'j475klj2', 'Tesla', 'XA', 2016, 21, 5, 'link', 'Old', 0),
	(3, '2klj234', 'Tesla', 'XL', 2019, 45, 2, 'link', 'New', 1)

SET IDENTITY_INSERT Cars OFF
SET IDENTITY_INSERT Employees ON
INSERT INTO Employees (Id, FirstName, LastName, Title, Notes)
	VALUES
	(1, 'Ican', 'Teslas', 'New', NULL),
	(2, 'Mom', 'Teslsdda', 'AssdOld', NULL),
	(3, 'Asdn', 'fTesla', 'NeGGw', NULL)

SET IDENTITY_INSERT Employees OFF
SET IDENTITY_INSERT Customers ON
INSERT INTO Customers (Id, DriverLicenseNumber, FullName, Address, City, ZIPCode, Notes)
	VALUES
	(1, 'sjf849w', 'Leonardo', 'Address31', 'vidin', 3699, NULL),
	(2, 'v8e9wq', 'Leonarasdddo', 'Address3231', 'sfia', 3129, NULL),
	(3, 'sdf49w', 'LAsdaeonardo', 'Address644', 'lom', 3534, NULL)

SET IDENTITY_INSERT Customers OFF
SET IDENTITY_INSERT RentalOrders ON
INSERT INTO RentalOrders (Id, EmployeeId, CustomerId, CarId, TankLevel, KilometrageStart, KilometrageEnd, TotalKilometrage, StartDate, EndDate, TotalDays, RateApplied, TaxRate, OrderStatus, Notes)
	VALUES
	(1, 2352, 525, 34534, 60, 12, 34, 564, '10-10-2001', '4-4-2005', 2345, 100, 124, 1, NULL),
	(2, 2352, 525, 34534, 60, 12, 34, 564, '10-10-2001', '4-4-2005', 2345, 100, 124, 1, NULL),
	(3, 2352, 525, 34534, 60, 12, 34, 564, '10-10-2001', '4-4-2005', 2345, 100, 124, 1, NULL)