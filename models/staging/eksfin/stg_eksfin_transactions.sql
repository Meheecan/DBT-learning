with 

source as (

    select * from {{ source('raw', 'sc_raw_transactions') }}

),

renamed as (

    select
        *
    from source

)

select * from renamed