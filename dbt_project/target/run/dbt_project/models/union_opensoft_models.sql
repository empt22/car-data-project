
  
  create view "dev"."main"."union_opensoft_models__dbt_tmp" as (
    

with ford as (
    
select
    make,
    model,
    year,
    fueltype,
    fueltype1,
    drive,
    basemodel,
    uhighway,
    ucity,
    highway08,
    city08,
    atvtype,
    vclass,
    highwaye,
    citye
from "dev"."main"."Ford"


)
, hyundai as (
    
select
    make,
    model,
    year,
    fueltype,
    fueltype1,
    drive,
    basemodel,
    uhighway,
    ucity,
    highway08,
    city08,
    atvtype,
    vclass,
    highwaye,
    citye
from "dev"."main"."Hyundai"


)
, jeep as (
    
select
    make,
    model,
    year,
    fueltype,
    fueltype1,
    drive,
    basemodel,
    uhighway,
    ucity,
    highway08,
    city08,
    atvtype,
    vclass,
    highwaye,
    citye
from "dev"."main"."Jeep"


)
, ram as (
    
select
    make,
    model,
    year,
    fueltype,
    fueltype1,
    drive,
    basemodel,
    uhighway,
    ucity,
    highway08,
    city08,
    atvtype,
    vclass,
    highwaye,
    citye
from "dev"."main"."Ram"


)
, dodge as (
    
select
    make,
    model,
    year,
    fueltype,
    fueltype1,
    drive,
    basemodel,
    uhighway,
    ucity,
    highway08,
    city08,
    atvtype,
    vclass,
    highwaye,
    citye
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
