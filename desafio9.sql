SELECT
concat(em.FirstName, ' ', em.LastName) as "Nome completo",
count(od.EmployeeID) as "Total de pedidos"
FROM w3schools.employees as em
INNER JOIN w3schools.orders as od
ON od.EmployeeID = em.EmployeeID
GROUP BY em.EmployeeID
ORDER BY count(od.EmployeeID) ASC;
