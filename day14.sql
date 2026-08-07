
use user;

#find all the depts including those who has no emps (matching and non-matching) - emp_name
select e.emp_name,d.dept_name from emps e right join depts d on e.dept_id = d.dept_id;
select e.emp_name,d.dept_name from depts d left join emps e on e.dept_id = d.dept_id;

#find employees who are not available
select e.emp_name,d.dept_name from depts d left join emps e on e.dept_id = d.dept_id where e.emp_name is null;

#find all the emps including those who are not belongs to any dept - left-emps/right-emps
select e.emp_name,d.dept_name from emps e left join depts d on e.dept_id=d.dept_id;
select e.emp_name,d.dept_name from emps e left join depts d on e.dept_id=d.dept_id where d.dept_id is null ;

#find the dept with highest avg salary - slary in emps e, groupby dept d
select d.dept_name, avg(e.salary) as avg_salary from emps e join depts d on e.dept_id=d.dept_id group by d.dept_id order by avg_salary desc limit 1;

select * from customers; #c_id,c_name,age,city
select * from orders;    #order_id,order_date,c_id
select * from products;  #p_id,p_name,price
select * from order_details; #od_id,order_id,prod_id,quantity

#Display c_name and order date
select c.c_name,o.order_date from customers c join orders o on c.c_id=o.c_id;

#get prod_name and quantity
select p.prod_name,o.quantity from products p join order_details o on p.prod_id=o.prod_id;

#get customr name product name, price and order_date
select c.c_name,p.prod_name,p.price,o.order_date from customers c join orders o on c.c_id=o.c_id join order_details od on od.order_id = o.order_id join products p on p.prod_id = od.prod_id;

#display the prod_name purchased by kavya
select c.c_name,p.prod_name from customers c join orders o on c.c_id=o.c_id join order_details od on od.order_id = o.order_id join products p on p.prod_id = od.prod_id where c.c_name='kavya';

#display the customers who purchased 'smartphone'
select c.c_name,p.prod_name from customers c join orders o on c.c_id=o.c_id join order_details od on od.order_id = o.order_id join products p on p.prod_id = od.prod_id where p.prod_name='smartphone';

#Display the customers who are from 'hyd' along with the products they purchased
select c.c_name,c.city,p.prod_name from customers c join orders o on c.c_id=o.c_id join order_details od on od.order_id = o.order_id join products p on p.prod_id = od.prod_id where c.city='hyd';

#Display the customers and the no.of orders each customer placed
select c.c_name, count(o.c_id) total_orders from customers c join orders o on c.c_id=o.c_id group by c.c_name; 
select c.c_name, count(o.c_id) total_orders from customers c join orders o on c.c_id=o.c_id group by 1 order by count(o.c_id) desc limit 1; 

#Display the products and how many times each product placed
select p.prod_name,count(od.prod_id) total_count from products p join order_details od on od.prod_id=p.prod_id group by 1;

#Display all the customers including those who never placed an order
select c.c_name,o.order_id from customers c left join orders o on c.c_id=o.c_id; 
select c.c_name,o.order_id from orders o right join customers c on c.c_id=o.c_id; 

#Display the total expenditure of each customer
select c.c_name,sum(p.price*od.quantity) as expenditure from customers c join orders o on c.c_id=o.c_id join order_details od on od.order_id = o.order_id join products p on p.prod_id = od.prod_id group by 1 having expenditure>100000;

#Natural join is also sub-set of equi join
select * from customers natural join orders;

