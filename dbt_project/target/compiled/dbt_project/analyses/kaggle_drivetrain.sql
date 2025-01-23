
select
    drivetrain as column_value,
    count(*) as frequency
from "dev"."main"."Kaggle_2024_vehicles"
group by drivetrain
order by frequency desc
