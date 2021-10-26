USE w3schools;
DELIMITER $$
CREATE TRIGGER trigger_order_insert
AFTER INSERT ON orders
FOR EACH ROW
BEGIN
UPDATE orders
SET OrderDate = current_date()
WHERE OrderDate IS NULL;
END $$
DELIMITER ;
