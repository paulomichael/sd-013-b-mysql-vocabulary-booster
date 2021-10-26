SELECT 
    p.ProductName AS Produto, p.Price AS Preço
FROM
    w3schools.order_details AS order_d
        JOIN
    w3schools.products AS p ON order_d.ProductID = p.ProductID
WHERE
    order_d.Quantity > 80
ORDER BY p.ProductName;
