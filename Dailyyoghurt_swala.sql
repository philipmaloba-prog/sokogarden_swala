-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Feb 25, 2026 at 09:20 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `Dailyyoghurt_swala`
--

-- --------------------------------------------------------

--
-- Table structure for table `product_details`
--

CREATE TABLE `product_details` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_description` text NOT NULL,
  `product_cost` int(11) NOT NULL,
  `product_photo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product_details`
--

INSERT INTO `product_details` (`product_id`, `product_name`, `product_description`, `product_cost`, `product_photo`) VALUES
(1, 'daima', 'very nice and healthy', 130, ''),
(2, 'Daima', 'very nice and healthy', 130, ''),
(3, 'Abony premium ', 'very nice and healthy with all the nutrients for our children', 160, ''),
(4, 'Abony premium ', 'very nice and healthy with all the nutrients for our children', 160, ''),
(5, 'Delamere', 'very nice and healthy with all the nutrients for our children', 200, ''),
(6, 'Fresha', 'very nice and healthy with all the nutrients for our children', 100, ''),
(7, 'Dairyland', 'Strawberry flavoured and also thick', 150, ''),
(8, 'Dairyland', 'Strawberry flavoured and also thick', 150, 'phone2.jpg'),
(9, 'Dairyland', 'Strawberry flavoured and also thick', 150, 'phone2.jpg'),
(10, 'Ilara', 'Strawberry flavoured and also thick', 150, 'phone2.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `password`, `email`, `phone`) VALUES
(1, 'philip', '1234', 'test1@gmail.com', '0798738126'),
(2, 'Amondii', '4321', 'amondi@gmail.com', '0726817398'),
(3, 'Kibet', '0987', 'kibet@gmail.com', '0121581121'),
(4, 'Badypatcher', '6154', 'badypatcher@gmail.com', '0759112158'),
(5, 'Yesta', '6161', 'yesta@gmail.com', '0797520569'),
(6, 'Everlyne', '2020', 'everlyne56@gmail.com', '0715155819');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `product_details`
--
ALTER TABLE `product_details`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `product_details`
--
ALTER TABLE `product_details`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
