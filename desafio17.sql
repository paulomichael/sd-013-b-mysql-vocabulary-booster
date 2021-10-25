DELIMITER $$

CREATE TRIGGER inserido_data_automático
BEFORE INSERT ON w3schools.orders
FOR EACH ROW
BEGIN
SET NEW.orderDate = DATE(NOW());
END $$

DELIMITER ;
