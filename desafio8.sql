SELECT 
custs.ContactName AS 'Nome de contato',
ships.ShipperName AS 'Empresa que fez o envio',
ords.OrderDate AS 'Data do pedido'
FROM
w3schools.customers custs
INNER JOIN
w3schools.orders ords ON custs.CustomerID = ords.CustomerID
INNER JOIN
w3schools.shippers ships ON ords.ShipperID = ships.ShipperID
WHERE
ships.ShipperID IN (1 , 2)
ORDER BY `Nome de contato` ASC, `Empresa que fez o envio` ASC, `Data do pedido` ASC;
