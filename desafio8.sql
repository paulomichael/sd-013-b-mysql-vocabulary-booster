SELECT
    cus.ContactName AS `Nome de contato`,
    ship.ShipperName AS `Empresa que fez o envio`,
    orders.OrderDate AS `Data do pedido`
FROM
    w3schools.orders AS orders
        INNER JOIN
    w3schools.customers AS cus ON orders.CustomerID = cus.CustomerID
        INNER JOIN
    w3schools.shippers AS ship ON orders.ShipperID = ship.ShipperID
WHERE
    ship.ShipperName IN ('Speedy Express' , 'United Package')
ORDER BY `Nome de contato`, `Empresa que fez o envio`, `Data do pedido`;
