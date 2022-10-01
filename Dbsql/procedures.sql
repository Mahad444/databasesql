DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `SpGender`( gender Varchar(1))
BEGIN 
SELECT First_Name,Last_Name,Gender FROM employees
WHERE employees.Gender = gender ;
END$$
DELIMITER ;

DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `spGetStaffID`(id INT)
BEGIN
SELECT First_Name, Last_Name, Position, Salary FROM employees WHERE employees.staff_no=id;
END$$
DELIMITER ;

DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `spMahad`(M varchar(1))
BEGIN
SELECT studentinfo.FirstName,studentinfo.LastName,studentinfo.Course,studentinfo.Gender FROM studentinfo 
WHERE studentinfo.Gender =M;
END$$
DELIMITER ;

DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `spStored`(name varchar(20))
BEGIN
SELECT employees.First_Name,employees.staff_no,employees.Last_Name
FROM employees
WHERE employees.First_Name = name;
END$$
DELIMITER ;

DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `spSubjects`( course varchar (20))
BEGIN
SELECT studentinfo.FirstName,studentinfo.LastName,studentinfo.Course FROM studentinfo
WHERE studentinfo.Course="Cybersecurity";
END$$
DELIMITER ;
