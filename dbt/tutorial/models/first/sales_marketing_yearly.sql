-- this is crazy!

select 
    "Year"::varchar(4) as "year",
   sum(nullif(revenue, '')::numeric) as total_revenue
from {{ var('base.sales_marketing') }}
group by 1
order by 1