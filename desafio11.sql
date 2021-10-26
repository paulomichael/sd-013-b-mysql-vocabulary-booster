SELECT tab1.`ContactName` AS `Nome`,
tab1.`Country` AS `País`, 
COUNT(*) -1 AS `Número de compatriotas` 
FROM w3schools.customers AS tab1, w3schools.customers AS tab2
WHERE tab1.`Country` = tab2.`Country` 
GROUP BY tab1.`CustomerID` 
HAVING `Número de compatriotas` > 0 
ORDER BY `Nome`;