SELECT
	CONCAT(employee.firstName, ' ', employee.lastName) AS `Nome completo`,
    COUNT(orders.orderId) AS 'Total de pedidos'
FROM w3schools.employees AS employee
INNER JOIN w3schools.orders AS orders ON orders.employeeId = employee.employeeId
GROUP BY `Nome completo`
ORDER BY `Total de pedidos` ASC;