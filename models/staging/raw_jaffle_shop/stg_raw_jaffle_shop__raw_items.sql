with 

source as (

    select * from {{ source('raw_jaffle_shop', 'raw_items') }}

),

renamed as (

    select
        id,
        order_id,
        sku

    from source

)

select * from renamed