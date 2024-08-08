 select
        id  as order_id,
        user_id as customer_id
    from raw_dbt.jaffle_shop.orders