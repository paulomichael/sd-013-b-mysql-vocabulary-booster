SELECT 
    CONCAT(e.FirstName, ' ', e.LastName) AS `Nome Compelto`,
    COUNT(o.OrderID) AS `Total de pedidos`
FROM
    w3schools.employees AS e
        JOIN
    w3schools.orders AS o ON o.EmployeeID = e.EmployeeID
GROUP BY o.EmployeeID
ORDER BY `Total de pedidos`;