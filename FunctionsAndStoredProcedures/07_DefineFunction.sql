
--7.	Define Function
--Define a function ufn_IsWordComprised(@setOfLetters, @word) that returns true or false depending on that if the word is a comprised of the given set of letters. 

CREATE FUNCTION ufn_IsWordComprised(@setOfLetters varchar(max), @word varchar(max))
    RETURNS bit AS
BEGIN
    DECLARE @WordLength int=LEN(@word);
    DECLARE @Index int=1;

    WHILE (@Index <= @WordLength)
        BEGIN
            IF (CHARINDEX(SUBSTRING(@word, @Index, 1), @setOfLetters)=0)
                BEGIN
                    RETURN 0
                END

            SET @Index+=1
        END
    RETURN 1
END
