SELECT
product.productName AS 'Produto',
MIN(order_details.quantity) AS 'Mínima',
MAX(order_details.quantity) AS 'Máxima',
ROUND(AVG(order_details.quantity), 2) AS 'Média'
FROM w3schools.products AS product
INNER JOIN w3schools.order_details AS order_details ON order_details.productId = product.productId
GROUP BY Produto
HAVING Média > 20
ORDER BY Média ASC, Produto ASC;
