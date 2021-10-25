SELECT
customers1.contactName AS 'Nome',
customers1.country AS 'País',
(SELECT
COUNT(*) - 1
FROM w3schools.customers AS customers2
WHERE customers1.country = customers2.country
GROUP BY customers2.country) AS 'Número de compatriotas'
FROM w3schools.customers AS customers1
WHERE
(SELECT
COUNT(*) - 1
FROM w3schools.customers AS customers2
WHERE customers1.country = customers2.country
GROUP BY customers2.country) > 0
ORDER BY Nome ASC;
