SELECT 
    CONCAT(e.FirstName, ' ', e.LastName) AS 'Nome completo',
    COUNT(*) AS 'Total de pedidos'
FROM
    w3schools.employees AS e
        INNER JOIN
    w3schools.orders AS o ON e.employeeID = o.employeeID
GROUP BY o.EmployeeID
ORDER BY `Total de pedidos`;
