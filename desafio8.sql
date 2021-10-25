SELECT 
    customers.ContactName AS 'Nome de contato',
    shippers.ShipperName AS 'Empresa que fez o envio',
    orders.OrderDate AS 'Data do pedido'
FROM
    w3schools.customers AS customers
        INNER JOIN
    w3schools.orders AS orders ON orders.CustomerID = customers.CustomerID
        INNER JOIN
    w3schools.shippers AS shippers ON shippers.ShipperID = orders.ShipperID
WHERE
    shippers.ShipperName = 'Speedy Express'
        OR shippers.ShipperName = 'United Package'
ORDER BY `Nome de contato` ASC , `Empresa que fez o envio` ASC , `Data do pedido` ASC;
