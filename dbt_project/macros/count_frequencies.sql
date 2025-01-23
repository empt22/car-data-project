{# macro to do a simple frequency count for a table  #}

{% macro count_frequencies(table, column)  %}
select
    {{ column }} as column_value,
    count(*) as frequency
from {{ ref(table) }}
group by {{ column  }}
order by frequency desc
{% endmacro %}

