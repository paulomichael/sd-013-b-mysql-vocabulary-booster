use w3schools;

SELECT 
prods.ProductName AS 'Produto',
MIN(ods.Quantity) AS 'Mínima',
MAX(ods.Quantity) AS 'Máxima',
ROUND(AVG(ods.Quantity), 2) AS 'Média'
FROM
products prods
INNER JOIN
order_details ods ON prods.ProductID = ods.ProductID   
GROUP BY prods.ProductName
HAVING ROUND(AVG(ods.Quantity), 2) > 20
ORDER BY `Média` , `Produto`;

