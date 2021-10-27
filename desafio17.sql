DELIMITER $$
CREATE TRIGGER adiciona_data
BEFORE INSERT ON orders
FOR EACH ROW
BEGIN
SET NEW.OrderDate = CURRENT_DATE();
END $$
DELIMITER ;
