DROP FUNCTION IF EXISTS DivideNumbers;
DELIMITER //
CREATE FUNCTION DivideNumbers(numerator FLOAT, denominator FLOAT)
RETURNS FLOAT 
READS SQL DATA
BEGIN
    DECLARE result FLOAT;
    SET result = numerator / denominator;
    RETURN result;
END //
DELIMITER ;

SELECT 
	order_id, quantity, DivideNumbers(quantity, ROUND((RAND() + 0.1) * 10, 2)) AS stupid_metric
FROM 
	order_details
ORDER BY
	stupid_metric DESC;
