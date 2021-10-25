SELECT
C1.ContactName AS Nome,
C1.Country AS País,
(SELECT COUNT(*) FROM w3schools.customers C2
WHERE C1.Country = C2.Country
AND C1.CustomerID <> C2.CustomerID
GROUP BY C2.Country) AS 'Número de compatriotas'
FROM w3schools.customers C1
WHERE 
(SELECT COUNT(*) FROM w3schools.customers C2
WHERE C1.Country = C2.Country
AND C1.CustomerID <> C2.CustomerID
GROUP BY C2.Country) IS NOT NULL
ORDER BY Nome;
