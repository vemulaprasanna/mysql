
use user;
select * from students1;
# Before update
update students1 set marks = 35 where std_id=1;
set sql_safe_updates=0;
#After update
update students1 set marks=80 where std_name='sita';
select * from students_audit;

#before delete
create table students_archive(std_id int,std_name varchar(20),marks int);
select * from students_archive;
delete from students1 where std_name='geeta' and std_id=2;

#If i delete a record from students table, I should get a record like 
#"Students data deleted" in the students_audit table
delete from students1 where std_id=2;

#drop stored procedue
drop procedure country_data;
drop procedure if exists get_students;
drop procedure if exists get_students1_by_marks;

#drop trigger trigger_name
#drop trigger if exists trigger_name
drop trigger if exists students1_BEFORE_UPDATE;

