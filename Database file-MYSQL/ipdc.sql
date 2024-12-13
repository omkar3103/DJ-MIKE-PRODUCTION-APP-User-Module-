-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 27, 2024 at 07:09 PM
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
-- Database: `ipdc`
--

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE `bookings` (
  `id` int(11) NOT NULL,
  `dj_name` varchar(100) DEFAULT NULL,
  `price` varchar(50) DEFAULT NULL,
  `customer_name` varchar(100) DEFAULT NULL,
  `customer_email` varchar(100) DEFAULT NULL,
  `customer_phone` varchar(15) DEFAULT NULL,
  `event_address` varchar(255) DEFAULT NULL,
  `booking_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `event_date` date DEFAULT NULL,
  `start_time` time NOT NULL,
  `end_time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bookings`
--

INSERT INTO `bookings` (`id`, `dj_name`, `price`, `customer_name`, `customer_email`, `customer_phone`, `event_address`, `booking_date`, `event_date`, `start_time`, `end_time`) VALUES
(14, 'DJ Alex Hunt', '$500 - $1000', 'parth mane', 'parth@gmail.com', '1234567890', 'LA', '2024-10-27 07:33:04', '2024-10-28', '00:00:00', '00:00:00'),
(19, 'DJ Alex Hunt', '$500 - $1000', 'ninad ', 'niand@gmail.com', '7894561230', 'La', '2024-10-27 07:44:27', '2024-10-29', '00:00:00', '00:00:00'),
(20, 'DJ Alex Hunt', '$500 - $1000', 'omkar', 'omkar@gmail.com', '7894561230', 'LA', '2024-10-27 10:23:17', '2024-10-31', '00:00:00', '00:00:00'),
(23, 'DJ Alex Hunt', '$500 - $1000', 'parth mane', 'parth@gmail.com', '7893214560', 'LA', '2024-10-27 10:33:35', '2024-11-07', '00:00:00', '00:00:00'),
(25, 'DJ Alex Hunt', '$500 - $1000', 'niand', 'ninad@gmail.com', '2123434343', 'CA', '2024-10-27 10:36:32', '2024-11-12', '16:05:00', '23:05:00'),
(26, 'DJ Alex Hunt', '$500 - $1000', 'sahil', 'sahil@gmail.com', '8451784589', 'gaerg', '2024-10-27 10:41:16', '2024-10-30', '16:10:39', '23:10:00'),
(27, 'DJ Alex Hunt', '$500 - $1000', 'omkar kulkarni', 'omkar@gmail.com', '7893214568', 'CA', '2024-10-27 10:43:48', '2024-11-14', '16:13:02', '23:13:00'),
(28, 'DJ Diana Beat', '$800 - $1500', 'ninad', 'ninad@gmail.com', '32198745662', 'La', '2024-10-27 10:45:21', '2024-11-11', '16:14:42', '23:14:00'),
(29, 'DJ Diana Beat', '$800 - $1500', 'ninad', 'ninad@gmail.com', '32198745662', 'La', '2024-10-27 10:45:51', '2024-11-14', '16:14:42', '23:14:00'),
(30, 'DJ Alex Hunt', '$500 - $1000', 'Omkar Kulkarni', 'omkar@gmail.com', '1234567890', 'LA', '2024-10-27 12:37:49', '2024-10-27', '18:05:14', '18:05:14'),
(31, 'DJ Alex Hunt', '$500 - $1000', 'omkar Kulkarni', 'omkar3103@gmail.com', '8381057596', 'LA', '2024-10-27 12:44:15', '2024-12-25', '18:13:00', '11:13:00'),
(32, 'DJ Alex Hunt', '$500 - $1000', 'Manoj Kulkarni', 'manoj@gmail.com', '9860118969', 'California', '2024-10-27 12:50:26', '2024-11-27', '18:19:24', '00:19:00'),
(33, 'DJ Alex Hunt', '$500 - $1000', 'Sahil fepade', 'sahil@gmail.com', '1234567898', 'Nigeriah', '2024-10-27 12:59:23', '2024-12-12', '18:28:25', '00:28:00'),
(34, 'DJ Alex Hunt', '$500 - $1000', 'ilhan pirjade', 'ilhan@gmail.com', '7875331817', 'RK NAGAR', '2024-10-27 13:11:23', '2024-12-14', '18:40:22', '00:40:00'),
(35, 'DJ Alex Hunt', '$500 - $1000', 'Yash Gurav', 'yash@gmail.com', '7896541230', 'la', '2024-10-27 13:33:41', '2024-12-04', '19:02:43', '00:02:00');

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `upi_id` varchar(255) DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `name`, `upi_id`, `amount`, `created_at`) VALUES
(1, 'Yash Gurav', '123@oksbi', 100.00, '2024-10-27 13:34:06');

-- --------------------------------------------------------

--
-- Table structure for table `userfeedback`
--

CREATE TABLE `userfeedback` (
  `id` int(11) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `feedback` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `userfeedback`
--

INSERT INTO `userfeedback` (`id`, `user_name`, `user_email`, `feedback`, `created_at`) VALUES
(1, 'omkar', 'omkar@gmail.com', 'Nie', '2024-10-27 15:46:30');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) NOT NULL,
  `name` varchar(30) NOT NULL,
  `username` varchar(15) NOT NULL,
  `email` varchar(20) NOT NULL,
  `phone` bigint(12) NOT NULL,
  `password` varchar(30) NOT NULL,
  `confirmpassword` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `phone`, `password`, `confirmpassword`) VALUES
(1, 'samrudhi kulkarni', 'samruddhi', 'maharani@gmail.com', 8208835457, '12345', '12345'),
(2, 'Bhagyshree kulkarni', 'bhagyshree', 'maharani@gmail.com', 8208835457, '12345', '12345'),
(3, 'Bhagyshree kulkarni', 'bhagyshree', 'bhagyshree@gmail.com', 8208835457, '123456', '123456'),
(4, 'omkar kulkarni', 'omkar07', 'omkar@gmail.com', 8381057596, '32145', '32154'),
(6, 'Parth mane', 'parth', 'parth@gmail.com', 8459776474, '12345', '13245'),
(7, 'omkar Manoj Kulkarni', 'CR7', 'omkar3103@gmail.com', 83810657596, '78945', '78945'),
(8, 'Manoj Kulkarni', 'Manoj@07', 'Manoj@gmail.com', 9860118969, '98765', '98765'),
(10, 'ilhan Pirjade', 'Ilhan07', 'ilhan@gmail.com', 7894561230, '987654', '987654'),
(11, 'Swaup palange', 'swarup', 'swaru@gmail.com', 8795462130, '12345', '12345'),
(12, 'Aditya powar', 'Aditya', 'aditya@gmail.com', 8795462130, '12345', '12345'),
(13, 'Sahil Fepade', 'sahil', 'sahil@gmail.com', 8795642130, '12345', '12345'),
(14, 'omkar', 'omkar', '', 0, '12345', '12345'),
(15, '', '', '', 0, '', ''),
(16, 'Viput Patil', 'vipul', 'vipul@gmail.com', 23548972, '12345', '12345'),
(17, 'desai sir', 'Desai sir', 'abc@gmali.com', 1234567980, '12345', '12345');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_dj_date` (`dj_name`,`event_date`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userfeedback`
--
ALTER TABLE `userfeedback`
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
-- AUTO_INCREMENT for table `bookings`
--
ALTER TABLE `bookings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `userfeedback`
--
ALTER TABLE `userfeedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
