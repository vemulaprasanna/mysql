CREATE DEFINER=`root`@`localhost` TRIGGER `students1_BEFORE_UPDATE` BEFORE UPDATE ON `students1` FOR EACH ROW BEGIN
if new.marks < 50 then
set new.marks = 50;
end if;
END