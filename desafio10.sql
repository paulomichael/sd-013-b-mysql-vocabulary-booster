SELECT
PRO.ProductName `Produto`,
MIN(ORD.Quantity) `Mínima`,
MAX(ORD.Quantity) `Máxima`,
ROUND(AVG(ORD.Quantity), 2) `Média`
FROM products PRO
INNER JOIN order_details ORD
ON PRO.ProductID = ORD.ProductID
GROUP BY PRO.ProductID
HAVING ROUND(AVG(ORD.Quantity), 2) > 20
ORDER BY `Média`, `Produto`;  
