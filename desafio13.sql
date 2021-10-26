SELECT
PRO.ProductName `Produto`,
PRO.Price `Preço`
FROM products PRO
INNER JOIN order_details ORD
ON PRO.ProductID = ORD.ProductID
WHERE ORD.Quantity > 80
ORDER BY `Produto`;

