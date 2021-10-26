SELECT Country FROM suppliers
UNION
SELECT Country FROM customers
ORDER BY Country
LIMIT 10;
