SELECT
    c1.ContactName AS `Nome`,
    c1.Country AS 'País',
    COUNT(c1.Country) - 1 AS `Número de compatriotas`
FROM
    w3schools.customers AS c1,
    w3schools.customers AS c2
WHERE
    c2.Country = c1.Country
GROUP BY c1.CustomerID
HAVING `Número de compatriotas` > 1
ORDER BY `Nome`;
