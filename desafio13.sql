SELECT 
  Prod.ProductName AS `Produto`,
  Prod.Price AS `Preço`
FROM 
  w3schools.products AS Prod
  INNER JOIN w3schools.order_details AS OD ON OD.ProductId = Prod.ProductID
  WHERE OD.Quantity > 80
ORDER BY
  `Produto`;
