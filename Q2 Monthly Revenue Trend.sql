
-- What is the monthly revenue trend across the data set?

SELECT
    DATE_FORMAT(orders.order_purchase_timestamp, '%Y-%m') AS month,
    SUM(order_items.price) AS revenue
FROM orders
JOIN order_items
    ON orders.order_id = order_items.order_id
GROUP BY
    DATE_FORMAT(orders.order_purchase_timestamp, '%Y-%m')
ORDER BY
    month;