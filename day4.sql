
use user1;

# Drop constraints using alter cmd
# ---drop primary key
# alter table table_name drop constraint primary key;
alter table emps drop primary key;
desc emps;

# ---drop unique constraint 
# alter table table_name drop index constraint_name; # unique stored as index
alter table emps drop index uq_email;
alter table emps drop index prk_email;
#--drop check constraint
#alter table table_name drop check constraint_name;
alter table emps drop check chk_salary;

#---drop not null
#alter table table_name modify column col_name datatype null;
alter table emps modify column emp_name varchar(15) null;

#---drop default constraint
#alter table table_name alter column col_name drop default;
alter table emps alter column city drop default;

#---drop foreign key constraint
#alter table table_name drop foreign key contraint_name;
alter table emps drop foreign key fk_dept_id;
desc depts;
desc employee;

alter table depts drop primary key; # getting error becuase we created in both emps and employee tables
alter table employee drop foreign key employee_ibfk_1;
alter table depts drop primary key;
desc depts;
desc emps;

insert into emps values(1,'kavya',30000,101,'kavya@gmail.com','vjw'),(2,'pavan',50000,101,'pavan@gmail.com','blr'),(3,'geetha',28000,102,'geetha@gmail.com','vjw'),(4,'sindhu',35000,101,'sindhu@gmai.com','blr'),(5,'praveen',33000,102,'praveen@gmail.com','hyd');

insert into emps (emp_id,emp_name,salary,email,city) values(6,'sandhya',40000,'sandhya@gmail.com','hyd');

insert into emps values(7,'Taruni',28000,102,'taruni@gmail.com',null);

desc emps;
select * from emps;

					########## Update ############
#update table_name set col_name=value where column=value;
#where clause is used in update,delete,select
update emps set city='blr' where emp_id=1; # getting error using safe update mode
set sql_safe_updates=0;

update emps set salary = salary+3000 where salary=28000;

#update Taruni's city to 'blr'
update emps set city='blr' where city is null;    # using membership operator 'is', 'is not'
update emps set dept_id=103 where dept_id is null;


