{{ config(materialized='view') }}

select *
from {{ ref('employee') }}
where location = 'HYD'