CREATE DEFINER=`root`@`localhost` PROCEDURE `double_number`(INOUT number int)
BEGIN
set number = number*2;
END