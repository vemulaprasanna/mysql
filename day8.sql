
use user;
select * from students;

select * from students where city is null;
select * from students where city is not null;

#Display the students who has both course_id and city
select * from students where city is not null and course_id is not null;

#isnull(), ifnull(), coalesce()
select std_name,city, isnull(city) from students;   #isnull() is act as both operator and function which is true gives 1 (no value) or 0 (value)
select std_name,course_id, isnull(course_id) from students;
select std_name,course_id, isnull(course_id) as missing_course_id from students; #here we provide alias as missing_course_id for isnull(course_id)

select* from students;

# ifnull() - it is a function, where we can place or replace value with null  
select std_name,ph_no, ifnull(ph_no,'Not privided') from students;
select std_name,course_id,ifnull(course_id, 'Not Registered') as missing_c_id from students; #ifnull take only one column as input

#coalesce() is used to check more then one column
select std_name,coalesce(ph_no, email,'Not Provided') as available_contact from students;

#exists, not exists used in sub-query concept

#Aggregate functions -- sum,avg,count,min,max
select * from superstore;
select sum(sales) as total_sales from superstore;
select avg(sales) as average_sales from superstore;
select sum(profit) as total_profit from superstore;
select max(sales) as Higest_sales from superstore;
select min(sales) as Lowest_sales from superstore;
select count(sales) as sales_count from superstore;

#get total sales for each country
#group by -- is a clause used to group the data
select country,sum(sales) as Total_sale from superstore group by country; #here we use 'group by' clause, all sales of one country form as one group

#Find category wise total sales
select category,sum(sales) as Total_sale from superstore group by category;
select category,sum(sales) as Total_sale from superstore;
#Error will rise if we donot provide group by cluase
/*0	25	12:27:02	select category,sum(sales) as Total_sale from superstore	
Error Code: 1140. In aggregated query without GROUP BY, expression #1 of SELECT list contains nonaggregated column 'user.superstore.Category'; 
this is incompatible with sql_mode=only_full_group_by	0.000 sec*/

#Note: ---non-aggregation columns must be in group by clause otherwise we will get error: incompatible
select region,max(sales) as higest_sale from superstore group by region;
select category, avg(sales) as Average_sale from superstore group by category;
select distinct segment from superstore;

#Find country and segment wise total sales
select country,segment,sum(sales) as total_sales from superstore group by country,segment;
select country,segment,sum(sales) as total_sales from superstore group by country,segment order by total_sales desc ;

#Get country,segment,category wise total and avg sale
select country,segment,category,sum(sales) as Total_sale,avg(sales) as avg_sale from superstore group by 1,2,3; 
#1,2,3 represents columns(country,segment,category) in query
select country,segment,category,sum(sales) as Total_sale,avg(sales) as avg_sale from superstore group by 1,2,3 order by Total_sale desc;
select country,segment,category,sum(sales) as Total_sale,avg(sales) as avg_sale from superstore group by 1,2,3 order by Total_sale,avg_sale desc;

