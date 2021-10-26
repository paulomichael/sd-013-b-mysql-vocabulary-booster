SELECT
DISTINCT(tb.Country)
FROM (
SELECT Country FROM w3schools.customers as cm
UNION
SELECT Country FROM w3schools.suppliers as sp
) as tb
ORDER BY tb.Country ASC
LIMIT 5;
