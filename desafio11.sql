SELECT 
cts1.ContactName AS 'Nome',
cts1.Country AS 'País',
COUNT(cts2.Country) AS 'Número de compatriotas'
FROM w3schools.customers cts1, w3schools.customers cts2
WHERE cts1.Country = cts2.Country AND cts1.ContactName <> cts2.ContactName
GROUP BY cts1.ContactName, cts1.Country
ORDER BY `Nome` ASC;
