with 

source as (

    select * from {{ source('raw', 'sc_raw_regions') }}

),

renamed as (

    select
        link_id,
        customer_id,
        project_id,
        region_id

    from source

)

select * from renamed