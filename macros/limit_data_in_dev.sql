{% macro limit_data_in_dev(column_name, dev_days_of_data) %}
{% if target.name == "dev" %}
where {{ column_name }} >= current_timestamp - INTERVAL '{{ dev_days_of_data }}'
{% endif %}
{% endmacro %}