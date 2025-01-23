
  
  create view "dev"."main"."union_opensoft_models_v1__dbt_tmp" as (
    

with ford as (
select make, model, year, fueltype, city08, highway08
from "dev"."main"."Ford"
)
, hyundai as (
select make, model, year, fueltype, city08, highway08
from "dev"."main"."Hyundai"
)
, jeep as (
select make, model, year, fueltype, city08, highway08
from "dev"."main"."Jeep"
)
, ram as (
select make, model, year, fueltype, city08, highway08
from "dev"."main"."Ram"
)
, dodge as (
select make, model, year, fueltype, city08, highway08
from "dev"."main"."Dodge"
)







select * from jeep
union all
select * from dodge
union all
select * from ram
union all
select * from hyundai
union all
select * from ford
  );
