-- Count of Repeat vs. One-Time Buyers

WITH customer_order_counts AS (
    SELECT
        c.customer_unique_id,
        COUNT(DISTINCT o.order_id) AS order_count
    FROM orders o
    JOIN customers c
        ON o.customer_id = c.customer_id
    GROUP BY c.customer_unique_id
)
SELECT
    CASE
        WHEN order_count > 1 THEN 'Repeat Buyer'
        ELSE 'One-Time Buyer'
    END AS buyer_type,
    COUNT(customer_unique_id) AS customer_count
FROM customer_order_counts
GROUP BY
    CASE
        WHEN order_count > 1 THEN 'Repeat Buyer'
        ELSE 'One-Time Buyer'
    END;