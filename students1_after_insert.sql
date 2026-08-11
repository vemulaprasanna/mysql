CREATE DEFINER=`root`@`localhost` TRIGGER `students1_AFTER_INSERT` AFTER INSERT ON `students1` FOR EACH ROW BEGIN
insert into students_audit values('A New Student Enrolled');
END