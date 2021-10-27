SELECT P.ProductName AS  `Produto`,
MIN(Od.Quantity) AS `Mínima`,
MAX(Od.Quantity) AS `Máxima`,
ROUND(AVG(Od.Quantity), 2) AS `Média`
FROM w3schools.products AS P
JOIN w3schools.order_details AS  Od ON  P.ProductID = Od.ProductID
GROUP BY `Produto`
HAVING `Média` > 20
ORDER BY `Média`, `Produto`;
