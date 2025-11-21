with projects as (
    select * from {{ ref('silver_eksfin_projects') }}
),

project_dim as (
    select 
        project_id,
        name    as project_name 
        from projects
)

select * from project_dim