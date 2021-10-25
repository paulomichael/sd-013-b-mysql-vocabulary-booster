SELECT 
  Prod.ProductName AS `Produto`,
  MAX(Ord.Quantity) AS `Máxima`,
  ROUND(AVG(Ord.Quantity), 2) AS `Média`,
  MIN(Ord.Quantity) AS `Mínima`
FROM 
  w3schools.products AS Prod
  INNER JOIN w3schools.order_details AS Ord ON Ord.ProductID = Prod.ProductID
GROUP BY
  `Produto`
HAVING 
  `Média` > 20
ORDER BY
  `Média` ,
  `Produto` ;