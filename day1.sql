### DDL ###
#create database database_name;
create database user1;

#use database_name;
use user1;

#create table table_name(col_name datatype,...);
create table students(std_id tinyint, std_name varchar(20), course_id tinyint, email varchar(20), phno varchar(30), city char(20));

#desc table_name; to describe table
desc students;

#alter - to modify the structure of table
# to add or remove column 
# to change the datatype or size
# to rename the column or table
# to add or remove the constraints
# add a column to the existing table
# alter table table_name add column col_name datatype;
alter table students add column state char(10);
desc students;

#Drop an existing column from table
alter table students drop column state;
