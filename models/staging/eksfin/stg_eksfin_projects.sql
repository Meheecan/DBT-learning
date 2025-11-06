with 

source as (

    select * from {{ source('raw', 'sc_raw_projects') }}

),

renamed as (

    select
        c1 as project_id,
        c2 as project_name,
        c3 as project_catagory,
        c4 as project_green_certified

    from source 
    where c1 <> 'project_id'

)

select * from renamed