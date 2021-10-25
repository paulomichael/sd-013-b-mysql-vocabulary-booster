SELECT
CU.ContactName `Nome de contato`,
SH.ShipperName `Empresa que fez o envio`,
ORD.OrderDate `Data do pedido`
FROM orders ORD
INNER JOIN shippers SH
ON SH.ShipperID = ORD.ShipperID
INNER JOIN customers CU
ON CU.CustomerID = ORD.CustomerID
WHERE SH.ShipperName = 'Speedy Express' OR SH.ShipperName = 'United Package'
ORDER BY `Nome de contato`, `Empresa que fez o envio`, `Data do pedido`;

