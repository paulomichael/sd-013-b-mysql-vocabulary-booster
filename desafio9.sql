SELECT CONCAT(e.firstName, ' ', e.LastName) 
AS `Nome completo`,
COUNT(o.EmployeeID) AS `Total de pedidos`
FROM w3schools.orders AS o
JOIN w3schools.employees AS e
ON e.EmployeeID = o.EmployeeID
GROUP BY `Nome completo`
ORDER BY `Total de pedidos`;
