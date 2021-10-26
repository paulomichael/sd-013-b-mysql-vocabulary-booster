SELECT p1.ProductName AS 'Produto',
    p1.Price AS 'Preço'
FROM w3schools.products AS p1
INNER JOIN w3schools.order_details AS od
ON p1.ProductID = od.ProductID
WHERE od.Quantity > 80
ORDER BY `Produto`;
