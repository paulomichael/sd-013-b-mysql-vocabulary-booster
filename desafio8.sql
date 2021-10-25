SELECT cust.`ContactName` AS `Nome de contato`,
ship.`ShipperName` AS `Empresa que fez o envio`, 
o.`OrderDate` AS `Data do pedido`
FROM w3schools.customers AS cust
JOIN w3schools.shippers AS ship
JOIN w3schools.orders AS o
ON cust.`CustomerID` = o.`CustomerID` AND ship.`ShipperID` = o.`ShipperID`;