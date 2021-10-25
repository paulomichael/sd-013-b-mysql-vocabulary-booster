SELECT 
    CONCAT(t2.FirstName, ' ', t2.LastName) AS 'Nome completo',
    COUNT(t2.EmployeeID) AS 'Total de pedidos'
FROM
    w3schools.orders AS t1
        INNER JOIN
    w3schools.employees AS t2 ON t2.EmployeeID = t1.EmployeeID
GROUP BY CONCAT(t2.FirstName, ' ', t2.LastName)
ORDER BY COUNT(t2.EmployeeID);