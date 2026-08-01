use user;
select * from superstore;
# Get unique category names
select distinct category from superstore;

# Get category,region,sales columns
select category,region,sales from superstore;

# Get unique country names
select distinct country from superstore;

#get unique regions 
select distinct region from superstore;

#get unique country,region 
select distinct country,region from superstore;  #it will give set of columns value as unique

#get unique records of country,category,segment columns
select distinct country,category,segment from superstore;

#get sales from superstore
select sales from superstore;
select distinct sales from superstore;

#sort the records ascending or descending we will use orderby
#if we don't mention it will take it as ascending order
select distinct sales from superstore order by sales asc;
select distinct sales from superstore order by sales desc;

select distinct country from superstore order by country asc;
select distinct country from superstore order by country desc;

#get the country col in alphabetical order and sale col in higest-lowest order
select distinct country,sales from superstore order by country, sales desc;
select distinct country,sales from superstore order by country asc, sales desc;
# both queries works as same and gives same result, by default order by take country in asc

#where ---- clause used to filter out the data
#oreder by ----- clause used to sort the result either in asc or desc order and it must be place end of query
#get germany country's data 
select * from superstore where country="germany"; #will fetch all records related to germany

select distinct country from superstore where country="germany"; #will fetch only country germany

select * from superstore where sales<500;

#get the countries which have sales greater than 2000
select country,sales from superstore where sales > 2000;
select distinct country,sales from superstore where sales > 2000;

#get the sales between 500-1000
select distinct sales from superstore where sales between 500 and 1000 order by sales; # between,and are inclusive and preditive
#without using between, and operators
select distinct sales from superstore where sales >=500 and sales <=1000 order by sales;

#get the unique countries between finland to spain
select distinct country from superstore where country between "finland" and "spain" order by country;

#get the country names 'italy' ans 'spain'
select distinct country from superstore where country='italy' and country='spain'; #no output because country col don't have both on same record
select distinct country from superstore where country='italy' or country='spain';

#get country names germany,france,italy,india and spain
select distinct country from superstore where country='italy' or country='spain' or country='france' or country='india' or country='germany';
#without using or operator, that we can use membership operators ('in', 'not in')
select distinct country from superstore where country in ('germany','france','italy','india','spain'); 
select distinct country from superstore where country not in ('germany','france','italy','india','spain');

#except 'germany' need all remaining countries
select distinct country from superstore where country!='germany'; #!=,<>
select distinct country from superstore where country<>'germany';
select distinct country from superstore where country not in ('germany');

#country shound be france and germany and sales > 500
select distinct country,sales from superstore where country='france' or country='germany' and sales>500; #take each one as one condition, here we have 3 conditions
select distinct country,sales from superstore where (country='france' or country='germany') and sales>500; #it takes country as one condition and sales as another condition
select distinct country,sales from superstore where country in ('france','germany') and sales>500;
select distinct country,sales from superstore where country in ('france','germany') and sales>500 order by country;

#----------- Pattern Matching----------
#like, not like
#countries starting with 'I' letter
select distinct country from superstore where country like 'i%'; #starts with

#countries ending with 'a' letter
select distinct country from superstore where country like '%a'; #ends with

#countries starts with 's' letter
select distinct country from superstore where country like 's%';

#countries starts with 'i' and ends with 'a';
select distinct country from superstore where country like 'i%' and country like '%a';

#get countries ending with 'land'
select distinct country from superstore where country like '%land';
#get countries not starts with 's'
select distinct country from superstore where country not like 's%';

