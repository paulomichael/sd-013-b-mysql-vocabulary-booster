SELECT
  PRODUCTS.ProductName AS `Produto`,
  MIN(ORDER_D.Quantity) AS `Mínima`,
  MAX(ORDER_D.Quantity) AS `Máxima`,
  ROUND(AVG(ORDER_D.Quantity), 2) AS `Média`
FROM
  w3schools.products AS PRODUCTS
  INNER JOIN w3schools.order_details AS ORDER_D ON ORDER_D.ProductID = PRODUCTS.ProductID
GROUP BY
  `Produto`
HAVING
  `Média` > 20
ORDER BY
  `Média`,
  `Produto`;
