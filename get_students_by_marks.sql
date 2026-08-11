CREATE DEFINER=`root`@`localhost` PROCEDURE `get_students1_by_marks`(in min_marks int)
BEGIN
select * from students1 where marks>min_marks;
END