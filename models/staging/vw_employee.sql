{{ config
(
    materialized='view',
    secure='true'
) 
}}

select *
from {{ ref('employee') }}
where location = 'HYD'