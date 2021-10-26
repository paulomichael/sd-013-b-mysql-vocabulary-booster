SELECT p.ProductName AS `Produto`,
prod_Det.MINQuantity AS `Mínima`,
prod_Det.MAXQuantity AS `Máxima`,
ROUND(prod_Det.AVGQuantity, 2) AS `Média`
FROM(SELECT ProductID,
AVG(Quantity) AS AVGQuantity,
MIN(Quantity) AS MINQuantity,
MAX(Quantity) AS MAXQuantity
FROM w3schools.order_details
GROUP BY ProductID
HAVING AVGQuantity > 20) AS prod_Det
JOIN w3schools.products AS p
ON p.ProductID = prod_Det.ProductID
ORDER BY prod_Det.AVGQuantity, p.ProductName;
