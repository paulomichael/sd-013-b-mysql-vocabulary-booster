use w3schools;

DELIMITER $$

CREATE TRIGGER add_current_date
BEFORE INSERT ON orders
FOR EACH ROW
BEGIN
SET NEW.OrderDate = CURRENT_DATE();
END $$;

DELIMITER ;
