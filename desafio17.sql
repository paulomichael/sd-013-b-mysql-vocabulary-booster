USE w3schools;
DELIMITER $$

CREATE TRIGGER insertOrderDate
AFTER INSERT ON orders
FOR EACH ROW
BEGIN
  SET NEW.orderDate = NOW();
END $$
DELIMITER ;
