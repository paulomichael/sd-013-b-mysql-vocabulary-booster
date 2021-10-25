SELECT 
    p.ProductName AS `Produto`,
    MIN(od.Quantity) AS 'Mínima',
    MAX(od.quantity) AS 'Máxima',
    ROUND(AVG(od.Quantity), 2) AS Média
FROM
    w3schools.products AS p
        JOIN
    w3schools.order_details AS od ON od.ProductID = p.ProductID
GROUP BY od.ProductID
ORDER BY Média , Produto
LIMIT 100 OFFSET 29;
