with

sc_raw_customers as (

    select * from {{ ref('stg_raw__sc_raw_customers') }}

),

renamed as (

    select
        c1 as customer_id,
        c2 as customer_name,
        c3 as customer_country,
        c4 as customer_industry
    from sc_raw_customers
    where customer_id <> 'customer_id'

)select * from renamed