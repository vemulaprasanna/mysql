use user;
#display country,category,segment wise maximum sale
select country,category,segment,max(sales) as Max_sale from superstore group by country,category,segment;
select country,category,segment,max(sales) as Max_sale from superstore group by 1,2,3 order by Max_sale desc;
select country,category,segment,max(sales) as Max_sale from superstore group by 1,2,3 where Max_sale > 6000 order by Max_sale desc; #syntax error where is not usable in this case
select country,category,segment,max(sales) as Max_sale from superstore group by 1,2,3 having Max_sale > 6000 order by Max_sale desc;



