SELECT 
    t1.ContactName AS 'Nome de contato',
    t2.ShipperName AS 'Empresa que fez o envio',
    t3.OrderDate AS 'Data do pedido'
FROM
    w3schools.customers AS t1
        INNER JOIN
    w3schools.shippers AS t2
        INNER JOIN
    w3schools.orders AS t3 ON t3.CustomerID = t1.CustomerID
        AND t3.ShipperID = t2.ShipperID
WHERE
    t2.ShipperName = 'Speedy Express'
        OR t2.ShipperName = 'United Package'
ORDER BY t1.ContactName , t2.ShipperName , t3.OrderDate;
