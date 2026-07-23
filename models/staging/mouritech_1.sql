{{ config(materialized='table') }}

select * from  ANALYTICS.DATAENGINEER_TEST.mouritech

-- {{ source('DATAENGINEER_TEST', 'mouritech') }}
