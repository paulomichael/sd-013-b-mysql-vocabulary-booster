SELECT CONCAT(FirstName, ' ', Lastname) AS 'Nome completo',
    COUNT(o.OrderID) AS 'Total de pedidos'
FROM w3schools.employees e
    INNER JOIN w3schools.orders o ON o.EmployeeID = e.EmployeeID
GROUP BY `Nome completo`
ORDER BY `Total de pedidos`;
