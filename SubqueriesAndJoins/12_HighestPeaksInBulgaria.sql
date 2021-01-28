SELECT c.CountryCode, m.MountainRange, p.PeakName, p.Elevation
	FROM Peaks p
	JOIN MountainsCountries mc ON p.MountainId = mc.MountainId
	JOIN Mountains m ON mc.MountainId = m.Id
	JOIN Countries c ON mc.CountryCode = c.CountryCode
	WHERE c.CountryCode = 'BG' AND p.Elevation > 2835
	ORDER BY Elevation DESC