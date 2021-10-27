SELECT CONCAT(e.firstName, ' ', e.lastName) AS `Nome completo`,
COUNT(*) AS `Total de pedidos`
FROM orders AS o
JOIN employees AS e
ON e.EmployeeID = o.EmployeeID
group by `Nome completo`
ORDER BY `Total de pedidos`;
