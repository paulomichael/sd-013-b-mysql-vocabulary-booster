USE w3schools;

DELIMITER $$
CREATE TRIGGER update_orders
	BEFORE INSERT ON orders
    FOR EACH ROW
BEGIN
	SET NEW.OrderDate = Date(NOW());
END $$

DELIMITER ;
