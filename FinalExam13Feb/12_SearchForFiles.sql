CREATE PROC usp_SearchForFiles(@fileExtension NVARCHAR(MAX))
AS
BEGIN
	SELECT 
		Id,
		Name, 
		CONCAT(Size, 'KB')
	FROM Files
		WHERE Name LIKE '%' + @fileExtension
	ORDER BY Id, Name, Size
END

EXEC usp_SearchForFiles 'txt'