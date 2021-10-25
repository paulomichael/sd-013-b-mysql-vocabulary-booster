SELECT 
    CONCAT(FirstName, ' ', LastName) AS 'Nome completo',
    COUNT(*) AS 'Total de pedidos'
FROM
    w3schools.employees AS e
    INNER JOIN
    w3schools.orders AS o
WHERE e.EmployeeID = o.EmployeeID
GROUP BY 1
ORDER BY 2;
