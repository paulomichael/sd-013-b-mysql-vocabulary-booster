SELECT product.ProductName AS 'Produto',
product.Price AS 'Preço'
FROM w3schools.products AS product
INNER JOIN w3schools.order_details as `order`
ON product.ProductID = `order`.ProductID
WHERE
`order`.Quantity > 80
ORDER BY `Produto`;
