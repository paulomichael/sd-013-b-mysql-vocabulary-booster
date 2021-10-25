SELECT
a.contactname AS `Nome`,
b.country AS `País`,
COUNT(*) - 1 AS `Número de compatriotas`
FROM
w3schools.customers AS a,
w3schools.customers AS b
WHERE
a.country = b.country
GROUP BY `Nome`
ORDER BY
`Nome` ASC,
`País` ASC;
    