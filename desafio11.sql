SELECT
a.contactname AS `Nome`,
ANY_VALUE(a.country) AS `País`,
-- workaround found in https://stackoverflow.com/questions/34115174/error-related-to-only-full-group-by-when-executing-a-query-in-mysql
COUNT(*) AS `Número de compatriotas`
FROM
w3schools.customers AS a,
w3schools.customers AS b
WHERE
a.country = b.country
AND a.customerid <> b.customerid
GROUP BY
`Nome`
ORDER BY
`Nome` ASC,
`País` ASC;
