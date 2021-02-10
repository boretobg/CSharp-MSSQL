SELECT 
	ss.Name,
	ss.Manufacturer
FROM TravelCards tc
	JOIN Journeys j ON j.Id = tc.JourneyId
	JOIN Colonists c ON c.Id = tc.ColonistId
	JOIN Spaceships ss ON ss.Id = j.SpaceshipId
WHERE DATEDIFF(YEAR, c.BirthDate, '01/01/2019') < 30 AND tc.JobDuringJourney = 'Pilot'
ORDER BY ss.Name