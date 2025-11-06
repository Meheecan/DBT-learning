with 

source as (

    select * from {{ ref('stg_raw__sc_raw_projects') }}

),

renamed as (

    select
        c1 as project_id,
        c2 as project_name,
        c3 as project_category,
        c4 as green_certified

    from source

),

sletterad as (

    select
        *
    from renamed
    where project_id<>'project_id'

)

select * from sletterad