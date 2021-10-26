SELECT 
    UNION_Country.Country AS País
FROM
    (SELECT 
        Country
    FROM
        w3schools.customers UNION SELECT 
        Country
    FROM
        w3schools.suppliers) AS UNION_Country
ORDER BY Country
LIMIT 5;
