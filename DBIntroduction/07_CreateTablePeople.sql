CREATE TABLE People
(
	Id BIGINT PRIMARY KEY IDENTITY,
    Name VARCHAR(200) NOT NULL,
	Picture VARCHAR(MAX),
	Height REAL,
	Weight REAL,
	Gender VARCHAR(1) NOT NULL CHECK (Gender IN ('m', 'f')),
	Birthdate DATE NOT NULL,
	Biography VARCHAR(MAX)
)

SET IDENTITY_INSERT People ON
INSERT INTO People (Id, Name, Picture, Height, Weight, Gender, Birthdate, Biography)
	VALUES
	(1, 'Bobby', 'https://github.com/account', 1.76, 60, 'm', '2001/12/12', NULL),
	(2, 'Yogo', 'https://github.com/account', 1.46, 20, 'f', '2001/12/12', NULL),
	(3, 'Adsa', 'https://github.com/account', 1.76, 30, 'f', '2001/12/12', NULL),
	(4, 'Ivan', 'https://github.com/account', 1.26, 50, 'm', '2001/12/12', NULL),
	(5, 'Merso', 'https://github.com/account', 1.66, 40, 'f', '2001/12/12', NULL)