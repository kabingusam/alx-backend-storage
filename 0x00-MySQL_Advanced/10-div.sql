-- a function SafeDiv that returns the divison of two numbers

CREATE FUNCTION SafeDiv(a INT, b INT)
RETURN INT
BEGIN 
    IF b = 0 THEN
        RETURN 0;
    ELSE
        RETURN a / b;
    END IF;
END;
