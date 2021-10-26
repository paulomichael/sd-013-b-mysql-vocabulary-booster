USE w3schools;
SELECT Country AS 'País' FROM suppliers
UNION
SELECT Country FROM customers
order by País
LIMIT 10;
