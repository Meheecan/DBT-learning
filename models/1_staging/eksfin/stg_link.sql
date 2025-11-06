with link as (
    select * from {{ ref('sc_raw_customer_project_region') }}
),
renamed as (
    select * from link
)
select  * from renamed