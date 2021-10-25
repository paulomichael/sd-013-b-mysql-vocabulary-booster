use w3schools;

SELECT 
CONCAT(empls.FirstName, ' ', empls.LastName) AS 'Nome completo',
COUNT(ords.OrderID) AS 'Total de pedidos'
FROM employees empls
INNER JOIN orders ords
ON empls.EmployeeID = ords.EmployeeID
GROUP BY `Nome Completo`
ORDER BY `Total de pedidos` ASC;
