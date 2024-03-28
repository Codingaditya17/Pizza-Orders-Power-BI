select * from pizza_sales

select sum(total_price) as total_revenue
from pizza_sales

select sum(total_price)/count(distinct order_id) as avgvalue from pizza_sales

select  sum(quantity) as totalpizzasold from pizza_sales

select count(distinct order_id ) as totalorders from pizza_sales

SELECT cast(cast(sum(quantity) AS DECIMAL(10, 2)) / cast(count(DISTINCT order_id) AS DECIMAL(10, 2)) as DECIMAL(10,2))AS avgorders 
FROM pizza_sales;

select datename(dw,order_date) as order_day , count(distinct order_id) as totalorders
from pizza_sales
group by  datename(dw,order_date)


select datename(MONTH,order_date) as month_name , count(distinct order_id) as totalorders
from pizza_sales
group by  datename(MONTH,order_date)


select pizza_category ,cast(sum(total_price) as decimal(10,2)) as total_sales, cast(sum(total_price)*100/ (select sum(total_price) from pizza_sales) as decimal(10,2)) as Percentage_total_sales from pizza_sales
group by pizza_category
order by Percentage_total_sales desc


select pizza_size ,cast(sum(total_price) as decimal(10,2)) as total_sales, cast(sum(total_price)*100 / (select sum(total_price) from pizza_sales)
as decimal(10,2)) as Percentage_total_sales from pizza_sales
group by pizza_size
order by Percentage_total_sales desc


select pizza_size ,cast(sum(total_price) as decimal(10,2)) as total_sales, cast(sum(total_price)*100 / (select sum(total_price) from pizza_sales where datepart(QUARTER,order_date) =1 )
as decimal(10,2)) as Percentage_total_sales from pizza_sales
where datepart(QUARTER,order_date) =1 
group by pizza_size
order by Percentage_total_sales desc


select top 5 pizza_name ,sum(total_price) as total_revenue from pizza_sales
group by pizza_name
order by total_revenue desc

select top 5 pizza_name ,cast(sum(total_price) as decimal(10,2))  as total_revenue from pizza_sales
group by pizza_name
order by total_revenue 

select top 5 pizza_name ,sum(quantity) as total_quantity from pizza_sales
group by pizza_name
order by total_quantity desc

select top 5 pizza_name ,sum(quantity) as total_quantity from pizza_sales
group by pizza_name
order by total_quantity 


select top 5 pizza_name ,count(distinct order_id) as total_orders from pizza_sales
group by pizza_name
order by total_orders desc


select top 5 pizza_name ,count(distinct order_id) as total_orders from pizza_sales
group by pizza_name
order by total_orders 



























