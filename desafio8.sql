use w3schools;

SELECT 
custs.ContactName AS 'Nome de Contato',
ships.ShipperName AS 'Empresa que fez o envio',
ords.OrderDate AS 'Data do pedido'
FROM
customers custs
INNER JOIN
orders ords ON custs.CustomerID = ords.CustomerID
INNER JOIN
shippers ships ON ords.ShipperID = ships.ShipperID
WHERE
ships.ShipperName IN ('Speedy Express' , 'United Package')
ORDER BY `Nome de Contato` , `Empresa que fez o envio` , `Data do pedido`;
