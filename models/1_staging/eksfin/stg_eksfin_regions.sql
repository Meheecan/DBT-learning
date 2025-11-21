with regions as (
    select * from {{ ref('sc_raw_regions') }}
),
renamed as (
    select * from regions
)
select * from renamed