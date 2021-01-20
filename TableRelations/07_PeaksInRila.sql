SELECT Mountains.MountainRange, Peaks.PeakName, Peaks.Elevation
	   FROM Mountains INNER JOIN Peaks ON Mountains.Id = Peaks.MountainId
	   WHERE Mountains.Id = 17
	   ORDER BY Elevation DESC