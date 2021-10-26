SELECT CONCAT(FirstName, ' ', LastName) AS 'Nome completo', COUNT(O.OrderID) AS 'Total de pedidos'
FROM w3schools.employees as E
INNER JOIN w3schools.orders AS O
ON E.EmployeeID = O.EmployeeID
GROUP BY `Nome completo`
ORDER BY `Total de pedidos`;
