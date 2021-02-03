
--11. Future Value Function
--Your task is to create a function ufn_CalculateFutureValue that accepts as parameters – sum (decimal), yearly interest rate (float) and number of years(int). It should calculate and return the future value of the initial sum rounded to the fourth digit after the decimal delimiter. Using the following formula:
--FV=I×((1+R)^T)
	--I – Initial sum
	--R – Yearly interest rate
	--T – Number of years

CREATE FUNCTION ufn_CalculateFutureValue(@Sum DECIMAL(15, 2), @YearlyRate FLOAT, @Years INT)
RETURNS DECIMAL(15, 4)
AS
BEGIN
	RETURN @Sum * POWER((1 + @YearlyRate), @Years) 
END
