SELECT 
ProdutoNome.ProductName AS `Produto`,
MIN(QuantOrd.Quantity) AS `Mínima`,
MAX(QuantOrd.Quantity) AS `Máxima`,
ROUND(AVG(QuantOrd.Quantity), 2) AS `Média`
FROM w3schools.products AS ProdutoNome
INNER JOIN
w3schools.order_details AS QuantOrd ON QuantOrd.ProductID = ProdutoNome.ProductID
GROUP BY `Produto`
HAVING `Média` > 20
ORDER BY `Média`, `Produto`;
