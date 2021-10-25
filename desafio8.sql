SELECT ContactName AS 'Nome de contato',
    s.ShipperName AS 'Empresa que fez o envio',
    o.OrderDate AS 'Data do pedido'
FROM w3schools.customers cus
    INNER JOIN w3schools.orders o
    INNER JOIN w3schools.shippers s
    ON o.CustomerID = cus.CustomerID AND o.ShipperID = s.ShipperID
WHERE s.ShipperID IN (1, 2)
ORDER BY cus.ContactName,
    s.ShipperName,
    o.OrderDate;
