{{ config(materialized='table') }}

select * from  {{ source('DATAENGINEER_TEST', 'mouritech') }}
