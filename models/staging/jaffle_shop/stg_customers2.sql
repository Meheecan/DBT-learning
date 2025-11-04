with source as (

    select * from {{ source('raw_jaffle_shop', 'raw_customers') }}

),

renamed as (

    select
        id,
        name

    from source

)

select * from renamed 