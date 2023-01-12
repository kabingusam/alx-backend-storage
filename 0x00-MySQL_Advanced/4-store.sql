-- This script creates a trigger that decreases the quantity of an item after adding a new order
-- It uses delimiters to separate the trigger logic from the rest of the script

DROP TRIGGER IF EXISTS reduce_quantity;
DELIMITER $$
CREATE TRIGGER reduce_quantity
AFTER INSERT ON orders
FOR EACH ROW
BEGIN
    UPDATE items
        SET quantity = quantity - NEW.number
        WHERE name = NEW.item_name;
END $$
DELIMITER ;
