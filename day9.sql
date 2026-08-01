use user;
#display country,category,segment wise maximum sale
select country,category,segment,max(sales) as Max_sale from superstore group by country,category,segment;
select country,category,segment,max(sales) as Max_sale from superstore group by 1,2,3 order by Max_sale desc;
select country,category,segment,max(sales) as Max_sale from superstore group by 1,2,3 where Max_sale > 6000 order by Max_sale desc; #syntax error where is not usable in this case
select country,category,segment,max(sales) as Max_sale from superstore group by 1,2,3 having Max_sale > 6000 order by Max_sale desc;

#display the total sale for the countries germany,spain,italy,france,ukand total sale value should be greater than 20000
select country,sum(sales) as Total_sale from superstore where country in ('germany','spain','italy','france','united kingdom') group by country having Total_sale > 20000 order by Total_sale desc;

#limit is used to get how many values do we need
#offset is used to skip the values 
select distinct sales from superstore order by sales desc limit 5;			    #returns top 5 values
select distinct sales from superstore order by sales asc limit 5; 				#returns bottom 5 values
select distinct sales from superstore order by sales desc limit 1 offset 1; 	#second highest sale
select distinct sales from superstore order by sales desc limit 1 offset 2; 	#third highest sale
select distinct sales from superstore order by sales desc limit 2 offset 1; 	#second and third highest sales

select distinct sales from superstore order by sales desc;
select distinct sales from superstore order by sales desc limit 1 offset 1; #second highest
select distinct sales from superstore order by sales desc limit 1 offset 3; #4th highest
select distinct sales from superstore order by sales desc limit 2 offset 3; #4th and 5th highest
select distinct sales from superstore order by sales asc limit 1; 			# 1st lowest
select distinct sales from superstore order by sales asc limit 1 offset 2;  # 3rd lowest
select distinct sales from superstore order by sales asc limit 2 offset 5;  #6th and 7th lowest 

#Scalar Functions -- round(), ceil()/ceiling(), floor(), truncate()
select round(74.982);
select round(74.321);
select ceil(74.321);
select ceil(74.982);
select floor(74.981);
select floor(74.231);
select round(74.9821,2);
select round(74.9873,2);
select truncate(74.9873,2);

