
  
  create view "dev"."main"."freq_opensoft_fuel__dbt_tmp" as (
    
select
    fueltype as column_value,
    count(*) as frequency
from "dev"."main"."union_opensoft_models"
group by fueltype
order by frequency desc

  );
