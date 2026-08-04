use user;
# String trim & padding functions -- trim(), ltrim(), rtrim()
#Trim() --- rims the leading and trailing spaces
#LTrim() --- trims only the leading spaces
#RTrim() --- trims only the trailing spaces
#Lpad() --- pads the string on left to the total length -- lpad(str,len,p)
#Rpad() --- pads the string on right to the total length -- rpad(str,len,p)

select trim(' happy ');
select trim('    destiny');
select ltrim('  happy');
select rtrim('happy  ');

select lpad('abcd',12,'X');
select lpad(7,4,0);
select rpad('ab',5,'*');

########### ------------------Date Functions------------------ ############
select now;
select current_timestamp();
select curdate();
select current_date();
select curtime();
select current_time();
select date('2026-08-01');

# Date Extraction Functions
select year('2026-08-23');
select month('2026-08-23');
select monthname('2026-08-23');
select day('2026-08-23');
select dayname('2026-08-23');
select week(curdate());
select weekday(curdate()); #mon=0, tues=1
select dayofweek(curdate()); #sun=1,mon=2
select dayofmonth(curdate());
select dayofyear(curdate());
select quarter(curdate());
select date_format(curdate(), '%W/%m/%y');

#%d -- day number -- 1,2,3
#%m -- month numbers -- 1,2,3,4
#%y -- short year numbers - 26,25,24
#%W -- full day name - Monday,friday
#%M -- full month name -- August, march
#%Y -- full year number - 2024,2025
#%a -- short day name - Mon, Tue
#%b -- short month name - aug,sep
#%D -- date with suffix - 1st,10th

#date aggregation functions
select datediff('2026-08-01','2026-07-01');
select date_add(curdate(), interval 10 day);
select date_sub(curdate(), interval 10 day);

select distinct order_date,ship_date from superstore;
#Extract year,month,monthname,dayname,week and quarter from order_date
select distinct order_date,year(order_date) yr, month(order_date) mnth, monthname(order_date) mnth_name, dayname(order_date) day_name, week(order_date) wk, quarter(order_date) quart from superstore;

select distinct order_date,ship_date, datediff(ship_date,order_date) as shipping_days from superstore;
select distinct order_date,date_add(order_date, interval 10 day) as expected_date from superstore;
select distinct order_date, date_sub(order_date, interval 30 day) as previous_month from superstore;
select distinct order_date,date_format(order_date, '%d-%b-%Y') Modified_date from superstore;
select distinct order_date, date_format(order_date, '%a/%M/%y') Modified_date from superstore;

select order_id, year(order_date) as yr from superstore where year(order_date) = 2022;
select distinct order_id,monthname(order_date) as mn from superstore where monthname(order_date)= 'october';
select order_id,monthname(order_date) as mn from superstore where monthname(order_date)= 'october';

select year(order_date) as yr, count(order_id) as Total_order from superstore group by 1; #we can place * instead of order_id in count()

select count(order_id), month(order_date) from superstore group by 2;
select month(order_date),count(order_id) as total from superstore group by 1 order by 1;

#convert the date from str to date
select '15-08-2023', str_to_date('15-08-2023','%d-%m-%y');



