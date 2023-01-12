-- This script creates a trigger that decreases the quantity of an item after adding a new order
-- It uses delimiters to separate the trigger logic from the rest of the script

DROP TRIGGER IF EXISTS decrease_quantity;
DELIMITER $$
CREATE TRIGGER decrease_quantity
AFTER INSERT ON orders
FOR EACH ROW
BEGIN
    UPDATE items
        SET quantity = quantity - NEW.number
        WHERE id = NEW.item_id;
END$$
DELIMITER ;
