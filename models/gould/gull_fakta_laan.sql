with soelv_laan as (
    select * from {{ ref('silver_transactions') }}
),
gull_laan_fakta as (
    select
     transaction_id,
     customer_id,
     project_id,
     loan_amount_NOK as beloep_NOK,
     currency as valuta,
     transaction_date as transaksjons_dato,
     status,
     is_green_project as er_groent_prosjekt
     from soelv_laan 
        )
select * from gull_laan_fakta
