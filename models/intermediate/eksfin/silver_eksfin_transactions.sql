with 

transactions as (

    select * from {{ ref('stg_raw__sc_raw_transactions') }}

)

select * from transactions