SELECT 
	c.CountryCode,
	COUNT(m.MountainRange) [MountainRanges]
		FROM Countries c
			JOIN MountainsCountries mc ON c.CountryCode = mc.CountryCode
			JOIN Mountains m ON mc.MountainId = m.Id
		WHERE c.CountryCode IN('BG', 'RU', 'US')
		GROUP BY c.CountryCode