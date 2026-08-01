use user1;

#Add multiple columns and drop multiple columns
desc students;

alter table students add column dept_name varchar(20), add column country char(10), drop column course_id;

# To change datatype of a column
# alter table table_name modify column column_name new_datatype;
alter table students modify column city varchar(20);

# change size of a column
# alter table table_name modify column column_name datatype_name(new_value);
alter table students modify column country char(15);

# rename the column name
#alter table table_name rename old_column_name to new_column_name;
#alter table table_name change column old_col new_col datatype;
alter table students rename column std_name to name;
alter table students change column std_id student_id tinyint;

#rename the table by using alter cmd
#alter table old rename to new ; for old versions we need to provide "to" after rename for new versions no need
alter table students rename students_details;
desc students_details;

# rename using rename cmd for table
#rename table old to new;
rename table students_details to students;
desc students;

### DML ###

# enter the records into the table
insert into students values(101,"kavya","kavya@gmail.com",34873758,"Vjw","CSE","IND"); 

select * from students;

insert into students values(102,"Geeta","geeta@gmail.com",6983758,"hyd","CSE","IND"),(103,"Pavan","pavan@gmail.com",9846572,"BLR","Mech","IND"),(104,"Tanuja","tanuja@gmail.com",87365382,"Vizag","ECE","IND");
#for few columns
insert into students(student_id,city,dept_name,country) values(102,"Vjw","EEE","IND");


					#### creating new table with key constraints ####
create table employees(emp_id tinyint primary key, emp_name varchar(20) not null, salary decimal(10,2) check(Salary > 20000), dept_id tinyint not null, city char(20) default "Bangalore", email varchar(20) unique);
desc employees;
