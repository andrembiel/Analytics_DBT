WITH stg_jaffle_shop__orders as (
    
    SELECT * FROM {{ ref('stg_jaffle_shop__orders') }}
),

stg_jaffle_shop__customers as (
    
    SELECT * FROM {{ ref('stg_jaffle_shop__customers') }}
),

int_successeful_payments__grouped_by_order_id as (
    
    SELECT * FROM {{ ref('int_successeful_payments__grouped_by_order_id') }}

)

SELECT 
orders.order_id
,orders.customer_id
,order_placed_at
,orde

FROM  stg_jaffle_shop__orders as orders
LEFT JOIN stg_jaffle_shop__customers USING (customer_id)
LEFT JOIN int_successeful_payments__grouped_by_order_id as payments 
    ON orders.order_id = payments.order_id