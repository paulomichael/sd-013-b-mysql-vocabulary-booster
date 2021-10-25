SELECT cust01.ContactName AS `Nome`,
cust01.Country AS `País`,
COUNT(cust01.country) AS `Número de compatriotas`
FROM w3schools.customers AS cust01, w3schools.customers AS cust02
WHERE cust01.Country = cust02.Country
AND cust01.CustomerID <> cust02.CustomerID
GROUP BY cust01.CustomerID
ORDER BY cust01.ContactName;
 