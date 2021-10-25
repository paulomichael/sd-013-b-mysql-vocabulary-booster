SELECT 
Nome.ContactName AS `Nome de contato`,
ID.ShipperName AS `Empresa que fez o envio`,
Dia.OrderDate AS `Data do pedido`
FROM w3schools.orders AS Dia
INNER JOIN 
w3schools.shippers AS ID ON ID.ShipperID = Dia.ShipperID
INNER JOIN
w3schools.customers AS Nome ON Nome.CustomerID = Dia.CustomerID
WHERE 
ID.ShipperName = 'Speedy Express' 
OR ID.ShipperName = 'United Package'
ORDER BY 
`Nome de contato`, `Empresa que fez o envio`, `Data do pedido`;
