(SELECT
country AS 'País'
FROM w3schools.suppliers)
UNION
(SELECT
country AS 'País'
FROM w3schools.customers)
ORDER BY País ASC
LIMIT 5;
