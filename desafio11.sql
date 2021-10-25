SELECT c1.ContactName AS `Nome`,
    c1.Country AS `País`,
    count(c1.Country) `Número de compatriotas`
FROM customers c1, customers c2
WHERE c1.Country = c2.Country
    AND c1.CustomerID <> c2.CustomerID
GROUP BY `País`,
    c1.ContactName
ORDER BY `Nome`;
