
#non-equi join - if we provide any operator like and,or,between and  other than comparision (=)
#equi join - in on condition using comparision operator (=) is called equi join
use user;
select * from emps;
create table salary_grade(grade varchar(10),min_salary decimal(10,2), max_salary decimal(10,2));
insert into salary_grade values('C',20000,35000),('B',36000,50000),('A',51000,90000);
select * from salary_grade;
select e.emp_name, e.salary,s.grade from emps e join salary_grade s on e.salary between s.min_salary and s.max_salary; 
#between and operator is inclusive operator

#Display only 'A' grade emps
select e.emp_name, s.grade from emps e join salary_grade s on e.salary between s.min_salary and s.max_salary where s.grade='A'; 


#----------------------------- Subquery ----------------------------
#single-row subquery --- comparision operators(=,!=,>,<)
#Multiple-row        --- in, not in, any, all
#Correlated          --- mostly exists/not exists
#Non-Correlated

#Single-row subquery
#find the sales which are greater than the avg sales
select avg(sales) from superstore;
select sales from superstore where sales > (select avg(sales) from superstore);

#find the second highest sale
select max(sales) from superstore;
select max(sales) from superstore where sales < (select max(sales) from superstore);

#find the products whose profit is greater than max profit in 'furniture' category
select max(profit) from superstore where category='Furniture';
select product_name, profit from superstore where profit > (select max(profit) from superstore where category = 'Furniture');

#Display the customer details who placed an order with order_id = 3
select c_id from orders where order_id = 3;
select * from customers where c_id = (select c_id from orders where order_id = 3);

#Display the products purchased in order_id=5
select order_id, prod_id from order_details where order_id=5;
select * from products where prod_id = (select prod_id from order_details where order_id=5);

#multiple row subquery
#find all the orders of the customers who are from england
select distinct customer_name from superstore where state='England';
select distinct customer_name, order_id, state from superstore where customer_name in (select customer_name from superstore where state='England');

#find the sales which are greater than any of the sales in furniture category
select sales from superstore where category='furniture';
select distinct sales from superstore where sales > any (select sales from superstore where category='furniture');

#find the sales which are greater than all the sales in furniture category
select distinct sales from superstore where sales > all (select sales from superstore where category = 'furniture');

select * from superstore;
#find all the orders of the customers who ever placed an order in technology category
select distinct customer_name from superstore where category = 'technology';
select customer_name,category from superstore where customer_name in (select customer_name from superstore where category = 'technology');

#find the custmers who placed atleast an order
select c_id from orders;
select * from customers where c_id in (select c_id from orders); #we can use inner join

#find the product details of costliest product
select max(price) from products;
select * from products where price = (select max(price) from products);
select * from products where price = (select min(price) from products);

#find the products which are purchased atleast once
select * from products where prod_id in (select prod_id from order_details);
select * from products where prod_id not in (select prod_id from order_details); #not purchased any one

#find the custoner who placed the latest order
#find the customers who purchased smartphone
#find the products which costs greater than the avg price of all the products




# Exam question 
#Retrieve films whose film_id has the 2nd bit set (using bitwise AND)






