SELECT 
    CONCAT(E.FirstName, ' ', LastName) AS 'Nome Completo',
    COUNT(O.EmployeeId) AS 'Total de pedidos'
FROM
    w3schools.employees AS E
        INNER JOIN
    w3schools.orders AS O ON O.employeeID = E.employeeID
GROUP BY `Nome Completo`
ORDER BY `Total de pedidos`;
