with

products as (

    select * from {{ ref('stg_products') }}
    select 
        product_id,
        product_name,
        product_category,
        price,
        created_at
    from {{ ref('stg_products') }}

)

select * from products
select 
    product_id,
    product_name,
    product_category,
    price,
    created_at
from products