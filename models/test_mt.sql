{{ config(materialized='table') }}

select 

name as employee_name,
role as employee_role,
location,
phone_number as contact

from  {{ source('DATAENGINEER_TEST', 'mouritech') }}