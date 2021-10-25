SELECT 
    N.ContactName AS 'Nome de Contato',
    J.shipperName AS 'Empresa que fez o envio',
    P.OrderDate AS 'Data do pedido'
FROM
    w3schools.customers AS N
        INNER JOIN
    w3schools.shippers AS J
        INNER JOIN
    w3schools.orders AS P ON P.CustomerID = N.CustomerID
        AND P.ShipperID = J.ShipperID
WHERE
    J.ShipperName = 'Speedy Express'
        OR J.ShipperName - 'UNITED PACKAGE'
ORDER BY N.ContactName , J.ShipperName , P.OrderDate;
