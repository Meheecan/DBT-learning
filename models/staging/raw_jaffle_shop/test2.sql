with test AS (
    SELECT
        *
    from
        {{ref("stg_raw_jaffle_shop__raw_products")}}
)
SELECT 
    *,
    price * 100000 AS refac_price
FROM 
    test