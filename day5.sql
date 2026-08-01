use user1;
select * from emps;

#update multiple conditions
# hyd, emp==3,did=102
update emps set city='hyd' where emp_id=3 and dept_id=102; # using logical operator 'and'

create table high_salary_emps(emp_id tinyint, emp_name varchar(30),salary decimal(10,2));

#insert thedata from one table to another
#insert into target_table (col1,col2,..) select col1,col2,... from source_table where codition;
insert into high_salary_emps(emp_id,emp_name,salary) select emp_id,emp_name,salary from emps where salary>40000;
select * from high_salary_emps;


#creating table from another table
#create table new_table as select col1,col2,.. from source_table where condition;

create table low_salary_emps as select emp_id,emp_name,salary from emps where salary < 33000;
select * from low_salary_emps;

		###### Delete ######
# delete will remove only records or data from rows and structure of table remains same in db.
#in delete, if we not use where clause it act like truncate  
# truncate will work faster than delete
# Remove the emps who are working in dept_id 103
delete from emps where dept_id=103;
select * from emps;

#Remove the emps who are working in 102 dept and in blr location
delete from emps where dept_id=102 and city='blr';

#without where clause 
delete from emps;
set sql_safe_updates=0;


#using unsigned data by default and auto increment

create table student1(std_id int primary key auto_increment, std_name varchar(20),age tinyint unsigned);

insert into student1(std_name,age) values('kavya',25),('sai',22);
insert into student1(std_name,age) values('sindhu',-23); # won't work due to we provide it as unsigned
insert into emps values(1,'ram',-28000,101,'ram@gmail.com','vizag'); # it works because we didn't provide signed or unsigned
select * from student1;


############### Start Analysis Mode (DQL) (select) #####################
      ########## new database user for superstore ###########
use user;
select * from superstore;
select country,region,category from superstore;

#get order_id, order_date,customer_name from superstore
select order_id,order_date,customer_name from superstore;

# Get country names
select country from superstore;
# Get unique country names
#distinct ----removes the duplicates and returns only the unique records
select distinct country from superstore; 

#Get category column
select category from superstore;
# Get unique category names
select distinct category from superstore;

