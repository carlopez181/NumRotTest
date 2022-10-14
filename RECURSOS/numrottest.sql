-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 14, 2022 at 10:09 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `numrottest`
--

-- --------------------------------------------------------

--
-- Table structure for table `invoices`
--

CREATE TABLE `invoices` (
  `id` bigint(20) NOT NULL,
  `userId` bigint(20) NOT NULL,
  `invoiceNumber` bigint(20) NOT NULL,
  `date` date NOT NULL,
  `totalCosts` decimal(20,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL,
  `docNumber` bigint(20) NOT NULL,
  `firstName` varchar(60) NOT NULL,
  `secondName` varchar(60) DEFAULT NULL,
  `firstSurname` varchar(60) NOT NULL,
  `secondSurname` varchar(60) DEFAULT NULL,
  `phone` varchar(13) DEFAULT NULL,
  `email` varchar(80) DEFAULT NULL,
  `address` varchar(60) NOT NULL,
  `age` int(2) NOT NULL,
  `gender` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `docNumber`, `firstName`, `secondName`, `firstSurname`, `secondSurname`, `phone`, `email`, `address`, `age`, `gender`) VALUES
(1, 1017283442, 'Ana', 'A', 'Bernal', 'B', '3108324242', 'arturo@gmail.com', 'Call 10A # 48-16', 34, 'Femenino'),
(2, 1017182574, 'Adrian', NULL, 'Garcia', NULL, NULL, NULL, 'Calle 1 #10-12', 23, 'Masculino'),
(3, 1017182575, 'Camilo', NULL, 'Garcia', NULL, NULL, NULL, 'Calle 2 #10-12', 24, 'Masculino'),
(4, 1017182576, 'Pablo', NULL, 'Garcia', NULL, NULL, NULL, 'Calle 3 #10-12', 25, 'Masculino'),
(5, 1017182577, 'Andrea', NULL, 'Garcia', NULL, NULL, NULL, 'Calle 4 #10-12', 26, 'Femenino'),
(6, 1017182578, 'Laura', NULL, 'Garcia', NULL, NULL, NULL, 'Calle 5 #10-12', 27, 'Femenino'),
(7, 1017182579, 'Cristian', NULL, 'Garcia', NULL, NULL, NULL, 'Calle 6 #10-12', 28, 'Masculino'),
(8, 1017182580, 'Alirio', NULL, 'Garcia', NULL, NULL, NULL, 'Calle 7 #10-12', 29, 'Masculino'),
(9, 1017182581, 'Roxana', NULL, 'Garcia', NULL, NULL, NULL, 'Calle 8 #10-12', 30, 'Femenino'),
(10, 1017182582, 'Simón', NULL, 'Garcia', NULL, NULL, NULL, 'Calle 9 #10-12', 30, 'Masculino'),
(11, 1017182583, 'Jasmin', NULL, 'Garcia', NULL, NULL, NULL, 'Calle 10 #10-12', 30, 'Femenino'),
(12, 1017182584, 'Dolly', NULL, 'Garcia', NULL, NULL, NULL, 'Calle 11 #10-12', 33, 'Femenino'),
(13, 1017182585, 'Patricio', NULL, 'Garcia', NULL, NULL, NULL, 'Calle 12 #10-12', 33, 'Masculino'),
(14, 1017182586, 'Carmen', NULL, 'Garcia', NULL, NULL, NULL, 'Calle 13 #10-12', 33, 'Femenino'),
(15, 1017283442, 'Arturo', 'A', 'Calle', 'B', '3108324242', 'arturo@gmail.com', 'Call 10A # 48-16', 34, 'Masculino');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `invoices`
--
ALTER TABLE `invoices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `invoices`
--
ALTER TABLE `invoices`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
