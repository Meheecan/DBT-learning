with customers as (
    select * from {{ ref('stg_eksfin_customers') }}
),
kunder as (
    select * 
        from customers c
)
select * from kunder
