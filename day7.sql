use user;
#country name containing 'king'
select distinct country from superstore where country like '%king%';    #Containing letter or word witin the col

#country names which cintain 'ia'
select distinct country from superstore where country like '%ia%';

#country names with exactly 5 letters
select distinct country from superstore where country like '_____';

#country names with 5 letters and 6 letters
select distinct country from superstore where country like '_____' or country like '______';

#country names with 6 letters and morethan 6 letters
select distinct country from superstore where country like '______%';

#less than 7 letters
select distinct country from superstore where country not like '_______%'; 

# predicates or fixed keywords ---> like,not like, between and ,distinct
#is, is not,in, not in

					########## NULL, NOT NULL ###########
use user;
select * from student;
drop table student;

create table students(std_id int primary key, std_name char(15), course_id int, email varchar(20),ph_no varchar(20), city varchar(10),fee decimal(10,2), marks int);

insert into students values(1,'ram',101,'ram@gmail.com',98767654,'vjw',35000,88),
(2,'sita',101,'sita@gmail.com',NULL,'vizag',38000,91),
(3,'kavya',NULL,'kavya@gmail.com',98767465,NULL,45000,60),
(4,'yamini',102,NULL,NULL,'hyd',50000,80),
(5,'Rakesh',103,'rakesh@gmail.com',98767544,'blr',53000,75),
(6,'pavan',102,'paven@gmail.com',97875666,'tirupati',44000,92),
(7,'tanuja',103,'tanuja@gmailcom',897653534,NULL,50000,90),
(8,'sandhya',NULL,NULL,96764877,'vjw',42000,91);

select * from students;

#as --->we can give the alias name to the particular column
select std_name as student_name from student;
select std_id as student_id from student;
select ph_no as phone_no from student;

#Arthimatic Operators : +,-,*,/,%
#Display the students who has the even std_id number
select * from student where std_id%2=0;
#Display the students who has the odd std_id number
select * from student where std_id%2!=0;

#increase the student marks
update students set marks=marks+2;
set sql_safe_updates=0;
select * from student;

#Decrease the course fee by 2000 for course_id 102
update students set fee=fee-2000 where course_id=102;

#bitwise operators: and (&), or(|), XOR (^), not(~), leftshift(<<) (2^n), rightshift(>>) 
#byte,1024byte -- 1kb, 1024kb --1mb, 1024mb --1gb, 1024gb --1tb, 1024terab --1petab
select 2&6;
select 2|6;
select 2^6;
select ~2;
select 5<<2;  #5<<2 -- 5*2^2 = 5*4=20
select 5>>2;  #5>>2 -- 5/2^2 = 5/4=1.5
select 5<<4;  #5*2^4 = 5*16 = 80
select 20>>3;  #20/2^3 = 20/8 = 2.5

#Assignment operators  =, :=
#update, set---- =
set @min_sales =2000;
select @min_sales;

#find the sales which greater than the minimum sales
select sales from superstore where sales>@min_sales;

select @max_marks := 80;
select std_name,marks from students where marks>@max_marks;







