SELECT 
    CONCAT(E.FirstName, ' ', LastName) AS 'Nome Completo',
    COUNT(O.EmployeeId) AS 'Total de pedidos'
FROM
    w3schools.employees AS E
        INNER JOIN
    w3schools.orders AS O
GROUP BY CONCAT(E.FirstName, ' ', E.LastName)
ORDER BY COUNT(E.EmployeeID);
