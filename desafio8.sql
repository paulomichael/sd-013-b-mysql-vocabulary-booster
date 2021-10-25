select 
	c.ContactName as `Nome de contato`,
    s.ShipperName as `Empresa que fez o envio`,
    o.OrderDate as `Data do pedido`
from 
	w3schools.customers as c
    join
    w3schools.orders as o on c.CustomerID = o.CustomerID
    join
	w3schools.shippers as s on o.ShipperID
    where s.ShipperName = 'Speedy Express' or s.ShipperName = 'United Package'
    order by `Nome de contato`, `Empresa que fez o envio`, `Data do pedido`;
    
    