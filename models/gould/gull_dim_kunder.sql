with soelv_kunder as (
    select * from {{ ref('silver_customers') }}
),
gull_dim_kunde as (
    select * 
    from soelv_kunder
        )
select * from gull_dim_kunde
