-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 02, 2022 at 09:48 AM
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
-- Database: `muhib`
--

-- --------------------------------------------------------

--
-- Table structure for table `studentmajor`
--

CREATE TABLE `studentmajor` (
  `student_id` int(11) NOT NULL,
  `studentName` varchar(20) NOT NULL,
  `Major` varchar(20) NOT NULL,
  `feesid_fk` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `studentmajor`
--

INSERT INTO `studentmajor` (`student_id`, `studentName`, `Major`, `feesid_fk`) VALUES
(1, 'Mahad Said', 'Bio', 3),
(2, 'Arafat Said', 'BioChemistry', 1),
(3, 'Ally Said', 'Data Science', 2),
(4, ' Juma  Bwanga', 'Software Dev', 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `studentmajor`
--
ALTER TABLE `studentmajor`
  ADD PRIMARY KEY (`student_id`),
  ADD KEY `feesid_fk` (`feesid_fk`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `studentmajor`
--
ALTER TABLE `studentmajor`
  MODIFY `student_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `studentmajor`
--
ALTER TABLE `studentmajor`
  ADD CONSTRAINT `feesid_fk` FOREIGN KEY (`feesid_fk`) REFERENCES `schoolfees` (`fees_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
