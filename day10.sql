use user;

###### String Functions ######
#String Search Functions -- locate(), position()
#locate(substring, string), position(substring in string)
#position, we can only retrive first occurance of substring
#location, we can retrive N no.of occurences of substring 
select distinct order_id from superstore;
select distinct order_id, locate('-',order_id) as 1st from superstore;
select distinct order_id, position('-' in order_id) as 1st from superstore;

select order_id, locate('-',order_id) 1st, locate('-',order_id,locate('-',order_id)+1) 2nd from superstore;
select locate('@','aarav@gmail.com');
select locate('-','2026-08-23');
select locate(' ','pawan varma') v;
select position('@' in 'aarav@gmail.com');
select position('-' in '2026-08-23');
select position(' ' in 'pawan varma');

#String modification functions -- upper(), lower(), replace(), reverse()
select distinct country from superstore;
select distinct country, upper(country) uppercase, lower(country) lowercase from superstore;
select distinct Customer_Name, upper(Customer_Name) uppercase, lower(Customer_Name) lowercase from superstore;
select * from superstore;
select distinct order_id, reverse(order_id) RV from superstore; 
select distinct city,reverse(city) RV from superstore;
#replace(str,old_substring, new_substring)
select distinct order_id, replace(order_id, '-', '/') RPC from superstore;
select distinct order_id, replace(order_id, 2017,2025) RPC from superstore;
select distinct order_id, replace(order_id, 'ES','IT') RPC from superstore;

#String length functions -- length(), char_length()
#length() -- returns the length in bytes
#char_length() -- returns the length in characters
select distinct order_id,length(order_id) len from superstore;
select distinct country, char_length(country) len from superstore;
select customer_name, length(customer_name) len from superstore;

#String Extraction functions -- left(),right(),mid()/substring()/substr()
#left(string, len), right(string, len), mid(string,starting_position, length)
select distinct order_id,left(order_id,2) code, mid(order_id,4,4) year, right(order_id,7) order_number from superstore;

select distinct customer_name,left(customer_name,locate(' ',customer_name)) first_name,right(customer_name,(length(customer_name)-locate(' ',customer_name))) last_name from superstore;

#String concatenation functions --- concat(), concat_ws()
select distinct concat(customer_name, ',  ', country, ' - ',region) comb from superstore;
select distinct country,customer_name,region,concat_ws(' - ',customer_name, country, region) concat from superstore;
select concat('Happy',' ','New',' ','Year');
select concat_ws(' ','Happy','New','Year');
#in concat - returns null instead of string 
#in concat_ws - returns string ignore null value
select concat('Happy',' ',null,' ','Year');
select concat_ws(' ','Happy',null,'Year');








