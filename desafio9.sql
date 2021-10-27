SELECT 
CONCAT(empls.FirstName, ' ', empls.LastName) AS `Nome completo`,
COUNT(*) AS `Total de pedidos`
FROM
    w3schools.employees empls
          INNER JOIN
    w3schools.orders o ON empls.EmployeeID = o.EmployeeID
GROUP BY `Nome completo`
ORDER BY `Total de pedidos`;
