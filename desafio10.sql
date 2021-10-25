SELECT p.ProductName AS `Produto`,
MIN(od.Quantity) AS `Mínima`,
MAX(od.Quantity) AS `Máxima`,
ROUND(AVG(od.Quantity), 2) AS `Média`
FROM w3schools.order_details AS od
JOIN w3schools.products AS p ON od.ProductID = p.ProductId
GROUP BY `Produto`
HAVING Média > 20
#https://docs.microsoft.com/pt-br/sql/t-sql/queries/select-having-transact-sql?view=sql-server-ver15
ORDER BY `Média`, `Produto`;
