select
    count(name)
from {{ ref('extract_string_from_desc' )}}
having not(count(name) >= 0)