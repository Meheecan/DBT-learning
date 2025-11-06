with transactions as (
    select * from {{ ref('sc_raw_transactions') }}
),
renamed as (
    select * from transactions
)
select * from renamed