SELECT f1.Id, f1.Name, CONCAT(Size, 'KB')
	FROM Files f1
	LEFT JOIN Files f2 ON f2.ParentId = f1.Id
WHERE f2.Id IS NULL
ORDER BY f1.Id, f1.Name, f1.Size