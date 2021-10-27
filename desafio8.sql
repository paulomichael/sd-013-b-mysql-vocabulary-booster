SELECT
  CUSTOMERS.ContactName AS `Nome de contato`,
  SHIPPERS.ShipperName AS `Empresa que fez o envio`,
  ORDERS.OrderDate AS `Data do pedido`
FROM
  w3schools.orders AS ORDERS
  INNER JOIN w3schools.customers AS CUSTOMERS ON CUSTOMERS.CustomerID = ORDERS.CustomerID
  INNER JOIN w3schools.shippers AS SHIPPERS ON SHIPPERS.ShipperID = ORDERS.ShipperID
WHERE
  SHIPPERS.ShipperName IN ('Speedy Express', 'United Package')
ORDER BY
  `Nome de Contato`,
  `Empresa que fez o envio`,
  `Data do pedido`;
