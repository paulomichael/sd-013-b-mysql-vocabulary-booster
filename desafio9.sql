SELECT 
CONCAT(EM.`FirstName`, ' ', EM.`LastName`) AS `Nome completo`,
COUNT(O.`OrderID`) AS `Total de pedidos`
FROM w3schools.employees  AS EM
INNER JOIN w3schools.orders AS O
ON EM.`EmployeeID` = O.`EmployeeID`
GROUP BY `Nome Completo`
ORDER BY `Total de pedidos` ASC;
