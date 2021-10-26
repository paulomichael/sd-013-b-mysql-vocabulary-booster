SELECT c1.ContactName AS Nome, MAX(c1.Country) AS País, COUNT(c2.CustomerName) -1 AS "Número de compatriotas"
FROM customers AS c1, customers AS c2 WHERE c2.Country = c1.Country
GROUP BY c1.ContactName
HAVING COUNT(c2.CustomerName) > 1
ORDER BY c1.ContactName;
