-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 22, 2024 at 05:46 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mkori`
--

-- --------------------------------------------------------

--
-- Table structure for table `hafidhi`
--

CREATE TABLE `hafidhi` (
  `id` bigint(20) NOT NULL,
  `seno` varchar(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `pasward` varchar(100) NOT NULL,
  `year` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hafidhi`
--

INSERT INTO `hafidhi` (`id`, `seno`, `name`, `pasward`, `year`, `date`) VALUES
(1151, '23456', 'hafidhi', 'Mkori339', 2001, '2024-02-22 04:38:58');

-- --------------------------------------------------------

--
-- Table structure for table `hafidhi2`
--

CREATE TABLE `hafidhi2` (
  `caption` varchar(50) NOT NULL,
  `imagepath` varchar(20) NOT NULL,
  `uploadedBy` int(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hafidhi2`
--

INSERT INTO `hafidhi2` (`caption`, `imagepath`, `uploadedBy`) VALUES
('for test', 'download.jpg', 1151);

-- --------------------------------------------------------

--
-- Table structure for table `hafidhi3`
--

CREATE TABLE `hafidhi3` (
  `uploadedBy` int(10) NOT NULL,
  `iimagepath` varchar(20) NOT NULL,
  `seno` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hafidhi3`
--

INSERT INTO `hafidhi3` (`uploadedBy`, `iimagepath`, `seno`) VALUES
(1151, '2024013120171053.png', 23456);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `hafidhi`
--
ALTER TABLE `hafidhi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `pasward` (`pasward`),
  ADD KEY `year` (`year`),
  ADD KEY `date` (`date`),
  ADD KEY `id` (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `hafidhi`
--
ALTER TABLE `hafidhi`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1152;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
