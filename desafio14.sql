SELECT country as `País`
FROM
(SELECT country FROM w3schools.customers
	UNION
SELECT country FROM w3schools.suppliers) AS `union`
ORDER BY `País`
LIMIT 5;
