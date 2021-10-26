SELECT c.ContactName AS `Nome de contato`,
s.ShipperName AS `Empresa que fez o envio`,
o.OrderDate AS `Data do pedido`
FROM w3schools.orders AS o
JOIN w3schools.customers AS c
ON c.CustomerID = o.CustomerID
JOIN w3schools.shippers AS s
ON s.ShipperID = o.ShipperID
WHERE s.ShipperName IN('Speedy Express', 'United Package')
ORDER BY c.ContactName, s.ShipperName, o.OrderDate;
