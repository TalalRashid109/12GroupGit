-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 12, 2022 at 11:54 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `students`
--

-- --------------------------------------------------------

--
-- Table structure for table `records`
--

CREATE TABLE `records` (
  `STUDENT_ID` int(11) NOT NULL,
  `STUDENT_NAME` varchar(255) NOT NULL,
  `MODULE_ID` varchar(255) NOT NULL,
  `MODULE_NAME` varchar(255) NOT NULL,
  `MODULE_LEADER` varchar(255) NOT NULL,
  `MODULE_GRADE` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `records`
--

INSERT INTO `records` (`STUDENT_ID`, `STUDENT_NAME`, `MODULE_ID`, `MODULE_NAME`, `MODULE_LEADER`, `MODULE_GRADE`) VALUES
(17155134, 'Talal Rashid', 'Cmp6210', 'Cloud Computing', 'Khalid Mahmud', 96),
(18135366, 'Stefan Birca', 'Cmp6210', 'Cloud Computing', 'Khalid Mahmud', 93),
(19160239, 'Amrit Kaur', 'Cmp6210', 'Cloud Computing', 'Khalid Mahmud', 99);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `records`
--
ALTER TABLE `records`
  ADD UNIQUE KEY `STUDENT_ID` (`STUDENT_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
