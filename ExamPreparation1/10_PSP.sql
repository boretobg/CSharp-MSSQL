	SELECT 
		p.Name,
		p.Seats,
		COUNT(pas.Id) AS [Passengers Count]
	FROM Planes p
		LEFT JOIN Flights f ON f.PlaneId = p.Id
		LEFT JOIN Tickets t ON t.FlightId = f.Id
		LEFT JOIN Passengers pas ON pas.Id = t.PassengerId
	GROUP BY p.Name, p.Seats
	ORDER BY [Passengers Count] DESC, p.Name, p.Seats