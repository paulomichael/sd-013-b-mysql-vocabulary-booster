SELECT 
c.ContactName AS `Nome de contato`,
s.ShipperName AS `Empresa que fez o envio`,
o.OrderDate AS `Data do pedido`
FROM 
    w3schools.customers c 
        INNER JOIN 
    w3schools.orders o ON o.CustomerId = c.CustomerId
        INNER JOIN
    w3schools.shippers s ON s.ShipperId = o.ShipperId
WHERE s.ShipperId <> 3
ORDER BY `Nome de contato`, `Empresa que fez o envio`, `Data do pedido`;
