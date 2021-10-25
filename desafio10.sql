SELECT 
    prd.ProductName AS Produto,
    MIN(ordt.Quantity) AS Mínima,
    MAX(ordt.Quantity) AS Máxima,
    ROUND(AVG(ordt.Quantity), 2) AS Média
FROM
    w3schools.order_details AS ordt
        INNER JOIN
    w3schools.products AS prd ON ordt.ProductID = prd.ProductID
GROUP BY Produto
HAVING Média > 20
ORDER BY Média , Produto;
