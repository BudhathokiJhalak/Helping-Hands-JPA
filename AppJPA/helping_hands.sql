-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 08, 2016 at 03:16 PM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `helping_hands`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `admin_id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`admin_id`, `username`, `password`, `status`, `user_id`) VALUES
(1, 'karmao', 'karmaoo', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `login_details`
--

CREATE TABLE `login_details` (
  `login_id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `login_details`
--

INSERT INTO `login_details` (`login_id`, `username`, `password`, `user_id`) VALUES
(1, 'surajgc', 'nepali123', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `contact_no` varchar(255) NOT NULL,
  `contact_no_opt` varchar(255) DEFAULT NULL,
  `permanent_address` varchar(255) NOT NULL,
  `current_address` varchar(255) NOT NULL,
  `blood_group` enum('O+ve','O-ve','A+ve','A-ve','B+ve','B-ve','AB+ve','AB-ve') NOT NULL,
  `profession` varchar(255) NOT NULL,
  `working_at` varchar(255) NOT NULL,
  `education` enum('Primary education','Lower secondary education','Upper secondary education','Post-secondary non-tertiary education','Short-cycle tertiary education','Bachelor or equivalent','Master or equivalent','Doctoral or equivalent') NOT NULL,
  `date_of_birth` date NOT NULL,
  `gender` enum('Male','Female','Others') NOT NULL,
  `help_others` enum('Nope(I dont want to)','Maybe(depens on situation)','Definately(I will help)') NOT NULL,
  `about_you` text NOT NULL,
  `added_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_date` timestamp NULL DEFAULT NULL,
  `marital_status` enum('Single','In a relationship','In a complicated relationship','Married','Divorced','Widowo') NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `first_name`, `last_name`, `email`, `contact_no`, `contact_no_opt`, `permanent_address`, `current_address`, `blood_group`, `profession`, `working_at`, `education`, `date_of_birth`, `gender`, `help_others`, `about_you`, `added_date`, `modified_date`, `marital_status`, `status`) VALUES
(1, 'Suraj', 'G.C', 'surajcule@gmail.com', '9843632668', NULL, 'Tamghas, Gulmi', 'Pokhara', 'B+ve', 'Banker', 'SBI Nepal', 'Bachelor or equivalent', '1992-07-26', 'Male', 'Maybe(depens on situation)', 'I''m a Classic man.', '2016-11-25 20:02:41', NULL, 'Single', 1),
(2, 'Bishal', 'Thapa', 'thapabishal@gmail.com', '9820198377', NULL, 'Butwal, Rupandehi', 'Kathmandu', 'O+ve', 'Java Programmer', 'Leapfrog Technologies', 'Bachelor or equivalent', '1994-11-10', 'Male', 'Nope(I dont want to)', 'i''m confused.', '2016-11-25 20:18:00', NULL, 'In a relationship', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`admin_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `login_details`
--
ALTER TABLE `login_details`
  ADD PRIMARY KEY (`login_id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `login_details`
--
ALTER TABLE `login_details`
  MODIFY `login_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `admins`
--
ALTER TABLE `admins`
  ADD CONSTRAINT `admins_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);

--
-- Constraints for table `login_details`
--
ALTER TABLE `login_details`
  ADD CONSTRAINT `login_details_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
