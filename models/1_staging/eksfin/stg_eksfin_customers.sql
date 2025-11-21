with customers as (
    select * from {{ ref('sc_raw_customers') }}
),
renamed as (
    select * from customers
)
select * from renamed