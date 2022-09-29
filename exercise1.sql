-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 29, 2022 at 11:55 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `exercise1`
--

DELIMITER $$
--
-- Procedures
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `SpGender` (`gender` VARCHAR(1))   BEGIN 
SELECT First_Name,Last_Name,Gender FROM employees
WHERE employees.Gender = gender ;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `spGetStaffID` (`id` INT)   BEGIN
SELECT First_Name, Last_Name, Position, Salary FROM employees WHERE employees.staff_no=id;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `spMahad` (`M` VARCHAR(1))   BEGIN
SELECT studentinfo.FirstName,studentinfo.LastName,studentinfo.Course,studentinfo.Gender FROM studentinfo 
WHERE studentinfo.Gender =M;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `spStored` (`name` VARCHAR(20))   BEGIN
SELECT employees.First_Name,employees.staff_no,employees.Last_Name
FROM employees
WHERE employees.First_Name = name;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `spSubjects` (`course` VARCHAR(20))   BEGIN
SELECT studentinfo.FirstName,studentinfo.LastName,studentinfo.Course FROM studentinfo
WHERE studentinfo.Course="Cybersecurity";
END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `staff_no` int(11) NOT NULL,
  `First_Name` varchar(20) NOT NULL,
  `Last_Name` varchar(20) NOT NULL,
  `Gender` varchar(1) NOT NULL,
  `Position` varchar(20) NOT NULL,
  `Salary` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`staff_no`, `First_Name`, `Last_Name`, `Gender`, `Position`, `Salary`) VALUES
(1001, 'John', 'Kamau', 'M', 'Clerk', 50000),
(1002, 'Ibrahim', 'Kamau', 'M', 'Supervisor', 70000),
(1003, 'Ahmed', 'Bahaj', 'M', 'Manager', 80000),
(1004, 'Mrembo', 'Didan', 'F', 'Receptionist', 30000),
(1005, 'Mary', 'Mwangi', 'F', 'Chef', 25000),
(1006, 'Mahad', 'Said', 'M', 'Senior Staff', 100000),
(1007, 'Aisha', 'Farah', 'F', 'Trainer', 55000);

-- --------------------------------------------------------

--
-- Table structure for table `studentinfo`
--

CREATE TABLE `studentinfo` (
  `Roll_no` int(11) NOT NULL,
  `FirstName` varchar(20) DEFAULT NULL,
  `LastName` varchar(20) DEFAULT NULL,
  `Gender` varchar(1) DEFAULT NULL,
  `Course` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `studentinfo`
--

INSERT INTO `studentinfo` (`Roll_no`, `FirstName`, `LastName`, `Gender`, `Course`) VALUES
(101, 'Ally ', 'Juma', 'M', 'Software Developer'),
(102, 'John', 'Kamau', 'M', 'Cybersecurity'),
(103, 'Ibrahim', 'Kamau', 'M', 'DataBase'),
(104, 'Lilian', 'Muli', 'F', 'Javascript Expert'),
(105, 'Rchael', 'Muigai', 'F', 'Jounalism'),
(106, 'Jamila', 'Mohamed', 'F', 'Mathematics'),
(107, 'Ahmed', 'Babu', 'M', 'Cybersecurity'),
(108, 'John', 'Doe', 'M', 'Javascript Expert');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`staff_no`);

--
-- Indexes for table `studentinfo`
--
ALTER TABLE `studentinfo`
  ADD PRIMARY KEY (`Roll_no`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `staff_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1008;

--
-- AUTO_INCREMENT for table `studentinfo`
--
ALTER TABLE `studentinfo`
  MODIFY `Roll_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
