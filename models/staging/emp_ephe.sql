{{ config(materialized='ephemeral') }}

select 
name as employee_name,
case when location = 'HYD' then 'GHMC' else '' end as loc_code,
from {{ source('ANALYTICS', 'MOURITECH') }}