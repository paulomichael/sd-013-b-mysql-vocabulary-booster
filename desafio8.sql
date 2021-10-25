SELECT
c.contactname AS `Nome de contato`,
s.shippername AS `Empresa que fez o envio`,
o.orderdate AS `Data do pedido`
FROM
w3schools.customers AS c
INNER JOIN
w3schools.orders AS o ON c.customerid = o.customerid
INNER JOIN
w3schools.shippers AS s ON o.shipperid = s.shipperid
WHERE
s.shippername = 'Speedy Express'
OR s.shippername = 'United Package'
ORDER BY
`Nome de contato` ASC, 
`Empresa que fez o envio` ASC,
`Data do pedido` ASC;
