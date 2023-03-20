{{ config(materialized='table') }}

with source_data as (

    select 'purchase_uid' as purchase_uid,
    'sales' as sales,
    1000000 as turnover
)

select * 
from source_dataxxx