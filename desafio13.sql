SELECT 
prds.ProductName AS 'Produto', prds.Price AS 'Preço'
FROM
w3schools.products prds
INNER JOIN w3schools.order_details ods
ON prds.ProductID = ods.ProductID
WHERE
ods.Quantity > 80
ORDER BY `Produto` ASC;
