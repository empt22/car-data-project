{# choose which columns from OpenSoft to use#}

{% macro select_columns(table_name) %}
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
from {{ ref(table_name)  }}

{% endmacro %}
