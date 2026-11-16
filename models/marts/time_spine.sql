{{
    config(
        materialized = 'table',
    )
}}

with

base_dates as (
    {{
        dbt.date_spine(
            'day',
            "DATE('2000-01-01')",
            "dateadd(year, 2, current_date())"
        )
    }}
),

final as (
    select
        cast(date_day as date) as date_day
    from base_dates
)

select *
from final
