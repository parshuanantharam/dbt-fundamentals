with customers as (
    select * from {{ ref(dim_customers)}}
),
payments as (
    select * from {{ ref(stg_payments)}}
)

select 
    customers.order_id,
    customers.customer_id,
    payments.amount
from customers
join payments 
  on customers.order_id = payments.order_id
    