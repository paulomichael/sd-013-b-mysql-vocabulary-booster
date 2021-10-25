SELECT 
    CONCAT(FirstName, ' ', LastName) AS `Nome completo`,
    COUNT(O.OrderId) AS `Total de pedidos`
FROM
    w3schools.orders AS O
        JOIN
    w3schools.employees AS E ON E.EmployeeID = O.EmployeeId
GROUP BY `Nome completo`
ORDER BY `Total de pedidos`;
