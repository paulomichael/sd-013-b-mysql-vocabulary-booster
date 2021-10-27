SELECT
  CUSTOMERS.ContactName AS `Nome de Contato`,
  SHIPPERS.ShipperName AS `Empresa que fez o envio`,
  ORDERS.OrderDate AS `Data do pedido`
FROM
  w3schools.orders AS ORDERS
  INNER JOIN w3schools.customers AS CUSTOMERS ON ORDERS.CustomerID = CUSTOMERS.CustomerID
  INNER JOIN w3schools.shippers AS SHIPPERS ON ORDERS.ShipperID = SHIPPERS.ShipperID
WHERE
  SHIPPERS.ShipperName IN ('Speedy Express', 'United Package')
ORDER BY
  `Nome de Contato`,
  `Empresa que fez o envio`,
  `Data do pedido`;
