-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 23, 2022 at 09:48 AM
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
-- Database: `collegedb`
--

-- --------------------------------------------------------

--
-- Table structure for table `coursedeails`
--

CREATE TABLE `coursedeails` (
  `Course_id` int(11) NOT NULL,
  `CourseName` varchar(20) DEFAULT NULL,
  `Major` varchar(20) DEFAULT NULL,
  `programming_Language` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `coursedeails`
--

INSERT INTO `coursedeails` (`Course_id`, `CourseName`, `Major`, `programming_Language`) VALUES
(1, 'CyberSecurity', 'Cyber', 'Python'),
(2, 'Data Science', 'Data Administrator', 'SQL'),
(3, 'Software Development', 'Software Engineer', 'Python,Javascript,Ph'),
(4, 'Artificial Intellige', 'AI Expert', 'Python,Pandas');

-- --------------------------------------------------------

--
-- Table structure for table `shoolfees`
--

CREATE TABLE `shoolfees` (
  `schoolfeesId` int(11) NOT NULL,
  `AmountPaid` int(11) NOT NULL,
  `DatePaid` varchar(20) NOT NULL,
  `Balance` int(11) NOT NULL,
  `studentId_fk` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `shoolfees`
--

INSERT INTO `shoolfees` (`schoolfeesId`, `AmountPaid`, `DatePaid`, `Balance`, `studentId_fk`) VALUES
(101, 15000, '19/9/2022', 5000, 2),
(103, 10000, '21/9/2022', 10000, 1),
(104, 20000, '22/9/2022', 0, 5);

-- --------------------------------------------------------

--
-- Table structure for table `studentdetails`
--

CREATE TABLE `studentdetails` (
  `student_id` int(11) NOT NULL,
  `FirstName` varchar(30) NOT NULL,
  `Lastname` varchar(30) NOT NULL,
  `Contact` varchar(10) DEFAULT NULL,
  `courseId` int(11) DEFAULT NULL,
  `shoolfees_id_fk` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `studentdetails`
--

INSERT INTO `studentdetails` (`student_id`, `FirstName`, `Lastname`, `Contact`, `courseId`, `shoolfees_id_fk`) VALUES
(1, 'John', 'Doe', '0722625263', 1, 103),
(2, 'Mahad', 'Said', '0743297643', 4, 101),
(3, 'Khadija', 'Said', '0743979643', 2, 103),
(4, 'Ally', 'Said', '0743298843', 3, 104),
(5, 'Mohamed', 'Abdullahi', '0743297643', 3, 101),
(6, 'John', 'Kamau', '0754673422', 1, 101);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `coursedeails`
--
ALTER TABLE `coursedeails`
  ADD PRIMARY KEY (`Course_id`);

--
-- Indexes for table `shoolfees`
--
ALTER TABLE `shoolfees`
  ADD PRIMARY KEY (`schoolfeesId`),
  ADD KEY `studentId_FK` (`studentId_fk`);

--
-- Indexes for table `studentdetails`
--
ALTER TABLE `studentdetails`
  ADD PRIMARY KEY (`student_id`),
  ADD KEY `courseId_FK` (`courseId`),
  ADD KEY `shoolfees_id_fk` (`shoolfees_id_fk`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `coursedeails`
--
ALTER TABLE `coursedeails`
  MODIFY `Course_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `shoolfees`
--
ALTER TABLE `shoolfees`
  MODIFY `schoolfeesId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- AUTO_INCREMENT for table `studentdetails`
--
ALTER TABLE `studentdetails`
  MODIFY `student_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `shoolfees`
--
ALTER TABLE `shoolfees`
  ADD CONSTRAINT `studentId_FK` FOREIGN KEY (`studentId_fk`) REFERENCES `studentdetails` (`student_id`);

--
-- Constraints for table `studentdetails`
--
ALTER TABLE `studentdetails`
  ADD CONSTRAINT `courseId_FK` FOREIGN KEY (`courseId`) REFERENCES `coursedeails` (`Course_id`),
  ADD CONSTRAINT `shoolfees_id_fk` FOREIGN KEY (`shoolfees_id_fk`) REFERENCES `shoolfees` (`schoolfeesId`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
