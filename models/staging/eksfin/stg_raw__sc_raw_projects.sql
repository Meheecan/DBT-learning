with 

source as (

    select * from {{ source('raw', 'sc_raw_projects') }}

),

renamed as (

    select
        c1,
        c2,
        c3,
        c4

    from source

)

select * from renamed