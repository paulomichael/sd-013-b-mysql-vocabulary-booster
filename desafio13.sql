SELECT 
    prd.ProductName AS Produto, prd.Price AS Preço
FROM
    w3schools.order_details AS ordt
        INNER JOIN
    w3schools.products AS prd ON ordt.ProductID = prd.ProductID
WHERE
    ordt.Quantity > 80
ORDER BY Produto;
