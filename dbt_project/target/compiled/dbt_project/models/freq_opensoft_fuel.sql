
select
    fueltype as column_value,
    count(*) as frequency
from "dev"."main"."union_opensoft_models"
group by fueltype
order by frequency desc
