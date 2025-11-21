with transactions as (
    select * from {{ ref('silver_eksfin_project_customer_transaction') }}
),

transformed as (
    select 
        --t.transaction_id,
        t.customer_id,
        t.project_id,
        t.loan_amount_nok  as loan_amount_nok,
        t.guarantee_amount_nok  as guarantee_amount_nok,
        t.currency,
        t.transaction_date,
        t.transaction_status
        --t.is_green_project, 
        --t.project_name,
        --t.project_category,
        --t.project_green_certified,
        --t.customer_name,
        --t.customer_country,
        --t.customer_industry
    from 
        transactions t
    --group by 
    --    t.customer_id,
    --   t.project_id,
    --   t.currency,
    --  t.transaction_date,
    --   t.transaction_status
)
select * from transformed