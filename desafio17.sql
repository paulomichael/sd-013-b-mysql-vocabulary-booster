USE w3schools;

DELIMITER $$
CREATE TRIGGER insere_data_atual_em_OrderDate
    BEFORE INSERT ON orders
    FOR EACH ROW
BEGIN
    SET NEW.CustomerID = 4,
        NEW.EmployeeID = 2,
        NEW.ShipperID = 2,
        NEW.OrderDate = CURRENT_DATE();
END $$
DELIMITER ;
