SELECT t2.ProductName AS 'Produto', t2.Price AS 'Preço' FROM order_details AS t1
INNER JOIN products AS t2
ON t2.ProductID = t1.ProductID
WHERE t1.Quantity > 80
ORDER BY t2.ProductName;
