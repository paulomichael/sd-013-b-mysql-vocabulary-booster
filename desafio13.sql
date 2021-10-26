SELECT 
    product.ProductName AS 'Produto', product.Price AS 'Preço'
FROM
    w3schools.products AS product
        INNER JOIN
    w3schools.order_details AS orders ON product.ProductID = orders.ProductID
WHERE
    orders.Quantity > 80
ORDER BY product.ProductName ASC;
