SELECT 
    cus.CustomerName AS 'Nome de contato',
    shi.ShipperName AS 'Empresa que fez o envio',
    ord.OrderDate AS 'Data do pedido'
FROM
    w3schools.customers AS cus
        INNER JOIN
    w3schools.orders AS ord ON cus.CustomerID = ord.CustomerID
        INNER JOIN
    w3schools.shippers AS shi ON shi.ShipperID = ord.ShipperID
WHERE
    ShipperName = 'Speedy Express'
        OR ShipperName = 'United Package';
        