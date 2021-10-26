SELECT customer.ContactName AS `Nome de contato`,
shipper.ShipperName AS `Empresa que fez o envio`,
orders.OrderDate AS `Data do pedido`
FROM w3schools.customers AS customer
INNER JOIN w3schools.orders AS orders ON customer.CustomerID = orders.CustomerID
INNER JOIN w3schools.shippers AS shipper ON orders.ShipperID = shipper.ShipperID
WHERE shipper.ShipperName = 'United Package' OR shipper.ShipperName = 'Speedy Express'
ORDER BY `Nome de contato`, `Empresa que fez o envio`, `Data do pedido`;
