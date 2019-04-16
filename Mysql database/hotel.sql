-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 14, 2019 at 04:04 PM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hotel`
--

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `bid` int(11) NOT NULL,
  `room_no` int(11) NOT NULL,
  `r_category` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone` int(11) NOT NULL,
  `address` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `payment_process` varchar(255) NOT NULL,
  `payment` int(11) NOT NULL,
  `due` int(11) NOT NULL,
  `date` varchar(255) NOT NULL,
  `duration` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`bid`, `room_no`, `r_category`, `name`, `phone`, `address`, `email`, `payment_process`, `payment`, `due`, `date`, `duration`) VALUES
(1001, 202, 'AC', 'Jabir', 155478961, 'ECB,Dhaka', 'jabir@gmail.com', 'Bkash', 1500, 3000, '14 April 2019', '1 day');

-- --------------------------------------------------------

--
-- Table structure for table `log`
--

CREATE TABLE `log` (
  `id` int(11) NOT NULL,
  `password` varchar(256) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `log`
--

INSERT INTO `log` (`id`, `password`) VALUES
(55, 'junaeid');

-- --------------------------------------------------------

--
-- Table structure for table `manager`
--

CREATE TABLE `manager` (
  `mid` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `joining_date` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` int(11) NOT NULL,
  `address` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `designation` varchar(255) NOT NULL DEFAULT 'Manager'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `manager`
--

INSERT INTO `manager` (`mid`, `name`, `joining_date`, `email`, `phone`, `address`, `password`, `designation`) VALUES
(1, 'Junaeid', '2019-01-03', 'mdjunaeid@gmail.com', 1712233666, 'Uttara,Dhaka-1230', '1234', 'Manager'),
(2, 'Afran', '2019-01-04', 'afran@gmail.com', 1812233665, 'Mirpur,Dhaka-1206', '2345', 'Manager'),
(3, 'Sakib', '2019-01-05', 'sakib@gmail.com', 1336528749, 'Mohanogor,Rampura,Dhaka', '3456', 'Manager'),
(4, 'Ruhul', '2019-01-06', 'ruhul@gmail.com', 1974512368, 'Mohanogor,Rampura,Dhaka', '4567', 'Manager');

-- --------------------------------------------------------

--
-- Table structure for table `otheremployee`
--

CREATE TABLE `otheremployee` (
  `eid` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `joining_date` varchar(255) NOT NULL,
  `salary` int(11) NOT NULL,
  `designation` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `otheremployee`
--

INSERT INTO `otheremployee` (`eid`, `name`, `phone`, `email`, `address`, `joining_date`, `salary`, `designation`, `password`) VALUES
(101, 'Rohan', 1582449875, 'rohan@gmail.com', 'Niketon,Dhaka', '2019-02-01', 25000, 'Cook', '78945'),
(102, 'Galib', 1684972215, 'galib@gmail.com', 'Cantionment,Dhaka', '2018-12-01', 15000, 'Waiter', '6985'),
(103, 'Samsul', 1698546, 'samsul@yahoo.com', 'khilkhet,Dhaka', '12 April 2019', 30000, 'Cook', 'kool43'),
(104, 'Jamil', 125478932, 'jamil@gmail.com', 'Kafrul', '14 Aprill 2019', 32000, 'Receptionist', '3695');

-- --------------------------------------------------------

--
-- Table structure for table `receptionist`
--

CREATE TABLE `receptionist` (
  `rid` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` int(11) NOT NULL,
  `address` varchar(255) NOT NULL,
  `joining_date` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `receptionist`
--

INSERT INTO `receptionist` (`rid`, `name`, `email`, `phone`, `address`, `joining_date`, `password`) VALUES
(31, 'Mohona', 'mohona@gmail.com', 1695482364, 'Dhanmondi,Dhaka', '15 January 2019', '4321');

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

CREATE TABLE `room` (
  `room_no` int(11) NOT NULL,
  `category` varchar(255) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `room`
--

INSERT INTO `room` (`room_no`, `category`, `price`) VALUES
(201, 'AC', 5000),
(202, 'AC', 4500),
(203, 'NON AC', 2500),
(204, 'NON AC', 2000),
(301, 'AC', 4000),
(302, 'AC', 3500),
(303, 'NON AC', 2000),
(304, 'NON AC', 1500);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`bid`);

--
-- Indexes for table `log`
--
ALTER TABLE `log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `manager`
--
ALTER TABLE `manager`
  ADD PRIMARY KEY (`mid`);

--
-- Indexes for table `otheremployee`
--
ALTER TABLE `otheremployee`
  ADD PRIMARY KEY (`eid`);

--
-- Indexes for table `receptionist`
--
ALTER TABLE `receptionist`
  ADD PRIMARY KEY (`rid`);

--
-- Indexes for table `room`
--
ALTER TABLE `room`
  ADD PRIMARY KEY (`room_no`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `booking`
--
ALTER TABLE `booking`
  MODIFY `bid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1002;

--
-- AUTO_INCREMENT for table `manager`
--
ALTER TABLE `manager`
  MODIFY `mid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `otheremployee`
--
ALTER TABLE `otheremployee`
  MODIFY `eid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- AUTO_INCREMENT for table `receptionist`
--
ALTER TABLE `receptionist`
  MODIFY `rid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `room`
--
ALTER TABLE `room`
  MODIFY `room_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=305;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
