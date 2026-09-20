-- Rank  Top 3 products within each category by revenue
WITH product_revenue AS (
    SELECT
        COALESCE(p.product_category_name, 'Unknown') AS category,
        oi.product_id,
        SUM(oi.price) AS revenue
    FROM order_items oi
    JOIN products p
        ON oi.product_id = p.product_id
    GROUP BY p.product_category_name, oi.product_id
),
ranked_products AS (
    SELECT
        category,
        product_id,
        revenue,
        ROW_NUMBER() OVER (
            PARTITION BY category
            ORDER BY revenue DESC
        ) AS rn
    FROM product_revenue
)
SELECT
    category,
    product_id,
    revenue,
    rn AS rank_in_category
FROM ranked_products
WHERE rn <= 3
ORDER BY category, rn;