SELECT t1.*, t2.*, t3.* FROM orders AS t1
INNER JOIN customers AS t2
ON t1.CustomerID = t2.CustomerID
INNER JOIN shippers AS t3
ON t1.ShipperID = t3.ShipperID
WHERE ShipperName IN ("Speedy Express", "United Package")
ORDER BY t2.ContactName, t3.ShipperName, t1.OrderDate;
