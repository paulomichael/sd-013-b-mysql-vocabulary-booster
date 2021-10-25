SELECT 
prds.ProductName AS 'Produto', Price AS 'Preço'
FROM
w3schools.products prds
INNER JOIN w3schools.order_details ods
ON prds.Product_ID = ods.Product_ID
WHERE
ods.Quantity > 80
ORDER BY `Produto` ASC;

