with 

source as (

    select * from {{ source('raw_jaffle_shop', 'raw_supplies') }}

),

renamed as (

    select
        id,
        name,
        cost,
        perishable,
        sku

    from source

)

select * from renamed