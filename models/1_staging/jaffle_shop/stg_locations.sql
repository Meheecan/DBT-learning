with

source as (

    select * from {{ ref('seed_stores') }}

),

renamed as (

    select

        ----------  ids
        id as location_id,

        ---------- text
        name as location_name,

        ---------- numerics
        tax_rate*10,

        ---------- timestamps
        {{ dbt.date_trunc('day', 'opened_at') }} as opened_date

    from source

)

select * from renamed

