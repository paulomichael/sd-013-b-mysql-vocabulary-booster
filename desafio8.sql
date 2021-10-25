SELECT
C.ContactName AS 'Nome de contato',
S.ShipperName AS 'Empresa que fez o envio',
O.OrderDate AS 'Data do pedido'
FROM w3schools.orders O
JOIN w3schools.customers C ON O.CustomerID = C.CustomerID
JOIN w3schools.shippers S ON O.ShipperID = S.ShipperID
WHERE S.ShipperName IN ('Speedy Express', 'United Package')
ORDER BY `Nome de contato`, `Empresa que fez o envio`, `Data do pedido`;
