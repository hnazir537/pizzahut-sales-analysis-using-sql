-- Join relevant tables to find the category-wise distribution of pizzas.
select category,count(order_id) as total
from pizza_types
join pizzas
using(pizza_type_id)
join order_details
using (pizza_id)
group by category;
