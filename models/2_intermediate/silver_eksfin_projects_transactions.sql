with projects as (
    select * from {{ ref('stg_eksfin_project') }}
),

transactions as (
    select * from {{ ref('stg_eksfin_transactions') }}
),

transformed as (
    select p.*
    from 
        projects p
    inner join 
        transactions t
    on
        p.project_id =  t.project_id

)
select * from transformed