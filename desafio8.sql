SELECT 
  Cus.ContactName AS `Nome de contato`,
  Shi.ShipperName AS `Empresa que fez o envio`,
  Ord.OrderDate AS `Data do pedido`
FROM 
  w3schools.customers AS Cus
  INNER JOIN w3schools.orders AS Ord ON Ord.CustomerID = Cus.CustomerID
  INNER JOIN w3schools.shippers AS Shi ON Shi.ShipperName IN('Speedy Express', 'United Package') AND Shi.ShipperID = Ord.ShipperID 
  ORDER BY 
  `Nome de contato` ,
  `Empresa que fez o envio` ,
  `Data do pedido` ;
