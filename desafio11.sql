SELECT 
    ContactName AS `Nome`,
    Country AS `País`,
    (SELECT 
            (COUNT(*) - 1)
        FROM
            w3schools.customers
        WHERE
            `País` = Country) AS `Número de compatriotas`
FROM
    w3schools.customers
ORDER BY `Nome`
LIMIT 90;
