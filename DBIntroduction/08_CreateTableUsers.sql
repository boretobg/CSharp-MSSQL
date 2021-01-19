CREATE TABLE Users
(
	Id BIGINT PRIMARY KEY IDENTITY,
    Username NVARCHAR(30) NOT NULL,
	Password NVARCHAR(26) NOT NULL,
	ProfilePicture VARCHAR(MAX),
	LastLoginTime DATE NOT NULL,
	IsDeleted BIT
)

--SET IDENTITY_INSERT People OFF
SET IDENTITY_INSERT Users ON

INSERT INTO Users (Id, Username, Password, ProfilePicture, LastLoginTime, IsDeleted)
	VALUES
	(1, 'Bobby', 'password', 'https://github.com/account', '2001/12/12', 0),
	(2, 'Yogo', 'passwwdord', 'https://github.com/account', '2001/12/12', 1),
	(3, 'Adsa', 'pas4sword', 'https://github.com/account', '2001/12/12', 0),
	(4, 'Ivan', 'passqaword', 'https://github.com/account','2001/12/12', 1),
	(5, 'Merso', 'pass24word', 'https://github.com/account', '2001/12/12', 0)