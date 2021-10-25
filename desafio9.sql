SELECT 
CONCAT(empls.FirstName, ' ', empls.LastName) AS 'Nome completo',
COUNT(ords.OrderID) AS 'Total de pedidos'
FROM w3schools.employees empls
INNER JOIN w3schools.orders ords
ON empls.EmployeeID = ords.EmployeeID
GROUP BY `Nome Completo`
ORDER BY `Total de pedidos` ASC;
