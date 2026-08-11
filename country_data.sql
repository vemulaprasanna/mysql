CREATE DEFINER=`root`@`localhost` PROCEDURE `country_data`(in c_name varchar(20))
BEGIN
select * from superstore where country=c_name;
END