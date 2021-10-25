SELECT 
CONCAT(Employ.FirstName, ' ', Employ.LastName) AS `Nome completo`,
COUNT(Ord.OrderID) AS `Total de pedidos`
FROM w3schools.employees AS Employ
INNER JOIN
w3schools.orders AS Ord ON Ord.EmployeeID = Employ.EmployeeID
GROUP BY `Nome completo`
ORDER BY `Total de pedidos`;
