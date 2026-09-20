-- Which product categories generate the most revenue?

SELECT
    COALESCE(p.product_category_name, 'Unknown') AS category,
    SUM(oi.price) AS total_revenue
FROM order_items oi
JOIN products p
    ON oi.product_id = p.product_id
GROUP BY p.product_category_name
ORDER BY total_revenue DESC;