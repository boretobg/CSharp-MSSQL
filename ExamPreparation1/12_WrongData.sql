CREATE PROC usp_CancelFlights
AS
    BEGIN
        UPDATE Flights
        SET ArrivalTime = NULL,
            DepartureTime = NULL
        WHERE ArrivalTime >= DepartureTime
    END

	/*CREATE PROC usp_CancelFlights
AS
BEGIN
DECLARE @Count INT = (SELECT COUNT(Id) FROM Flights)
	
WHILE (@Count != 0)
	BEGIN
		DECLARE @arrivalTime DATETIME = (SELECT ArrivalTime FROM Flights WHERE Id = @Count)
		DECLARE @departureTime DATETIME = (SELECT DepartureTime FROM Flights WHERE Id = @Count)

		IF (@arrivalTime < @departureTime)
			BEGIN
				UPDATE Flights
					SET ArrivalTime = NULL,
						DepartureTime = NULL
				WHERE Id = @Count
			END
		SET @Count -= 1
	END
END*/