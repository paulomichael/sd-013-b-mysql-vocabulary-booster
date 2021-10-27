SELECT
  CONCAT(EMPLOYEES.FirstName, ' ', EMPLOYEES.LastName) AS `Nome completo`,
  COUNT(ORDERS.EmployeeID) AS `Total de pedidos`
FROM
  w3schools.orders AS ORDERS
  INNER JOIN w3schools.employees AS EMPLOYEES ON EMPLOYEES.EmployeeID = ORDERS.EmployeeID
GROUP BY
  `Nome completo`
ORDER BY
  `Total de pedidos`;
