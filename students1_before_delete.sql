CREATE DEFINER=`root`@`localhost` TRIGGER `students1_BEFORE_DELETE` BEFORE DELETE ON `students1` FOR EACH ROW BEGIN
insert into students_archive values(old.std_id,old.std_name,old.marks);
END