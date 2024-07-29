-- models/test/unique_table_id.sql
{% set model = ref('my_first_dbt_model') %}

{{ dbt_utils.unique(
    model=model,
    column='id'
) }}
