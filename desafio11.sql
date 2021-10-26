select 
c.ContactName as `Nome`,
    c.Country as `País`,
(select count(CustomerID) - 1 from w3schools.customers where c.Country = Country) as `Número de compatriotas`
from
w3schools.customers as c
where
(select count(CustomerID) - 1 from w3schools.customers where c.Country = Country) > 0
order by c.ContactName;
