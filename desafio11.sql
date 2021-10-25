use w3schools;

SELECT 
	cts1.ContactName AS 'Nome',
    cts1.Country AS 'País',
    COUNT(cts1.Country) - 1 AS 'Número de compatriotas'
FROM customers cts1, customers cts2
WHERE cts1.Country = cts2.Country
GROUP BY cts1.ContactName
HAVING `Número de compatriotas` <> 0
ORDER BY `Nome`;