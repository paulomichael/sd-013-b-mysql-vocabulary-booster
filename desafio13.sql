SELECT
pr.ProductName as "Produto",
pr.Price as "Preço"
FROM w3schools.products as pr
INNER JOIN w3schools.order_details as od
ON od.ProductID = pr.ProductID
WHERE od.Quantity > 80
ORDER BY pr.ProductName ASC;
