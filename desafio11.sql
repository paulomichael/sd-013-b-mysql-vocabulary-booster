set global sql_mode='';
SELECT C.ContactName AS `Nome`, C.Country AS `País`, (COUNT(*) -1) AS `Número de compatriotas`
FROM w3schools.customers AS C,
w3schools.customers AS D
WHERE C.Country = D.Country GROUP BY C.ContactName
HAVING `Número de compatriotas` > 0
ORDER BY `Nome`;
