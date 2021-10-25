SELECT 
  CONCAT(Emp.FirstName, ' ', Emp.LastName) AS `Nome completo`,
  COUNT(Ord.OrderID) AS `Total de pedidos`
FROM 
  w3schools.employees AS Emp
  INNER JOIN w3schools.orders AS Ord ON Ord.EmployeeID = Emp.EmployeeID
GROUP BY 
  `Nome completo`
ORDER BY
  `Total de pedidos` ;
