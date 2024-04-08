DROP PROCEDURE IF EXISTS numbers;
DELIMITER $$
CREATE PROCEDURE numbers(num INT)
BEGIN
	SET @step := 2;
    SET @previous := 0;
    SET @cnt := 2;
    SET @result := '';
    WHILE @cnt <= num DO
        SET @previous = @previous + @step;
        SET @result = CONCAT(@result, ' ', @previous);
        SET @cnt = @cnt + @step;
    END WHILE;
    SELECT @result;
END $$
DELIMITER ;

CALL numbers(50);
