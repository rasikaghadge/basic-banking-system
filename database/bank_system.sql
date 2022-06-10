-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 18, 2021 at 04:55 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
--
CREATE DATABASE basic_bank_system;
-- --------------------------------------------------------
USE basic_bank_system;
--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id` int(11) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `balance` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `Name`, `email`, `balance`) VALUES
(1, 'Minal Arora', 'aroramini@gmail.com', 150000),
(2, 'Khushi Singh', 'khushisingh@gmail.com', 35000),
(3, 'Rakhi Pillai', 'rakhipillai24@yahoo.com', 45100),
(4, 'Rajat Bhanucha', 'rajatb6784@gmail.com', 10324),
(5, 'Aman Modi', 'modi.aman@gmail.com', 125000),
(6, 'Janki Kadam', 'jankikadam87@gmail.com', 50000),
(7, 'Sanket Jadhav', 'sanketjadhav69@gmail.com', 86034),
(8, 'Jeevan Chopra', 'jeevan_chopra@yahoo.com', 46900),
(9, 'Suvarna Kaur', 'su_kaur@yahoo.com', 3400),
(10, 'Priya Joshi', 'joshi_pria54@gmail.com', 32500);

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE `transfers` (
  `trans_id` int(11) NOT NULL,
  `sender` varchar(255) NOT NULL,
  `reciever` varchar(255) NOT NULL,
  `amount` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transfers`
--

-- INSERT INTO `transfers` (`his_id`, `sender`, `reciever`, `amount`) VALUES
-- (1, 'Dhawanil Malik', 'Manya Yadav', 700),
-- (2, 'Sanket Batra', 'Priya Wagh', 1200),
-- (3, 'Iswarya Verma', 'Dhawanil Malik', 2300),
-- (4, 'Pranjal Aggrawal', 'Mandeep Singh', 650),
-- (5, 'Manya Yadav', 'Aaron James', 2100),
-- (6, 'Anjana Sharma', 'Sanket Batra', 3000),
-- (7, 'Dhawanil Malik', 'Ishita Rao', 12000),
-- (8, 'Aaron James', 'Anjana Sharma', 1800);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `history`
--
ALTER TABLE `transfers`
  ADD PRIMARY KEY (`trans_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `history`
--
ALTER TABLE `transfers`
  MODIFY `trans_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;