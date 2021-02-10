SELECT COUNT(*) 
	FROM Journeys j
	JOIN TravelCards tc ON tc.JourneyId = j.Id
	JOIN Colonists c ON c.Id = tc.ColonistId
	WHERE j.Purpose = 'Technical'