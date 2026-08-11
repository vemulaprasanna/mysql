CREATE DEFINER=`root`@`localhost` PROCEDURE `students_count`(out total_students int)
BEGIN
select count(*) into total_students from students1;
END