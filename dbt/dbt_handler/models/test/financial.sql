{{ config(materialized='table') }}

with source_data as (

    select 'purchase_id' as purchase_id,
    'sales' as sales,
    1000000 as turnover
)

select * 
from source_data