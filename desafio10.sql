SELECT ProductName AS `Produto`,
MIN(od.quantity) AS `Mínima`,
MAX(od.quantity) AS `Máxima`,
ROUND(AVG(quantity), 2) AS `Média`
FROM w3schools.products AS p
INNER JOIN w3schools.order_details AS od ON p.ProductID = od.ProductID
GROUP BY `Produto`
HAVING `Média` > 20.00
ORDER BY `Média`, `Produto`;
