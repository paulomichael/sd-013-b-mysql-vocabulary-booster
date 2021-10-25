SELECT
    Co1.Country AS `País`,
    Co1.ContactName AS `Nome`,
    COUNT(Co1.ContactName) - 1 AS `Número de compatriotas`
FROM
    w3schools.customers AS Co1,
    w3schools.customers AS Co2
WHERE
    Co1.Country = Co2.Country
GROUP BY
    `País`,
    `Nome`
HAVING
    `Número de compatriotas` > 0
ORDER BY
    `Nome`;
