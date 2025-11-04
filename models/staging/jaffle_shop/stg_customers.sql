with

source as (

    select * from {{ ref('seed_customers') }}

),

renamed as (

    select


        id as customer_id,
        name as customer_name

    from source

)

select * from renamed

{# {{ codegen.generate_model_yaml(
    model_names=['customers']
) }} #}

{# {{ codegen.generate_base_model(
    source_name='raw_jaffle_shop',
    table_name='raw_customers'
) }} #}