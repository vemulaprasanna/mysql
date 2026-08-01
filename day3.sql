use user1;
create table emps (emp_id tinyint,emp_name varchar(15),salary decimal(10,2),dept_id tinyint,email varchar(20),city char(10));
desc emps;

###add constraints to the existing table
-- add primary key to a column
#alter table table_name add constraint constraint_name primary key(col)
alter table emps add constraint prk_emp_id primary key(emp_id);
desc emps;

-- add unique key to a column
#alter table table_name add constraint constraint_name unique(col)
alter table emps add constraint unique_email unique(email);
desc emps;
alter table emps add constraint chk_salary check (salary > 20000);

-- add default 
#alter table table_name alter column col_name datatype set default 'Value';
alter table emps alter column city set default 'Hyd';

-- add not null 
#alter table table _name modify column col_name datatype not null;
alter table emps modify column emp_name varchar(15) not null;
desc emps;

create table depts (dept_id tinyint primary key, dept_name varchar(10));
create table employee(emp_id tinyint primary key, emp_name varchar(20),dept_id tinyint,foreign key(dept_id) references depts(dept_id));
#foreign key(child_col_name) references parent_table_name(parent_col_name)
desc employee;

-- add foreign key to the existing table 
# alter table table_name add constraint_name foreign key(child_col_name)references parent_table_name(parent_col_name)
alter table emps add constraint fk_dept_id foreign key(dept_id) references depts(dept_id);
desc emps;
desc employee;