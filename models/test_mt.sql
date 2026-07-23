{{ config(materialized='table') }}

select 
name as employee_name,
role as employee_role,
location,
case when location = 'HYD' then 'GHMC' else '' end as loc_code,
phone_number as contact
from  ANALYTICS.DATAENGINEER_TEST.MOURITECH

