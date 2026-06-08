-- Group the orders by date and 
-- calculate the average number of pizzas ordered per day.
select avg(quantity)
from(select orders.order_date,sum(order_details.quantity)
from orders 
join order_details
using(order_id)
group by orders.order_date)as order_quantity;

