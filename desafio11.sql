SELECT c.ContactName AS `Nome`,
c.Country AS `País`,
comp.compatriotas - 1 AS `Número de compatriotas`
FROM(SELECT Country, COUNT(*) AS compatriotas
FROM w3schools.customers
GROUP BY Country
HAVING compatriotas > 1) AS comp
JOIN w3schools.customers AS c
ON c.Country = comp.Country
ORDER BY c.ContactName;
