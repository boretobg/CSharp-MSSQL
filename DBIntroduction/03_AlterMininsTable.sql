ALTER TABLE Minions
	Add TownId int

ALTER TABLE Minions
	ADD FOREIGN KEY (TownId) REFERENCES Towns(Id)