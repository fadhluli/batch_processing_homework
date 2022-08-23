select
	dor.order_id,
	du.user_first_name,
	du.user_last_name,
	SUM(dor.order_total)
from dim_orders dor
join dim_users du on dor.user_id = du.user_id
group by dor.order_id, du.user_first_name, du.user_last_name