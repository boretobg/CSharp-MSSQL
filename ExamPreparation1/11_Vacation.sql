CREATE FUNCTION udf_CalculateTickets(@origin VARCHAR(50), @destination VARCHAR(50), @peopleCount INT)
RETURNS NVARCHAR(MAX) AS
	BEGIN
		IF @peopleCount <= 0
			RETURN 'Invalid people count!'
		
		IF ((SELECT Origin FROM Flights WHERE Origin = @origin) IS NULL) OR ((SELECT Destination FROM Flights WHERE Destination = @destination) IS NULL)
			RETURN 'Invalid flight!'

		DECLARE @flightId INT = (SELECT Id FROM Flights WHERE Origin = @origin AND Destination = @destination)
		DECLARE @price DECIMAL(15, 2) = (SELECT Price FROM Tickets WHERE FlightId = @flightId) * @peopleCount

		RETURN 'Total price ' + CAST(@price AS NVARCHAR)
	END