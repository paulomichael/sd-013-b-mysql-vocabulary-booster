SELECT 
    CONCAT(e.FirstName, ' ', e.LastName) AS 'Nome completo',
    od.Quantity AS 'Total de pedidos'
FROM
    w3schools.employees AS e
        INNER JOIN
    w3schools.orders AS o ON o.EmployeeID = e.EmployeeID
        INNER JOIN
    w3schools.order_details AS od ON od.OrderID = o.OrderID
GROUP BY `Nome completo`
ORDER BY `Total de pedidos`;
