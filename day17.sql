use user;

# ----------------------------- Stored Procedure ---------------------
# It is used to store the query/procedure to reuse in any query to retrive data from db
call Italy_corporate;

create table students1 (std_id int, std_name varchar(20), marks int);
insert into students1 values(1,'Ram',82),(2,'sita',75),(3,'Geeta',92);
call students_details;

# IN    --- we'll send a value into the procedure
# OUT   --- we'll get a value out of the procedure
# InOut --- we'll send a value and then will get a value out of the procedure

#-- IN --
#Find the students who got the marks above the given value
call get_students1_by_marks(90);

#-- OUT --
#Get total students
set @total_students = 0;
call user.students_count(@total_students);
select @total_students;


#-- INOUT --
# double the given value
set @number = 20;
call user.double_number(@number);
select @number;


# Get details for given country name
call country_data('Germany');




### ----------------- Triggers -------------------
# Trigger is a database object that executes automatically when a specified even occurs in a table (or) -- used to create/enter the valid data
# DML --- Insert, Update, Delete
# Before Insert, After Insert
# Before Update, After Update
# Before Delete, After Delete

# Before  --- Trigger runs, before DML operation happens
# After   --- Trigger runs, after DML operation happens

drop table students1;
create table students1 (std_id int, std_name varchar(20), marks int);
select * from students1;
create table students_audit (message varchar(100));

#Before insert
insert into students1 values(1,'ram',120);
select * from students_audit;
#After insert
insert into students1 values(2,'sita',150);
insert into students1 values(3,'geeta',95);














