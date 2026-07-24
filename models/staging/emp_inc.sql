{{ config(materialized='incremental') }}

select 
name as employee_name,
role as employee_role,
location,
case when location = 'HYD' then 'GHMC' else '' end as loc_code,
phone_number as contact,
update_at
from {{ source('ANALYTICS', 'MOURITECH') }}

{% if is_incremental() %}
WHERE update_at >
(
SELECT MAX(update_at)
FROM {{ this }}
)
{% endif %}