CREATE TABLE Clients
(
	ClientId INT IDENTITY PRIMARY KEY,
	FirstName NVARCHAR(50) NOT NULL,
	LastName NVARCHAR(50) NOT NULL,
	Phone CHAR(12) NOT NULL
)

CREATE TABLE Mechanics
(
	MechanicId INT IDENTITY PRIMARY KEY,
	FirstName NVARCHAR(50) NOT NULL,
	LastName NVARCHAR(50) NOT NULL,
	Address NVARCHAR(255) NOT NULL
)

CREATE TABLE Models
(
	ModelId INT IDENTITY PRIMARY KEY,
	Name NVARCHAR(50) UNIQUE NOT NULL,
)

CREATE TABLE Jobs
(
	JobId INT IDENTITY PRIMARY KEY,
	ModelId INT REFERENCES Models(ModelId) NOT NULL,
	Status NVARCHAR(11) DEFAULT('Pending') CHECK(Status = 'Pending' OR Status = 'In Progress' OR Status = 'Finished') NOT NULL,
	ClientId INT REFERENCES Clients(ClientId) NOT NULL,
	MechanicId INT REFERENCES Mechanics(MechanicId),
	IssueDate DATE NOT NULL,
	FinishDate DATE
)

CREATE TABLE Orders
(
	OrderId INT IDENTITY PRIMARY KEY,
	JobId INT REFERENCES Jobs(JobId) NOT NULL,
	IssueDate DATE,
	Delivered BIT DEFAULT(0)
)

CREATE TABLE Vendors
(
	VendorId INT IDENTITY PRIMARY KEY,
	Name NVARCHAR(50) UNIQUE NOT NULL
)

CREATE TABLE Parts
(
	PartId INT PRIMARY KEY,
	SerialNumber NVARCHAR(50) UNIQUE NOT NULL,
	Description NVARCHAR(255),
	Price DECIMAL(4, 2) CHECK(Price > 0) NOT NULL,
	VendorId INT REFERENCES Vendors(VendorId) NOT NULL,
	StockQty INT DEFAULT(0) CHECK(StockQty >= 0)
)

CREATE TABLE OrderParts
(
	OrderId INT FOREIGN KEY REFERENCES Orders(OrderId) NOT NULL,
	PartId INT FOREIGN KEY REFERENCES Parts(PartId) NOT NULL,
	Quantity INT DEFAULT(1) CHECK(Quantity > 0) NOT NULL,
	PRIMARY KEY(OrderId, PartId)
)

CREATE TABLE PartsNeeded
(
	JobId INT FOREIGN KEY REFERENCES Jobs(JobId) NOT NULL,
	PartId INT FOREIGN KEY REFERENCES Parts(PartId) NOT NULL,
	Quantity INT DEFAULT(1) CHECK(Quantity > 0),
	PRIMARY KEY(JobId, PartId)
)