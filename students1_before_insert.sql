CREATE DEFINER=`root`@`localhost` TRIGGER `students1_BEFORE_INSERT` BEFORE INSERT ON `students1` FOR EACH ROW BEGIN
if new.marks > 100 then
set new.marks = 100;
end if;
END