with customers as (
    select * from {{ ref('silver_eksfin_customers') }}
)
customer_dim as (
    select 
        customer_id,
        name    as customer_name 
)

select * from customer_dim