{{ config(severity = 'warn', store_failures=true) }}
select
	count(source)
from {{ ref('my_value_counts' )}}
WHERE source ='indeed'
having not(count(source)>0)