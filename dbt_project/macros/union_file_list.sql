
{% macro union_files(file_list) %}
    {# make an empty list to create a SQL query #}
    {% set queries = [] %}

    {# loop over each file name #}
    {% for file in file_list %}
        {# concatenate each select statement tot he list #}
        {# set queries = queries + ["select * from {{ref('" ~ file ~ "')}}"]  #}
        {# set queries = queries.append("select * from {{ ref('" ~ file ~ "') }}")  #}
        {% set queries = queries + ["select * from {{ ref('" ~ file ~ "') }}"] %}
        {{ log("added table", info=True) }}
    {% endfor %}

    {# collapse the list into a single string with "union all" in between each file #}
    {{ queries | join(' union all ') }}
{% endmacro %}
