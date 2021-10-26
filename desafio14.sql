SELECT DISTINCT(tb.Country)
FROM (
SELECT cm.Country FROM w3schools.customers as cm
LEFT JOIN w3schools.suppliers as sp ON cm.Country = sp.Country
UNION ALL
SELECT sp.Country FROM w3schools.customers as cm
RIGHT JOIN w3schools.suppliers as sp ON cm.Country = sp.Country
WHERE cm.Country IS NULL
) AS tb
ORDER BY tb.Country ASC
LIMIT 5;
