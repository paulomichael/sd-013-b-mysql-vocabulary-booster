SELECT
	*
FROM (
	SELECT
		pr.ProductName as "Produto",
		MIN(od.Quantity) as "Mínima",
		MAX(od.Quantity) as "Máxima",
		AVG(od.Quantity) as "Média"
	FROM w3schools.products as pr
	INNER JOIN w3schools.order_details as od
		ON od.ProductID = pr.ProductID
	GROUP BY pr.ProductName
) as tb
WHERE tb.Média > 20
ORDER BY
	tb.Média ASC, tb.Produto ASC;