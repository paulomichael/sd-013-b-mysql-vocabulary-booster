SELECT 
    p.ProductName AS `Produto`, p.Price AS `Preço`
FROM
    w3schools.products AS p
        JOIN
    w3schools.order_details AS o ON p.ProductID = o.ProductID
WHERE
    o.Quantity > 80
ORDER BY `Produto`;
