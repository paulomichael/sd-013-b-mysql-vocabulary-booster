SELECT c1.CustomerName AS Nome, c1.Country AS País, COUNT(c2.CustomerName) -1 AS "Número de compatriotas"
FROM customers AS c1, customers AS c2 WHERE c2.Country = c1.Country
GROUP BY c1.CustomerName
ORDER BY c1.ContactName;
