DROP FUNCTION dt_time;
DELIMITER $$
CREATE FUNCTION dt_time(num INT)
RETURNS VARCHAR(50)
READS SQL DATA
BEGIN
    SET @data_day := num DIV 86400;
    SET @data_hour := (num MOD 86400) DIV 3600;
    SET @data_minute := ((num MOD 86400) MOD 3600) DIV 60;
    SET @data_second := ((num MOD 86400) MOD 3600) MOD 60;
    SET @result := CONCAT(@data_day, ' days ', 
						  @data_hour, ' hours ', 
                          @data_minute, ' minutes ', 
                          @data_second, ' seconds');
	RETURN @result;
    
END$$
DELIMITER ;

SELECT dt_time(123456);