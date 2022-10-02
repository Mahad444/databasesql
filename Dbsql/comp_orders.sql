-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 02, 2022 at 06:38 PM
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
-- Database: `joins_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `comp_orders`
--

CREATE TABLE `comp_orders` (
  `oID` int(11) NOT NULL,
  `OrderNo` int(11) NOT NULL,
  `pID_fk` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `comp_orders`
--

INSERT INTO `comp_orders` (`oID`, `OrderNo`, `pID_fk`) VALUES
(1, 10001, 701),
(2, 10002, 701),
(3, 10003, 704),
(4, 10013, 703),
(5, 10023, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comp_orders`
--
ALTER TABLE `comp_orders`
  ADD PRIMARY KEY (`oID`),
  ADD KEY `pID_fk` (`pID_fk`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comp_orders`
--
ALTER TABLE `comp_orders`
  MODIFY `oID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comp_orders`
--
ALTER TABLE `comp_orders`
  ADD CONSTRAINT `pID_fk` FOREIGN KEY (`pID_fk`) REFERENCES `comp_pesrons` (`pID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
