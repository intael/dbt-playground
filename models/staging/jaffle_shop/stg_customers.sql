
with customers as (

    select
        id as customer_id,
        first_name,
        last_name

    from learning.jaffle_shop_customers

)

select * from customers