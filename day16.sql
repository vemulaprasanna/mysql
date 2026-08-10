use user;
select * from superstore order by order_date desc;
select * from customers; #c_id,c_name,age,city
select * from orders;    #order_id,order_date,c_id
select * from products;  #p_id,p_name,price
select * from order_details; #od_id,order_id,prod_id,quantity


#find the custoner who placed the latest order
SELECT customer_name,product_name,order_date FROM superstore
WHERE order_date = (SELECT MAX(order_date) FROM superstore);

#find the customers who purchased smartphone
select c.c_name,p.prod_name from customers c join orders o on c.c_id = o.c_id join order_details od on od.order_id = o.order_id join products p on p.prod_id = od.prod_id 
where p.prod_id = (select prod_id from products where prod_name='smartphone');

SELECT c_name FROM customers where c_id in (select c_id from orders where order_id in (select order_id from order_details where prod_id = (select prod_id from products where prod_name ='smartphone')));

#find the products which costs greater than the avg price of all the products
SELECT * FROM products WHERE price > (SELECT AVG(price) FROM products);


#Correlated subquery --- The inner query depends on outer query and for every run of the outer query, the inner query runs again
#--- Here we'll use the operators (Exists, Not exists)
#Non-Correlated subquery --- The inner query doesn't depend on outer query and inner query runs only once
#Exista --- Checks whether the inner query returns records or not irrespective of the related data. 
#--- If the inner query returns atleast one row it acts like "True" otherwise "False"

#Find the customes who placed at least one order
#Non-Correlated subquery
select c_id,c_name from customers where c_id in (select c_id from  orders);
#Joins
select c.c_id,c.c_name from customers c join orders o on c.c_id = o.c_id;
#Correlated subquery
select c.c_id,c.c_name from customers c where exists (select 1 from orders o where c.c_id = o.c_id);

#Find the sales which are greater than the avg sals of their own category
select sales,category from superstore s1 where sales > (select avg(sales) from superstore s2 where s1.category = s2.category);


##---------------------- Views ------------------------
#view is like a virtual table. With views we can restric the query to the end user
#It stores only the query, so we can reuse it 
# Create view view_name as select  ...

# Find records from superstore from country germany
select * from superstore where country='germany';
create view germany as select * from superstore where country='germany'; #creates view as germany
select * from germany;
select * from superstore where country='germany' and sales > 500; #filtering the original table
select * from germany where sales > 500; #filtering the view

#Create a view for the superstore data, but the country should be either 'france' or italy and sales > 500
select * from superstore where country in ('italy','france') and sales >500;
create view france_italy as select * from superstore where country in ('italy','france') and sales >500;
select * from france_italy;
select * from sales;
select country,category,sales from france_italy;
desc france_italy; 

####
create view sub_superstore as select country,category,sales from superstore;
select * from sub_superstore;

alter view sub_superstore as select country, category, sales, region from superstore;

create or replace view sub_superstore as select country,category,sales,region,segment from superstore;
select * from sub_superstore;

drop view sales;

create table accounts(acc_id int, amount decimal(10,2));
insert into accounts values(101,100000),(102,4000);
select * from accounts;

# -------------------- TCL Commands ---------------------
#start transaction / begin






