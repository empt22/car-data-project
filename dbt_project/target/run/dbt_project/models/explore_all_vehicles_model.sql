
  
  create view "dev"."main"."explore_all_vehicles_model__dbt_tmp" as (
    select *
from "dev"."main"."all_vehicles_model"
  );
