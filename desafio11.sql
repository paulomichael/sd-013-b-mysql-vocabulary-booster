/* SELECT * FROM w3schools.shippers;
SELECT * FROM w3schools.employees;
SELECT * FROM w3schools.customers;
SELECT * FROM w3schools.orders;
SELECT * FROM w3schools.order_details;
SELECT * FROM w3schools.products;

SELECT ContactName AS 'Nome', Country AS 'País', COUNT(Country) - 1 AS 'Número de compatriotas'
FROM w3schools.customers
GROUP BY Country
HAVING COUNT(Country) > 1
ORDER BY ContactName ASC;


SELECT t1.ContactName AS 'Nome', t1.Country AS 'País', COUNT(t2.Country) - 1 AS 'Número de compatriotas'
FROM w3schools.customers AS t1,
w3schools.customers AS t2
GROUP BY t1.Country
HAVING t1.Country = t2.Country

ORDER BY t1.ContactName ASC;

SELECT t.ContactName AS 'Nome', t.Country AS 'País', COUNT(t.Country) - 1 AS 'Número de compatriotas'

FROM (
SELECT * FROM
w3schools.customers
GROUP BY Country

) AS t
ORDER BY ContactName ASC;

*/