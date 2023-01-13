-- Trigger to update email

DROP TRIGGER IF EXISTS verfiy_email;
DELIMITER $$
CREATE TRIGGER verfiy_email
BEFORE INSERT ON users
FOR EACH ROW
BEGIN
    IF OLD.email != NEW.email THEN
        SET NEW.valid_email = 0;
    ELSE
        SET NEW.valid_email = NEW.valid_email;
    END IF;
END $$
DELIMITER ;
