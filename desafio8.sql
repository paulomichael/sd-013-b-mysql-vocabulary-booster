SELECT ContactName AS `Nome de contato`,
ShipperName AS `Empresa que fez o envio`,
OrderDate AS `Data do pedido`
FROM w3schools.order_details AS order_details
INNER JOIN w3schools.orders AS orders ON orders.OrderID = order_details.OrderID
INNER JOIN w3schools.shippers AS shippers ON shippers.ShipperID = orders.ShipperID
INNER JOIN w3schools.customers AS customers ON customers.CustomerID = orders.CustomerID
WHERE ShipperName = 'United Package' OR ShipperName = 'Speedy Express'
ORDER BY `Nome de contato` ASC, `Empresa que fez o envio` ASC, `Data do envio` ASC;
