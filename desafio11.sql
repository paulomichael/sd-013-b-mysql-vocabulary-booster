SELECT customer1.ContactName AS 'Nome',
customer1.Country AS 'País',
COUNT(customer2.Country) AS 'Número de compatriotas'
FROM w3schools.customers customer1, w3schools.customers customer2
WHERE customer1.Country = customer2.Country AND customer1.ContactName <> customer2.ContactName
GROUP BY customer1.ContactName, customer1.Country
ORDER BY `Nome` ASC;
