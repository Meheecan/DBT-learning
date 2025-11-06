with customers as (
    select * from {{('stg_eksfin_customers')}}
)

select * from customers