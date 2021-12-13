with stg_payments as (
    select
        id as payment_id,
        orderid,
        paymentmethod,
        status,
        amount / 100 as amount
    from {{ source('stripe', 'payment') }}
)

select * from stg_payments