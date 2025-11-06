with customer_project_region as (
    select * from {{ ref('sc_raw_customer_project_region') }}
),
renamed as (
    select * from customer_project_region
)
select * from renamed