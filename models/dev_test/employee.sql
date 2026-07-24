select 
EMPLOYE_ID AS CUST_ID,
NAME AS EMP_NAME

 FROM {{source('DEV_TEST','EMAPLOYE')}}
 
 