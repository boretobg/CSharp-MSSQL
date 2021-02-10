SELECT 
	p.Name,
	COUNT(j.Id) AS JourneyCount
FROM Journeys j
	JOIN Spaceports s ON s.Id = j.DestinationSpaceportId
	JOIN Planets p ON p.Id = s.PlanetId
GROUP BY p.Name
ORDER BY JourneyCount DESC, p.Name