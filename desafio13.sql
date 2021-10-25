SELECT
product.productName AS 'Produto',
product.price AS 'Preço'
FROM
w3schools.products AS product
WHERE product.productID
IN (SELECT orders.productID
FROM w3schools.order_details AS orders
WHERE orders.quantity > 80)
ORDER BY Produto ASC;
