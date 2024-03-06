-- Use the ref* function to select from other models- 
select
    o.order_id,
    c.customer_id,
    c.customer_name,
    p.product_id,
    p.product_name,
    o.quantity,
    o.order_date
from `vernal-catfish-315912.dbt_demo_bq.Order` o
join {{ ref("stg_customers") }} c on o.customer_id = c.customer_id
join `vernal-catfish-315912.dbt_demo_bq.Products` p on o.product_id = p.product_id
