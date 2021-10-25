SELECT
C.contactName AS `Nome de contato`,
    S.shipperName AS 'Empresa que fez o envio',
    O.orderDate AS 'Data do pedido'
FROM w3schools.customers AS C
INNER JOIN w3schools.orders AS O ON customer.customerId = O.customerId
INNER JOIN w3schools.shippers AS S ON S.shipperId = O.shipperId
WHERE S.shipperName IN ('Speedy Express', 'United Package')
ORDER BY `Nome de contato` ASC, 'Empresa que fez o envio' ASC, 'Data do pedido' ASC;
