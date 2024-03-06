{% macro extract_date_components(column_name) %}
    extract(year from PARSE_DATE('%m/%d/%Y', {{ column_name }})) as year,
    extract(month from PARSE_DATE('%m/%d/%Y', {{ column_name }})) as month,
    extract(day from PARSE_DATE('%m/%d/%Y', {{ column_name }})) as day,
    extract(dayofweek from PARSE_DATE('%m/%d/%Y', {{ column_name }})) as day_of_week,
    extract(dayofyear from PARSE_DATE('%m/%d/%Y', {{ column_name }})) as day_of_year,
    extract(week from PARSE_DATE('%m/%d/%Y', {{ column_name }})) as week,
    extract(quarter from PARSE_DATE('%m/%d/%Y', {{ column_name }})) as quarter
{% endmacro %}
