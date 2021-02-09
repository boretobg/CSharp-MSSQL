DELETE FROM Tickets
	WHERE FlightId = (SELECT ID FROM Flights WHERE Destination = 'Ayn Halagim')

DELETE FROM Flights
	WHERE Destination = 'Ayn Halagim'