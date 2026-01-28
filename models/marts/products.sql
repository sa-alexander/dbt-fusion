with
    products as (

        select 
            PRODUCT_ID, PRODUCT_NAME, PRODUCT_TYPE, PRODUCT_DESCRIPTION, PRODUCT_PRICE, IS_FOOD_ITEM, IS_DRINK_ITEM
        from {{ ref('stg_products') }}

    )


select 
PRODUCT_ID, PRODUCT_NAME, PRODUCT_TYPE, PRODUCT_DESCRIPTION, PRODUCT_PRICE, IS_FOOD_ITEM, IS_DRINK_ITEM
from products