SELECT p.ProductName AS `Produto`,
MIN(o_d.Quantity) AS `Mínima`,
MAX(o_d.Quantity) AS `Máxima`,
ROUND(AVG(o_d.Quantity), 2) AS `Média`
FROM order_details as o_d
JOIN products as p
ON p.ProductID = o_d.ProductID
GROUP BY p.ProductName
HAVING `Média` > 20
ORDER BY `Média`, `Produto`;
