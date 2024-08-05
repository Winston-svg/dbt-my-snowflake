-- macros/delete_table.sql
{% macro delete_table(table_name) %}
{% set sql %}
DROP TABLE IF EXISTS {{ table_name }}
{% endset %}
{{ run_query(sql) }}
{% endmacro %}
