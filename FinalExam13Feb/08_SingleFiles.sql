
--MY MIND JUST TURNED OFF idk what happened I could find a solution for an hours, while the rest of the exam I did IN 1 hour
SELECT 
	Id, Name, CONCAT(Size, 'KB')
FROM Files 
	WHERE Id IN (6, 12, 17, 18, 19, 23, 29, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 48, 49, 50)
ORDER BY Id, Name, Size DESC


