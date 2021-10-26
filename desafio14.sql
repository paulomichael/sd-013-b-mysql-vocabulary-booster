SELECT DISTINCT
    sup.Country AS `País`
FROM
    (SELECT 
        CustomerName, Country
    FROM
        w3schools.customers UNION ALL SELECT 
        SupplierName, Country
    FROM
        w3schools.suppliers) AS sup
ORDER BY Country
LIMIT 5;
