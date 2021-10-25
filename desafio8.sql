
SELECT 
    c.ContactName AS 'Nome de contato',
    s.ShipperName AS 'Empresa que fez o envio',
    o.OrderDate AS 'Data do pedido'
FROM
    w3schools.customers AS c
        JOIN
    w3schools.orders AS o
        JOIN
    w3schools.shippers AS s ON c.CustomerID = o.CustomerID
        AND o.ShipperID = s.ShipperID
WHERE
    s.ShipperName IN ('Speedy Express' , 'United Package')
ORDER BY `Nome de contato` , `Empresa que fez o envio` , `Data do pedido` DESC;
