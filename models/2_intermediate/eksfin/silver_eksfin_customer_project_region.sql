with link_customer_project_region as (
    select * from {{ ref('stg_eksfin_customer_project_region') }}
),
projects as (
    select * from {{ ref('stg_eksfin_project') }}
),
customers as (
    select * from {{ ref('stg_eksfin_customers') }}
),
regions as (
    select * from {{ ref('stg_eksfin_regions') }}
),

linked as (
    select l.*, 
        p.name      as project_name,
        p.category  as project_category,
        p.green_certified as project_green_certified,
        c.name      as customer_name,
        c.country   as customer_country,
        c.industry  as customer_industry,
        r.name      as region_name,
        r.country   as region_country
    from 
        link_customer_project_region l
    inner join 
        projects p
    on
        p.project_id =  l.project_id
    inner join customers c
    on 
        c.customer_id = l.customer_id
    inner join regions r
    on
        r.region_id = l.region_id
)

select * from linked