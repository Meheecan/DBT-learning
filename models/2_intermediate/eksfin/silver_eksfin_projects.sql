with projects as (
    select * from {{('stg_eksfin_project')}}
)

select * from projects