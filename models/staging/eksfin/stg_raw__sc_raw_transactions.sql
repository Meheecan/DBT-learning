with 

source as (

    select * from {{ source('raw', 'sc_raw_transactions') }}

),

renamed as (

    select
        transaction_id,
        customer_id,
        project_id,
        loan_amount_nok,
        guarantee_amount_nok,
        currency,
        transaction_date,
        status,
        is_green_project

    from source

)

select * from renamed