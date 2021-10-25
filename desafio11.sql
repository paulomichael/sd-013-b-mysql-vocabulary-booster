SELECT 
    customer.ContactName AS 'Nome',
    customer.Country AS 'País',
    COUNT(customer.Country) AS 'Número de compatriotas'
FROM
    w3schools.customers AS customer,
    w3schools.customers AS copy
WHERE
    customer.Country = copy.Country
        AND customer.CustomerID <> copy.CustomerID
GROUP BY customer.ContactName , customer.Country
ORDER BY `Nome`;
