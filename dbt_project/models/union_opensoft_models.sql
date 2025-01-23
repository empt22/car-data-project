{# union to stack all make-specific API calls into one table #}

with ford as (
    {{ select_columns('Ford') }}
)
, hyundai as (
    {{ select_columns('Hyundai') }}
)
, jeep as (
    {{ select_columns('Jeep') }}
)
, ram as (
    {{ select_columns('Ram') }}
)
, dodge as (
    {{ select_columns('Dodge') }}
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


