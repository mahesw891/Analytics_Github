{{ config(materialized='table') }}

select * from  ANALYTICS.DATAENGINEER_TEST.MOURITECH

-- {{ source('DATAENGINEER_TEST', 'mouritech') }}
