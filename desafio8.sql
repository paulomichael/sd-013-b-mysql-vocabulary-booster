SELECT c.ContactName AS 'Nome de contato',
sh.ShipperName AS 'Empresa que fez o envio',
o.OrderDate AS 'Data do pedido'
FROM 
orders AS o INNER JOIN customers AS c 
ON o.CustomerID = c.CustomerID
INNER JOIN shippers as sh ON o.ShipperID = sh.ShipperID
WHERE sh.ShipperName IN ('Speedy Express', 'United Package')
ORDER BY `Nome de contato`, sh.ShipperName, `Data do pedido`;
