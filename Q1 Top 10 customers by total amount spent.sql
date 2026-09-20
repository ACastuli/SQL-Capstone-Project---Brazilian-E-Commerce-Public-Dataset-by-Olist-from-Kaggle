# select * from customers;
# Select * from geolocation;

-- Who are the top 10 customers?
use olist;
select
    c.customer_id,
    sum(op.payment_value) as total_spent
from customers as c
join orders as o on c.customer_id = o.customer_id
join order_payments as op on o.order_id = op.order_id
group by c.customer_id
order by total_spent desc
limit 10;

