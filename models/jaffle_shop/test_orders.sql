 select
        id ,
        user_id as customer_id,
        order_date,
        status

    from raw_dbt.jaffle_shop.orders