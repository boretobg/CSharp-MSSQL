CREATE TABLE Teachers
(
	TeacherID INT IDENTITY PRIMARY KEY,
	Name NVARCHAR(30) NOT NULL,
	ManagerID INT FOREIGN KEY REFERENCES Teachers(TeacherID)
)

SET IDENTITY_INSERT Teachers ON
INSERT INTO Teachers (TeacherID, Name, ManagerID)
	VALUES (101, 'John', NULL),
		   (102, 'Maya', 106),
		   (103, 'Silvia', 106),
		   (104, 'Ted', 105),
		   (105, 'Mark', 101),
		   (106, 'Greta', 101)
