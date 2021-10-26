SELECT
T1.ContactName AS `Nome`,
T1.Country AS `País`,
COUNT(T2.Country) - 1
FROM w3schools.customers AS T1, w3schools.customers AS T2
WHERE T1.Country = T2.Country
GROUP BY `Nome`
ORDER BY `Nome`;

-- REF https://www.w3schools.com/sql/sql_join_self.asp
