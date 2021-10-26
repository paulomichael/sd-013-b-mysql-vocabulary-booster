SELECT CONCAT(e.FirstName, ' ', e.LastName) AS `Nome completo`,
o.pedidos AS `Total de pedidos`
FROM (SELECT EmployeeID, COUNT(*) AS pedidos
FROM w3schools.orders
GROUP BY EmployeeID) AS o
JOIN w3schools.employees AS e
ON e.EmployeeID = o.EmployeeID
ORDER BY o.pedidos;
