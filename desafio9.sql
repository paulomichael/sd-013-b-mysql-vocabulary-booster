SELECT CONCAT(t1.FirstName, ' ', t1.LastName) AS 'Nome completo',COUNT(t1.employeeID) AS `Total de pedidos` from employees AS t1
INNER JOIN orders as t2 
ON t1.employeeID = t2.employeeID
WHERE EXISTS(
SELECT * FROM orders
WHERE  t1.employeeID = orders.employeeID
)
GROUP BY t1.employeeID
ORDER BY COUNT(t1.employeeID);
