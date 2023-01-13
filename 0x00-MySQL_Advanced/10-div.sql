-- a function SafeDiv that returns the divison of two numbers

DROP FUNCTION IF EXISTS SafeDiv;
DELIMITER $$

CREATE FUNCTION SafeDiv(a INT, b INT)
RETURN FLOAT DETERMINISTIC
BEGIN
    DECLARE ans FLOAT DEFAULT 0;

    IF b != 0 THEN
        SET ans = a / b;
    END IF;
    RETURN ans;
END $$
DELIMITER ;
