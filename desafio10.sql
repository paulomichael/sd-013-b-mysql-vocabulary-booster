SELECT 
prods.ProductName AS 'Produto',
MIN(ods.Quantity) AS 'Mínima',
MAX(ods.Quantity) AS 'Máxima',
ROUND(AVG(ods.Quantity), 2) AS 'Média'
FROM
w3schools.products prods
INNER JOIN
w3schools.order_details ods ON prods.ProductID = ods.ProductID   
GROUP BY ods.ProductID
HAVING `Média` > 20
ORDER BY `Média` ASC, `Produto` ASC;
