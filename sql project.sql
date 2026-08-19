SELECT * FROM superstore_sales_data_set.`superstore salee`;

select
category,
sum(sales) as total_sales,
sum(profit) as total_profit,
sum(quantity) as total_quantity
from `superstore_sales_data_set`.`superstore salee`
group by category
order by total_sales desc;

select 
`Customer Name`,
sum(sales) as total_sales 
from `superstore_sales_data_set`.`superstore salee`
group by `Customer Name`
order by total_sales desc
limit 5;

select 
region,
round(avg(discount),3) as
 avg_discount
from `superstore_sales_data_set`.`superstore salee`
group by Region
order by avg_discount desc;

select
month,round (sum(sales),2) as total_sales
from `superstore_sales_data_set`.`superstore salee`
where year = (select max(year) from `superstore_sales_data_set`.`superstore salee`)
group by month 
order by month;

select
 `state`,round(avg(`profit margin`),3)avg_margin
from `superstore_sales_data_set`.`superstore salee`
group by `state`
order by avg_margin
limit 1;

select
`Order ID`,`shipping days`,`Order Date`
from
`superstore_sales_data_set`.`superstore salee`
where `shipping days` > 5;

Select
`Ship Mode`,round(avg(`shipping days`),2) avg_days
from
 `superstore_sales_data_set`.`superstore salee`
 group by `Ship Mode`
 order by avg_days desc;

select
`region`,
`product name`,
round(sum(`profit`),2) as total_profit
from 
`superstore_sales_data_set`.`superstore salee`
group by `region`,`product name`
order by `region`, total_profit desc;

select
`Category`,
round(sum(sales),2)
total_revenue,
round(avg(`profit margin`),3)
avg_margin
from 
`superstore_sales_data_set`.`superstore salee`
group by `Category`
order by total_revenue desc,avg_margin 
limit 1 ;

select
`order id`,
`product name`,
`discount`,
`sales`,
`profit`
from `superstore_sales_data_set`.`superstore salee`
where `discount` > 0.3
order by `discount` desc,`profit` asc;




