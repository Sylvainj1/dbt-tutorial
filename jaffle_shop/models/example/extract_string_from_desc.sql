{{ config(materialized='table', sort='source') }}

select *
from public.offers
WHERE offers.name like '%Technicien%'