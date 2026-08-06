use user;

create table emps(emp_id int primary key, emp_name varchar(20), dept_id int, salary decimal(10,2), manager_id int);
insert into emps values (1,'Ram',101,25000,5),(2,'Geetha',102,28000,4),(3,'Sindhu',101,30000,5),(4,'Sandhya',102,35000,6),(5,'Tanuja',101,50000,7),(6,'Praveen',null,42000,7),(7,'Pavan',104,90000,null);

create table depts(dept_id int primary key,dept_name varchar(20));
insert into depts values(101,'IT'),(102,'Sales'),(103,'Marketing'),(104,'CEO'),(105,'HR');

select * from emps;
select * from depts;

#inner join - here we need not to mention inner we can just provide as join
select e.emp_name,d.dept_name from emps e inner join depts d on e.dept_id = d.dept_id;

#Outer - left,right,full joins inder outer joins 
select e.emp_name,d.dept_name from emps e left join depts d on e.dept_id=d.dept_id;
select e.emp_name,d.dept_name from emps e right join depts d on e.dept_id=d.dept_id;

select e.emp_name,d.dept_name from emps e left join depts d on e.dept_id=d.dept_id union select e.emp_name,d.dept_name from emps e right join depts d on e.dept_id=d.dept_id;

select e.emp_name,d.dept_name from emps e cross join depts d;

#self join
select e1.emp_name as employee,e2.emp_name as manager from emps e1 join emps e2 on e1.manager_id = e2.emp_id; 
#to get manager details we have taken emps table with 2 referneces e1,e2 - common columns are manager_id,emp_id

#find the emps who are working in IT dept - here he asked matching records so, we use inner join
select e.emp_name,d.dept_name from emps e join depts d on e.dept_id = d.dept_id where d.dept_name='IT';
#find the emps who are getting the salary above 40k
select emp_name,salary from emps where salary>40000;

#find the emps with their dept names who are getting above 40k
select e.emp_name,d.dept_name, e.salary from emps e join depts d on e.dept_id = d.dept_id where e.salary>40000;

#find the emp who is getting the highest salary among all including with dept name
select e.emp_name, d.dept_name, e.salary from emps e join depts d on e.dept_id = d.dept_id order by e.salary desc limit 1;

select d.dept_name, max(e.salary) as highest_salary from emps e join depts d on e.dept_id = d.dept_id group by d.dept_name order by highest_salary desc limit 1;

#find all the depts including those who has no emps (matching and non-matching) - emp_name
#find all the emps including those who are not belongs to any dept - left-emps/right-emps
#find the dept with highest avg salary - slary in emps e, groupby dept d
