with 

source as (

    select * from {{ source('raw', 'sc_raw_customers') }}

),

renamed as (

    select
        c1 as customer_id,
        c2 as customer_name,
        c3 as customer_country,
        c4 as customer_industry

    from source
    where c1 <> 'customer_id'

)

select * from renamed