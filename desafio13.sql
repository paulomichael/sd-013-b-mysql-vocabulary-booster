use w3schools;

SELECT 
prds.ProductName AS 'Produto', Price AS 'Preço'
FROM
products prds
INNER JOIN order_details ods
ON prds.Product_ID = ods.Product_ID
WHERE
ods.Quantity > 80
ORDER BY `Produto` ASC;
