with transactions as (
    select * from {{ ref('stg_eksfin_transactions') }}
), 

projects as (
    select * from {{ ref('stg_eksfin_project') }}
),

customers as (
    select * from {{ ref('stg_eksfin_customers') }}
),

transformed as (
    select  
        t.transaction_id,
        t.customer_id,
        t.project_id,
        t.loan_amount_nok,
        t.guarantee_amount_nok,
        t.currency,
        t.transaction_date,
        t.status    as transaction_status,
        t.is_green_project, 
        p.name      as project_name,
        p.category  as project_category,
        p.green_certified as project_green_certified,
        c.name      as customer_name,
        c.country   as customer_country,
        c.industry  as customer_industry
    from 
        transactions t 
    inner join 
        projects p
    on
        p.project_id =  t.project_id
    inner join customers c
    on 
        c.customer_id = t.customer_id

)
select * from transformed