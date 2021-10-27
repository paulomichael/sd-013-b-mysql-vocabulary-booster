SELECT 
    CONCAT(E.FirstName, ' ', E.LastName) AS `Nome completo`,
    COUNT(E.employeeID) AS `Total de pedidos`
FROM
    employees AS E
        INNER JOIN
    orders AS O ON E.employeeID = O.EmployeeID
WHERE
    EXISTS( SELECT 
            *
        FROM
            orders
        WHERE
            E.employeeID = orders.employeeID)
GROUP BY E.employeeID
ORDER BY COUNT(E.employeeID);
