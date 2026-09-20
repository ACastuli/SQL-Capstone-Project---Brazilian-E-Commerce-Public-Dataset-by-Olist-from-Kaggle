-- % of Total Revenue Coming from the Top Category

WITH category_revenue AS (
    SELECT
        COALESCE(p.product_category_name, 'Unknown') AS category,
        SUM(oi.price) AS category_revenue
    FROM order_items oi
    JOIN products p
        ON oi.product_id = p.product_id
    GROUP BY p.product_category_name
)
SELECT
    category,
    category_revenue,
    SUM(category_revenue) OVER () AS grand_total_revenue,
    ROUND(
        (category_revenue / SUM(category_revenue) OVER ()) * 100,
        2
    ) AS pct_of_total_revenue
FROM category_revenue
ORDER BY category_revenue DESC
LIMIT 1;