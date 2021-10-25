SELECT 
  C.ContactName AS `Nome de contato`,
  S.ShipperName AS `Empresa que fez o envio`,
  O.OrderDate AS `Data do pedido`
FROM 
  w3schools.customers AS C
  INNER JOIN w3schools.orders AS O ON O.CustomerID = C.CustomerID
  INNER JOIN w3schools.shippers AS S ON S.ShipperName IN('Speedy Express', 'United Package') AND S.ShipperID = O.ShipperID
ORDER BY 
  `Nome de contato` ASC,
  `Empresa que fez o envio` ASC,
  `Data do pedido` ASC;
