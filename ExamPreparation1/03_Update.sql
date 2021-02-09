UPDATE Tickets
	SET Price += Price * 0.13
	WHERE (SELECT Destination
		   FROM Flights f
	       LEFT JOIN Tickets t ON t.FlightId = f.Id
	       WHERE Destination = 'Carlsbad') = 'Carlsbad'