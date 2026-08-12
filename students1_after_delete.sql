CREATE DEFINER=`root`@`localhost` TRIGGER `students1_AFTER_DELETE` AFTER DELETE ON `students1` FOR EACH ROW BEGIN
insert into students_audit values('Student data deleted');
END