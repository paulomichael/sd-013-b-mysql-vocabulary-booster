SELECT 
  P.ProductName AS `Produto`,
  P.Price AS `Preço`
FROM 
  w3schools.products AS P
  INNER JOIN w3schools.order_details AS OD ON OD.ProductId = P.ProductID
  WHERE OD.Quantity > 80
ORDER BY
  `Produto`;
