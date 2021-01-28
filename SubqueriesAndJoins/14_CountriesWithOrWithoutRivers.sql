SELECT TOP(5) 
	c.CountryName, r.RiverName
	FROM Rivers r
		RIGHT JOIN CountriesRivers cr ON cr.RiverId = r.Id
		RIGHT JOIN Countries c ON c.CountryCode = cr.CountryCode
	WHERE ContinentCode = 'AF'
	ORDER BY CountryName