SELECT 
	RIGHT(Email, LEN(Email) - CHARINDEX('@', Email)) AS EmailProvider,
	COUNT(Id) AS NumberOfUsers
	FROM Users
	GROUP BY RIGHT(Email, LEN(Email) - CHARINDEX('@', Email))
	ORDER BY NumberOfUsers DESC, EmailProvider