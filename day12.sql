use user;
show tables;
show databases;
#-------------------------- System Information Function -----------------------------#

select version();    #returns the mysql version
select database(); #return the current database name
select user(); #return user name and hostname
select connection_id(); #return the unique id of current connection/session
select @@hostname;  #return the computer OS hostname
select @@version;   #return the version
select row_count();  #return the no.of rows affected by the last statement
select last_insert_id();  #returns last auto_increament value generated in this session


#---------------- Set Operations -----------------------#
# Union - Combines the result from both the queries and removes duplicates.
# UnionAll - combines result from both the queries including duplicates
# intersect - returns the common records from both the queries (version: 8.0.31+)
# except - returns the records which are in 1st query but not in 2nd query (version: 8.0.31+)

create table online_orders(c_id int,c_name char(15));
insert into online_orders values(101, 'Tanija'),(102, 'Ram'),(103,'Pavan'),(104,'Lilly'),(105,'Sam');

create table store_orders(c_id int,c_name char(15));
insert into store_orders values(103,'Pavan'),(104,'Lilly'),(106,'Kiran'),(107,'Sindhu'),(108,'Sasi');

#Get the customers who purchased both online and in-store
# in both tables, we need to select same no.of columns (n==n)(2=2)
select c_id,c_name from online_orders union select c_id,c_name from store_orders;

#get all records from both tables
select c_id,c_name from online_orders union all select c_id,c_name from store_orders;

select * from online_orders union select * from store_orders;
select * from online_orders union all select * from store_orders;

#get the customer details who purchased in both online and store
select c_id,c_name from store_orders intersect select c_id,c_name from online_orders;  
#becuase of previous versions set operators(intersect,except) appear like error but these are executable/useful

#Get the customers who only ordered in store but not in online
select c_id,c_name from store_orders except select c_id,c_name from online_orders;

#---- imported csv file from local to database user by using "import wizard" on db
select * from myemp;

# emp_salary > 10000 -- 'good' else bad
#if(condition, value_if_true, value_if_false)
select first_name, salary, if(salary>10000,'good','bad') as status from myemp;
# without using if
select first_name, salary, case when salary > 10000 then 'good' else 'bad' end status from myemp;

#salary > 15000 -- good, between 10-15 -- ok, <10000 -- bad
select first_name, salary, if(salary>15000,'good',if(salary<10000,'bad','ok')) as status from myemp; #logic-1
select first_name, salary, if(salary<10000,'bad',if(salary>15000,'good','ok')) as status from myemp; #logic-2
select first_name, salary, case when salary>15000 then 'good' when salary<10000 then 'bad' else 'ok' end as status from myemp;

#sales > 5000 then good, between 2k-5k then avg, below 2000 then bad
select * from superstore;
select sales, if(sales>5000,'good',if(sales<2000,'bad','avg')) as status from superstore order by sales desc;
select sales, case when sales>5000 then 'good' when sales<2000 then 'bad' else 'avg' end as status from superstore;

------------ Joins ----------------------
#joins       -- to join the data from two or more tables based on condition(common column)
# Inner join -- return only the matchong records from both the tables
# Left join  -- return all the records from the left table and only the matching records from the right table
# Right join -- return all the records from right table and only the matching records from left table
# Full join  -- returns all the records from both tables (both matching and non-matching)
# cross join -- returns cartesian product of both tables
# self join  -- a table joins with itself
#equi join, non-equi join, natural join



