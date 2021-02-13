CREATE FUNCTION udf_AllUserCommits(@username NVARCHAR(MAX))
RETURNS INT
AS 
BEGIN
	DECLARE @Count INT = (SELECT COUNT(*) 
							FROM Commits c
								JOIN Users u ON u.Id = c.ContributorId
							WHERE u.Username = @username)
	RETURN @Count
END
