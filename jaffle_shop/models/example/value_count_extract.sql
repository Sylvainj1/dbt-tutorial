{{ config(
    materialized='table',
    alias= 'my_value_counts'
    )
}}

select source, count(source)
from {{ ref('extract_string_from_desc') }}
GROUP BY source