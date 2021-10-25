SELECT p.ProductName AS `Produto`,
    min(od.Quantity) AS `Mínima`,
    max(od.Quantity) AS `Máxima`,
    round(avg(od.Quantity), 2) AS `Média`
FROM order_details od
    INNER JOIN products p ON p.ProductId = od.ProductID
GROUP BY od.ProductID
HAVING `Média` > 20
ORDER BY `Média`,
    `Produto`;
