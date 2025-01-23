
select
    fuel as column_value,
    count(*) as frequency
from "dev"."main"."Kaggle_2024_vehicles"
group by fuel
order by frequency desc
