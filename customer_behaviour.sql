select * from customer2

select gender, sum(purchase_amount) as revenue
from customer2 
group by gender

select avg(purchase_amount)
from customer2

select customer_id, purchase_amount from customer2
where discount_applied='Yes' and purchase_amount >
(select avg(purchase_amount)
from customer2)

Select previous_purchases,item_purchased , avg(review_rating) as "Average_Product_Rating"
from customer2
group by item_purchased 
order by avg(review_rating) desc
limit 5;

select avg(purchase_amount) ,shipping_type
from customer2
where shipping_type in ('Express','Standard')
group by shipping_type

select count(customer_id),avg(purchase_amount),sum(purchase_amount) , subscription_status
from customer2
group by subscription_status

select count(customer_id), subscription_status, avg(purchase_amount)
, sum(purchase_amount)
from customer2
group by subscription_status

select item_purchased, 
ROUND(100*sum(case when discount_applied = 'Yes' Then 1 Else 0 END)/COUNT(*),2) AS discount_rate
from customer2
group by item_purchased
order by discount_rate desc
limit 5

with cte as (
select customer_id, previous_purchases,
case 
    when previous_purchases = 1 THEN 'New'
    when previous_purchases between 2 and 10 THEN 'Returning'
	else 'Loyal'
    end as customer_segment
from customer2
)

with cte as (
select item_purchased, category,
count(customer_id) as total_orders,
row_number() over(partition by category order by count(customer_id) DESC) as item_rank
from customer2
group by item_purchased,category
)

select item_rank,item_purchased , category,
total_orders from cte
where item_rank < 4;



select subscription_status,
count(customer_id) as repeat_buyers
from customer2
where  previous_purchases >5
group by subscription_status


select age_group , sum(purchase_amount) as total_revenue
from customer2
group by age_group
order by total_revenue desc;

