CREATE TABLE Directors
(
	Id INT PRIMARY KEY IDENTITY,
	DirectorName NVARCHAR(35) NOT NULL,
	Notes NVARCHAR(MAX)
)

CREATE TABLE Genres
(
	Id INT PRIMARY KEY IDENTITY,
	GenreName NVARCHAR(35) NOT NULL,
	Notes NVARCHAR(MAX)
)

CREATE TABLE Categories
(
	Id INT PRIMARY KEY IDENTITY,
	CategoryName NVARCHAR(35) NOT NULL,
	Notes NVARCHAR(MAX)
)

CREATE TABLE Movies
(
	Id INT PRIMARY KEY IDENTITY,
	Title NVARCHAR(35) NOT NULL,
	DirectorId INT,
	CopyRightYear INT,
	Lenght INT,
	GenreId INT,
	CategoryId INT,
	Rating INT,
	Notes NVARCHAR(MAX)
)

SET IDENTITY_INSERT Directors ON
INSERT INTO Directors (Id, DirectorName, Notes)
	VALUES
	(1, 'Ivan', NULL), (2, 'Bobby', NULL), (3, 'Goro', NULL), (4, 'Moro', NULL), (5, 'Vano', NULL)

SET IDENTITY_INSERT Directors OFF
SET IDENTITY_INSERT Genres ON
INSERT INTO Genres (Id, GenreName, Notes)
	VALUES
	(1, 'Pop', NULL), (2, 'Rock', NULL), (3, 'Jazz', NULL), (4, 'Genre', NULL), (5, 'None', NULL)

SET IDENTITY_INSERT Genres OFF
SET IDENTITY_INSERT Categories ON
INSERT INTO Categories (Id, CategoryName, Notes)
	VALUES
	(1, 'Some', NULL), (2, 'Rogdfck', NULL), (3, 'Jazsdfz', NULL), (4, 'Gesdsdnre', NULL), (5, 'Nfsdfone', NULL)

SET IDENTITY_INSERT Categories OFF
SET IDENTITY_INSERT Movies ON
INSERT INTO Movies (Id, Title, DirectorId, CopyRightYear, Lenght, GenreId, CategoryId, Rating, Notes)
	VALUES
	(1, 'Title1', 12, 2001, 120, 354, 11, 1500, NULL),
	(2, 'Title3', 16, 2007, 150, 34, 12, 1500, NULL),
	(3, 'Title3', 4, 2004, 120, 345, 13, 100, NULL),
	(4, 'Title4', 7, 2011, 150, 34, 14, 1050, NULL),
	(5, 'Title5', 8, 2025, 120, 354, 15, 1050, NULL)