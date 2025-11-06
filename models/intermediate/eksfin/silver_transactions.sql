with transactions as (
    select * from {{ ref('stg_eksfin_transactions') }}
),
kunder as (
    select * from {{ ref('stg_eksfin_customers') }}
),
transaksjoner as (
    select * 
        from transactions t
         )
select * from transaksjoner
