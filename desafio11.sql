SELECT city1.ContactName AS Nome,
city1.Country As País,
(SELECT COUNT(*) FROM w3schools.customers AS city2
WHERE city1.Country = city2.Country
AND city1.CustomerID <> city2.CustomerID
GROUP BY city2.Country) AS 'Número de compatriotas'
FROM w3schools.customers AS city1
WHERE
(SELECT COUNT(*) FROM w3schools.customers city2
WHERE city1.Country = city2.Country
AND city1.CustomerID <> city2.CustomerID
GROUP BY city2.Country
) IS NOT NULL
ORDER BY Nome;