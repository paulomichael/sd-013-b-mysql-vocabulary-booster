SELECT C.ContactName AS `Nome`, C.Country AS `País`, (COUNT(*) -1) AS `Número de compatriotas`
FROM w3schools.customers AS C
JOIN w3schools.customers AS D
ON C.Country = D.Country GROUP BY `Nome`
HAVING `Número de compatriotas` > 0
ORDER BY `Nome`;
