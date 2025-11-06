with customer as (
    select * from {{ ref('stg_eksfin_customers') }}
),
transact as (
    select * from {{ ref('stg_eksfin_transactions') }}
    ),
big_trans as (
    select * 
        from customer c
    inner join transact t 
        on t.CUSTOMER_ID = c.C1
    where t.LOAN_AMOUNT_NOK > 49128464
)
select * from big_trans