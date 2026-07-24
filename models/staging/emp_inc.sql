{{ config(materialized='incremental') }}

select 
name as employee_name,
role as employee_role,
location,
case when location = 'HYD' then 'GHMC' else '' end as loc_code,
phone_number as contact,
updated_at
from {{ source('ANALYTICS', 'MOURITECH') }}

{% if is_incremental() %}
WHERE updated_at >
(
SELECT MAX(updated_at)
FROM {{ this }}
)
{% endif %}