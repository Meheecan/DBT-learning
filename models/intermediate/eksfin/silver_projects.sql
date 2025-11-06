with projects as (
    select * from {{ ref('stg_eksfin_projects') }}
),
prosjekter as (
    select * 
        from projects c
)
select * from prosjekter
