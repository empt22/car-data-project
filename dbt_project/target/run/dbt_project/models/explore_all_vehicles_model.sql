
  
  create view "analysis"."main"."explore_all_vehicles_model__dbt_tmp" as (
    select *
from "analysis"."main"."all_vehicles_model"
  );
