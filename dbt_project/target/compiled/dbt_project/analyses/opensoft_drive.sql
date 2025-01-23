
select
    drive as column_value,
    count(*) as frequency
from "dev"."main"."union_opensoft_models"
group by drive
order by frequency desc
