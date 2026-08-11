CREATE DEFINER=`root`@`localhost` PROCEDURE `Italy_corporate`()
BEGIN
select * from superstore where country = 'Italy' and segment = 'corporate';
END