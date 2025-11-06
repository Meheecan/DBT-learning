with projects as (
    select * from {{ ref('sc_raw_projects') }}
),
renamed as (
    select * from projects
)
select * from renamed