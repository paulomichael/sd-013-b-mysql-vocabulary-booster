SELECT t2.ProductName AS "Produto", MIN(t1.Quantity) AS Mínima, MAX(t1.Quantity) AS Máxima, ROUND(AVG(t1.Quantity),2) AS 'Média' from order_details AS t1
INNER JOIN products AS t2
WHERE t1.ProductID = t2.ProductID
GROUP BY t1.ProductID
HAVING AVG(Quantity) > 20
ORDER BY AVG(t1.Quantity), t2.ProductName;
