{{
    config(materialized='table')
}}

select
    shops.shop_id,
    orders.order_id,
    orders.amount
from {{ ref('stg_poffertjes_shop__shops') }} shops
left join {{ ref('stg_poffertjes_shop__orders') }} orders
on shops.shop_id = orders.shop_id
