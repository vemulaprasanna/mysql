CREATE DEFINER=`root`@`localhost` TRIGGER `students1_AFTER_UPDATE` AFTER UPDATE ON `students1` FOR EACH ROW BEGIN
insert into students_audit values('Student data was updated');
END