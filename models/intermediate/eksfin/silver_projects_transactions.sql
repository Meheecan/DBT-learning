{# with projects as (
    select * from {{ ref('stg_projects') }}
),
link as (
    select * from {{ ref('stg_link') }}
),
transformed as (
    select p.*
    from 
        projects p
    inner join 
        link l
    on
        p.project_id =  l.project_id

)
select * from transformed #}