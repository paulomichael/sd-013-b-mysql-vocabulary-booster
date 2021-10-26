SELECT
C1.ContactName `Nome`,
C1.Country `País`,
(
SELECT COUNT(C2.Country) -1
FROM customers C2
WHERE C1.Country = C2.Country
) `Número de compatriotas`
FROM customers C1
HAVING `Número de compatriotas` <> 0
ORDER BY `Nome`;
