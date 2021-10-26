SELECT CONCAT(t1.FirstName, ' ', t1.LastName) AS 'Nome Completo' from employees AS t1
WHERE EXISTS(
SELECT * FROM customers
WHERE 'Nome Completo' = customers.ContactName
);
