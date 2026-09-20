-- Segment Customers into Spend Tiers (Low / Medium / High)

WITH customer_spend AS (
    SELECT
        c.customer_unique_id,
        SUM(oi.price) AS total_spend
    FROM orders o
    JOIN customers c
        ON o.customer_id = c.customer_id
    JOIN order_items oi
        ON o.order_id = oi.order_id
    GROUP BY c.customer_unique_id
)
SELECT
    customer_unique_id,
    total_spend,
    CASE
        WHEN total_spend < 100 THEN 'Low'
        WHEN total_spend BETWEEN 100 AND 500 THEN 'Medium'
        ELSE 'High'
    END AS spend_tier
FROM customer_spend
ORDER BY total_spend DESC;