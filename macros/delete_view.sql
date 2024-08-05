-- macros/delete_view.sql
{% macro delete_view(view_name) %}
    {% set sql %}
    DROP VIEW IF EXISTS {{ view_name }}
    {% endset %}
    {{ run_query(sql) }}
{% endmacro %}
