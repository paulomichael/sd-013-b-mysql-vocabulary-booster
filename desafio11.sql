SELECT
Inf1.ContactName AS `Nome`,
Inf1.Country AS `País`,
COUNT(Inf2.Country) AS `Número de compatriotas`
FROM 
w3schools.customers AS Inf1,
w3schools.customers AS Inf2
WHERE
Inf1.Country = Inf2.Country AND Inf1.CustomerID <> Inf2.CustomerID
GROUP BY `Nome`, `País`
ORDER BY `Nome`;
