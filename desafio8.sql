SELECT
  C.ContactName AS `Nome de contato`,
  SH.ShipperName AS `Empresa que fez o envio`,
  O.OrderDate AS `Data do pedido`
FROM w3schools.orders AS O
INNER JOIN w3schools.customers AS C ON O.CustomerID = C.CustomerID
INNER JOIN w3schools.shippers AS SH ON O.ShipperID = SH.ShipperID
ORDER BY `Nome de contato`, `Empresa que fez o envio`, `Data do pedido`;
