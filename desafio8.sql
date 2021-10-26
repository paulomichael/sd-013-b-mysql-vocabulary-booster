SELECT 
    cu.ContactName AS 'Nome de contato',
    s.ShipperName AS 'Empresa que fez o envio',
    o.OrderDate AS 'Data do pedido'
FROM
    w3schools.customers AS cu
        INNER JOIN
    w3schools.orders AS o ON cu.CustomerID = o.CustomerID
        INNER JOIN
    w3schools.shippers AS s ON o.ShipperID = s.ShipperID
WHERE
    ShipperName IN ('Speedy Express' , 'United Package')
ORDER BY 1 , 2 , 3;
