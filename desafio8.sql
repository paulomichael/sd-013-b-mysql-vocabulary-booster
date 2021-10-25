SELECT c.ContactName AS `Nome de contato`,
sh.ShipperName AS `Empresa que fez o envio`,
o.OrderDate AS `Data do pedido`
FROM w3schools.orders AS o
JOIN w3schools.customers As c ON c.CustomerID = o.CustomerID
JOIN w3schools.shippers As sh On sh.ShipperID = o.ShipperID
WHERE sh.ShipperName IN ('Speedy Express', 'United Package')
ORDER BY `Nome de contato`, `Empresa que fez o envio`, `Data do pedido`;
