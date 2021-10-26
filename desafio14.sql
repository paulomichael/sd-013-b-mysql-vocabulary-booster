SELECT DISTINCT(sp.Country) FROM w3schools.customers as cm
INNER JOIN w3schools.suppliers as sp
ON sp.Country = cm.Country
ORDER BY sp.Country ASC;
