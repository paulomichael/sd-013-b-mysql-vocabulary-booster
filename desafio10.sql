SELECT 
    product.ProductName AS 'Produto',
    MIN(ord_det.Quantity) AS 'Mínima',
    MAX(ord_det.Quantity) AS 'Máxima',
    ROUND(AVG(ord_det.Quantity), 2) AS 'Média'
FROM
    w3schools.products AS product
        INNER JOIN
    w3schools.order_details AS ord_det ON ord_det.ProductID = product.ProductID
GROUP BY product.ProductName
HAVING AVG(ord_det.Quantity) > 20.00
ORDER BY `Média` ASC, `Produto` ASC;
