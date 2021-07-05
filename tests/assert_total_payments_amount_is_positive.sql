

select 
    order_id
from {{ ref("stg_payments") }}
group by 1
having sum(amount) < 0