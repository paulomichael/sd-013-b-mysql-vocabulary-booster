SELECT
CONCAT(EM.FirstName, ' ', EM.LastName) `Nome completo`,
COUNT(ORD.EmployeeID) `Total de pedidos`
FROM employees EM
INNER JOIN orders ORD
ON ORD.EmployeeID = EM.EmployeeID
GROUP BY ORD.EmployeeID
ORDER BY `Total de pedidos`; 
