SELECT
	cm.ContactName as "Nome",
    cm.Country as "País",
    tb.compratiots as "Número de compatriotas"
FROM w3schools.customers as cm
INNER JOIN (
	SELECT
		COUNT(*) - 1 as compratiots,
        Country
    FROM w3schools.customers
    GROUP BY Country
) as tb
ON tb.Country = cm.Country
WHERE tb.compratiots > 0
ORDER BY cm.ContactName ASC;
