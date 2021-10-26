DELIMITER $$ 
CREATE TRIGGER trigger_inserir_data
	BEFORE INSERT ON w3schools.orders
    FOR EACH ROW
BEGIN
	SET NEW.OrderDate = DATE(NOW());
END $$
DELIMITER ;
