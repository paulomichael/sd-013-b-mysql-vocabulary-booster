SELECT
CONCAT(E.FirstName, ' ', E.LastName) AS 'Nome completo',
COUNT(*) AS 'Total de pedidos'
FROM w3schools.orders O
JOIN w3schools.employees E ON E.EmployeeID = O.EmployeeID
GROUP BY O.EmployeeID
ORDER BY `Total de pedidos`;
