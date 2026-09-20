# SQL-Capstone-Project-Brazilian-E-Commerce-Public-Dataset-by-Olist-from-Kaggle
SQL Capstone Project - Brazilian E-Commerce Public Dataset by Olist from Kaggle

**Overview**
As part of our capstone project for the Data Analyst SQL Bootcamp, we were tasked to analyze transactional data to uncover key business insights and performance trends. Using advanced SQL queries—including multi-table joins, aggregations, window functions, and CTEs—we evaluated customer purchasing behavior, revenue drivers, and product performance. The final findings were synthesized to provide actionable, data-driven recommendations for business growth and optimization.
## Business Questions Analyzed
1. **Top Spenders:** Who are the top 10 customers by total payment value?
2. **Revenue Trend:** What is the monthly revenue trend across the dataset?
3. **MoM Growth:** What is the month-over-month (MoM) revenue change?
4. **Top Categories:** Which product categories generate the most revenue?
5. **Top Products per Category:** What are the top 3 revenue-generating products within each category?
6. **Customer Segmentation:** How are customers distributed across spend tiers (Low, Medium, High)?
7. **Customer Loyalty:** What proportion of customers are repeat buyers vs. one-time buyers?
8. **Category Concentration:** What percentage of overall revenue comes from the top product category?

---

## Key Findings

### Revenue & Trend Dynamics
* **Peak Revenue Month:** Revenue expanded significantly throughout 2017, reaching a high point of **$506,071.14** in May 2017.
* **Top Spender:** The top customer (`1617b1357756262bfa56ab541c47bc16`) spent **$13,664.08** across their orders.

### Category & Product Performance
* **Highest-Grossing Category:** `beleza_saude` (Health & Beauty) leads all categories with **$1,258,681.34** in total revenue.
* **Revenue Share:** `beleza_saude` generates **9.26%** of the entire dataset's grand total revenue ($13.59M).
* **Top 5 Categories:**
  1. `beleza_saude` ($1.26M)
  2. `relogios_presentes` ($1.21M)
  3. `cama_mesa_banho` ($1.04M)
  4. `esporte_lazer` ($0.99M)
  5. `informatica_acessorios` ($0.91M)

### Customer Behavior & Segmentation
* **Customer Retention:** Highly skewed toward one-time buyers.
  * **One-Time Buyers:** 93,099 customers (**96.88%**)
  * **Repeat Buyers:** 2,997 customers (**3.12%**)
* **Spend Tiers:**
  * **Low Tier (<$100):** 54,534 customers (**57.15%**)
  * **Medium Tier ($100–$500):** 37,133 customers (**38.92%**)
  * **High Tier (>$500):** 3,753 customers (**3.93%**)

---

## Recommendations
1. **Implement Retention & Loyalty Programs:** Over 96% of buyers never make a second order. Introducing post-purchase follow-up campaigns, loyalty rewards, or subscription discounts can capture higher repeat purchase rates.
2. **Nurture High & Medium Tiers:** While High Tiers make up under 4% of the customer base, their individual order values are vital. Tailored email remarketing for High/Medium spenders can lift overall Customer Lifetime Value (LTV).
3. **Double Down on Top Categories:** Focus inventory and promotional ad spend on top-performing categories like `beleza_saude` and `relogios_presentes` to maximize return on ad spend (ROAS).

---

## Tools & Skills Demonstrated
* **Database Management:** DataGrip, MySQL schema navigation.
* **Data Aggregation:** `GROUP BY`, `SUM()`, `COUNT(DISTINCT)`.
* **Window Functions:** `LAG() OVER ()`, `ROW_NUMBER() PARTITION BY`, `SUM() OVER ()`.
* **Subqueries & CTEs:** Common Table Expressions (`WITH ... AS`) for structured modular queries.
* **Conditional Logic:** `CASE WHEN` bucketing and `COALESCE` NULL handling.

---

## Files Included
* `q1_top_customers.sql` – Identifies top 10 customers by spend.
* `q2_monthly_revenue_trend.sql` – Calculates total revenue per month.
* `q3_mom_change.sql` – Computes MoM dollar and percentage revenue growth via CTE & `LAG()`.
* `q4_top_categories.sql` – Ranks product categories by total sales.
* `q5_top_products_per_category.sql` – Ranks top 3 products per category using `ROW_NUMBER()`.
* `q6_customer_spend_tiers.sql` – Buckets customers into Low/Medium/High tiers using `CASE WHEN`.
* `q7_repeat_vs_onetime_buyers.sql` – Counts single vs. repeat purchasers.
* `q8_top_category_revenue_share.sql` – Computes percent of total revenue from the top category using `SUM() OVER ()`.
