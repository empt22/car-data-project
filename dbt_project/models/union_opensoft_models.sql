{# union to stack all make-specific API calls into one table #}

with ford as (
select make, model, year, fueltype, city08, highway08
from {{ ref('Ford') }}
)
, hyundai as (
select make, model, year, fueltype, city08, highway08
from {{ ref('Hyundai') }}
)
, jeep as (
select make, model, year, fueltype, city08, highway08
from {{ ref('Jeep') }}
)
, ram as (
select make, model, year, fueltype, city08, highway08
from {{ ref('Ram') }}
)
, dodge as (
select make, model, year, fueltype, city08, highway08
from {{ ref('Dodge') }}
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


