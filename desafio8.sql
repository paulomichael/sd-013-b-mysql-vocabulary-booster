SELECT
customer.contactname AS `Nome de contato`,
shipper.shipperName AS 'Empresa que fez o envio',
orders.orderDate AS 'Data do pedido'
FROM w3schools.customers AS customer
INNER JOIN w3schools.orders AS orders ON customer.customerId = orders.customerId
INNER JOIN w3schools.shippers AS shipper ON shipper.shipperId = orders.shipperId
WHERE shipper.shipperId IN (1, 2)
ORDER BY `Nome de contato` ASC, `Empresa que fez o envio` ASC, `Data do pedido` ASC;
