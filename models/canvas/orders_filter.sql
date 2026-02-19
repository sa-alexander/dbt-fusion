WITH stg_orders AS (
  /* Order data with basic cleaning and transformation applied, one row per order. */
  SELECT
    *
  FROM {{ ref('jaffle_shop', 'stg_orders') }}
), filter AS (
  SELECT
    *
  FROM stg_orders
  WHERE
    ORDER_TOTAL > 10
), aggregate_1 AS (
  SELECT
    LOCATION_ID,
    SUM(SUBTOTAL) AS sum_SUBTOTAL
  FROM filter
  GROUP BY
    LOCATION_ID
), orders_filter_sql AS (
  SELECT
    *
  FROM aggregate_1
)
SELECT
  *
FROM orders_filter_sql