SELECT
    cs.ContactName as "Nome de contato",
    sp.ShipperName as "Empresa que fez o envio",
	od.OrderDate as "Data do pedido"
FROM w3schools.orders as od
INNER JOIN w3schools.customers as cs
	ON cs.CustomerID = od.CustomerID
INNER JOIN w3schools.shippers as sp
	ON sp.ShipperID = od.ShipperID
WHERE sp.ShipperName = "Speedy Express"
	OR sp.ShipperName = "United Package"
ORDER BY
	cs.ContactName ASC,
    sp.ShipperName ASC,
    od.OrderDate DESC;
