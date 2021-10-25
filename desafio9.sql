SELECT 
    CONCAT(e.FirstName, ' ', e.LastName) AS 'Nome completo',
    COUNT(o.OrderID) AS 'Total de Pedidos'
FROM
    w3schools.customers c
        INNER JOIN
    w3schools.orders o ON o.CustomerID = c.CustomerID
        INNER JOIN
    w3schools.employees e ON o.EmployeeID = e.EmployeeID
WHERE
    c.CustomerName = 'Nome completo';
    