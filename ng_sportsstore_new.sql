-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 26, 2018 at 01:25 PM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 7.2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ng_sportsstore_new`
--

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `street` varchar(200) NOT NULL,
  `city` varchar(40) NOT NULL,
  `state` varchar(30) NOT NULL,
  `zip` varchar(20) NOT NULL,
  `country` varchar(60) NOT NULL,
  `giftwrap` tinyint(4) NOT NULL,
  `products` text NOT NULL,
  `orderdate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `name`, `street`, `city`, `state`, `zip`, `country`, `giftwrap`, `products`, `orderdate`) VALUES
(8, 'IDB', 'asd', 'Dhaka', 'Dhaka', '1207', 'Bangladesh', 1, 'a:3:{i:0;a:4:{s:5:\"count\";i:2;s:2:\"id\";s:1:\"1\";s:5:\"price\";s:6:\"275.00\";s:4:\"name\";s:5:\"Kayak\";}i:1;a:4:{s:5:\"count\";i:2;s:2:\"id\";s:1:\"2\";s:5:\"price\";s:5:\"48.95\";s:4:\"name\";s:10:\"Lifejacket\";}i:2;a:4:{s:5:\"count\";i:2;s:2:\"id\";s:1:\"3\";s:5:\"price\";s:5:\"19.50\";s:4:\"name\";s:11:\"Soccer Ball\";}}', '2016-12-21 16:58:27'),
(9, 'asd', 'asd', 'asd', 'asd', 'asd', 'asd', 1, 'a:3:{i:0;a:4:{s:5:\"count\";i:2;s:2:\"id\";s:1:\"1\";s:5:\"price\";s:6:\"275.00\";s:4:\"name\";s:5:\"Kayak\";}i:1;a:4:{s:5:\"count\";i:1;s:2:\"id\";s:1:\"2\";s:5:\"price\";s:5:\"48.95\";s:4:\"name\";s:10:\"Lifejacket\";}i:2;a:4:{s:5:\"count\";i:1;s:2:\"id\";s:1:\"3\";s:5:\"price\";s:5:\"19.50\";s:4:\"name\";s:11:\"Soccer Ball\";}}', '2016-12-21 18:01:55'),
(10, 'qwe', 'qwe', 'qwe', 'qwe', 'qwe', 'qwe', 1, 'a:6:{i:0;a:4:{s:5:\"count\";i:1;s:2:\"id\";s:1:\"1\";s:5:\"price\";s:6:\"275.00\";s:4:\"name\";s:5:\"Kayak\";}i:1;a:4:{s:5:\"count\";i:1;s:2:\"id\";s:1:\"2\";s:5:\"price\";s:5:\"48.95\";s:4:\"name\";s:10:\"Lifejacket\";}i:2;a:4:{s:5:\"count\";i:1;s:2:\"id\";s:1:\"3\";s:5:\"price\";s:5:\"19.50\";s:4:\"name\";s:11:\"Soccer Ball\";}i:3;a:4:{s:5:\"count\";i:1;s:2:\"id\";s:1:\"4\";s:5:\"price\";s:5:\"34.95\";s:4:\"name\";s:12:\"Corner Flags\";}i:4;a:4:{s:5:\"count\";i:1;s:2:\"id\";s:1:\"5\";s:5:\"price\";s:5:\"16.00\";s:4:\"name\";s:12:\"Thinking Cap\";}i:5;a:4:{s:5:\"count\";i:1;s:2:\"id\";s:1:\"6\";s:5:\"price\";s:5:\"29.95\";s:4:\"name\";s:14:\"Unsteady Chair\";}}', '2016-12-21 18:02:50'),
(11, 'bbb', 'bbb', 'bbb', 'bbb', 'bbb', 'bbb', 1, 'a:6:{i:0;a:4:{s:5:\"count\";i:2;s:2:\"id\";s:1:\"1\";s:5:\"price\";s:6:\"275.00\";s:4:\"name\";s:5:\"Kayak\";}i:1;a:4:{s:5:\"count\";i:2;s:2:\"id\";s:1:\"2\";s:5:\"price\";s:5:\"48.95\";s:4:\"name\";s:10:\"Lifejacket\";}i:2;a:4:{s:5:\"count\";i:2;s:2:\"id\";s:1:\"3\";s:5:\"price\";s:5:\"19.50\";s:4:\"name\";s:11:\"Soccer Ball\";}i:3;a:4:{s:5:\"count\";i:2;s:2:\"id\";s:1:\"4\";s:5:\"price\";s:5:\"34.95\";s:4:\"name\";s:12:\"Corner Flags\";}i:4;a:4:{s:5:\"count\";i:2;s:2:\"id\";s:1:\"5\";s:5:\"price\";s:5:\"16.00\";s:4:\"name\";s:12:\"Thinking Cap\";}i:5;a:4:{s:5:\"count\";i:2;s:2:\"id\";s:1:\"6\";s:5:\"price\";s:5:\"29.95\";s:4:\"name\";s:14:\"Unsteady Chair\";}}', '2016-12-21 18:19:25'),
(12, 'yy', 'yy', 'yy', 'yy', 'yy', 'yy', 1, 'a:8:{i:0;a:4:{s:5:\"count\";i:1;s:2:\"id\";s:2:\"10\";s:5:\"price\";s:6:\"150.00\";s:4:\"name\";s:8:\"last one\";}i:1;a:4:{s:5:\"count\";i:1;s:2:\"id\";s:1:\"8\";s:5:\"price\";s:4:\"0.00\";s:4:\"name\";s:7:\"another\";}i:2;a:4:{s:5:\"count\";i:1;s:2:\"id\";s:1:\"7\";s:5:\"price\";s:4:\"5.00\";s:4:\"name\";s:3:\"asd\";}i:3;a:4:{s:5:\"count\";i:1;s:2:\"id\";s:1:\"9\";s:5:\"price\";s:5:\"33.00\";s:4:\"name\";s:2:\"33\";}i:4;a:4:{s:5:\"count\";i:1;s:2:\"id\";s:1:\"5\";s:5:\"price\";s:5:\"16.00\";s:4:\"name\";s:12:\"Thinking Cap\";}i:5;a:4:{s:5:\"count\";i:1;s:2:\"id\";s:1:\"4\";s:5:\"price\";s:5:\"34.95\";s:4:\"name\";s:12:\"Corner Flags\";}i:6;a:4:{s:5:\"count\";i:1;s:2:\"id\";s:1:\"6\";s:5:\"price\";s:5:\"29.95\";s:4:\"name\";s:14:\"Unsteady Chair\";}i:7;a:4:{s:5:\"count\";i:1;s:2:\"id\";s:1:\"1\";s:5:\"price\";s:6:\"275.00\";s:4:\"name\";s:5:\"Kayak\";}}', '2016-12-21 19:00:13'),
(13, 'idb', 'Taltola, Mirpur, Mirpur', 'Dhaka', 'Dhaka', '1216', 'Bangladesh', 0, 'a:3:{i:0;a:4:{s:5:\"count\";i:1;s:2:\"id\";s:1:\"5\";s:5:\"price\";s:5:\"16.00\";s:4:\"name\";s:12:\"Thinking Cap\";}i:1;a:4:{s:5:\"count\";i:1;s:2:\"id\";s:1:\"1\";s:5:\"price\";s:6:\"275.00\";s:4:\"name\";s:5:\"Kayak\";}i:2;a:4:{s:5:\"count\";i:2;s:2:\"id\";s:1:\"4\";s:5:\"price\";s:5:\"34.95\";s:4:\"name\";s:12:\"Corner Flags\";}}', '2018-11-23 12:45:57'),
(14, 'qq', 'Mirpur, Dhaka', 'Dhaka', 'Dhaka', '1216', 'Bangladesh', 1, 'a:3:{i:0;a:4:{s:5:\"count\";i:1;s:2:\"id\";s:1:\"1\";s:5:\"price\";s:6:\"275.00\";s:4:\"name\";s:5:\"Kayak\";}i:1;a:4:{s:5:\"count\";i:1;s:2:\"id\";s:1:\"2\";s:5:\"price\";s:5:\"48.95\";s:4:\"name\";s:10:\"Lifejacket\";}i:2;a:4:{s:5:\"count\";i:1;s:2:\"id\";s:1:\"3\";s:5:\"price\";s:5:\"19.50\";s:4:\"name\";s:11:\"Soccer Ball\";}}', '2018-11-23 16:09:39'),
(15, 'idb37', 'Taltola2', 'Dhaka', 'Dhaka', '1219', 'Bangladesh', 1, 'a:2:{i:0;a:4:{s:5:\"count\";i:1;s:2:\"id\";s:2:\"11\";s:5:\"price\";s:6:\"500.00\";s:4:\"name\";s:12:\"GoPro Camera\";}i:1;a:4:{s:5:\"count\";i:1;s:2:\"id\";s:2:\"12\";s:5:\"price\";s:6:\"300.00\";s:4:\"name\";s:7:\"Kayak 2\";}}', '2018-11-25 18:58:22'),
(16, 'jjj2', 'taltola', 'Dhaka', 'Dhaka', '1230', 'bangldesh', 1, 'a:2:{i:0;a:4:{s:5:\"count\";i:1;s:2:\"id\";s:2:\"12\";s:5:\"price\";s:6:\"300.00\";s:4:\"name\";s:7:\"Kayak 2\";}i:1;a:4:{s:5:\"count\";i:1;s:2:\"id\";s:2:\"11\";s:5:\"price\";s:6:\"500.00\";s:4:\"name\";s:12:\"GoPro Camera\";}}', '2018-11-25 19:07:32'),
(17, 'idb', 'Taltola2', 'Dhaka', 'Dhaka', '1219', 'Bangladesh', 1, 'a:4:{i:0;a:4:{s:5:\"count\";i:1;s:2:\"id\";s:1:\"7\";s:5:\"price\";s:4:\"5.00\";s:4:\"name\";s:3:\"asd\";}i:1;a:4:{s:5:\"count\";i:1;s:2:\"id\";s:1:\"6\";s:5:\"price\";s:5:\"29.95\";s:4:\"name\";s:14:\"Unsteady Chair\";}i:2;a:4:{s:5:\"count\";i:1;s:2:\"id\";s:2:\"10\";s:5:\"price\";s:6:\"150.00\";s:4:\"name\";s:8:\"last one\";}i:3;a:4:{s:5:\"count\";i:1;s:2:\"id\";s:1:\"9\";s:5:\"price\";s:5:\"33.00\";s:4:\"name\";s:2:\"33\";}}', '2018-11-26 10:59:31'),
(18, 'mamun11', 'Taltola, Mirpur, Mirpur', 'Dhaka', 'Dhaka', '1216', 'Bangladesh', 1, 'a:1:{i:0;a:4:{s:5:\"count\";i:4;s:2:\"id\";s:2:\"12\";s:5:\"price\";s:6:\"300.00\";s:4:\"name\";s:7:\"Kayak 2\";}}', '2018-11-26 11:00:19'),
(19, 'gfgdfhg', 'Taltola', 'Dhaka', 'bnm', 'Dhaka', 'Bangladesh', 1, 'a:2:{i:0;a:4:{s:5:\"count\";i:1;s:2:\"id\";s:2:\"12\";s:5:\"price\";s:6:\"300.00\";s:4:\"name\";s:7:\"Kayak 2\";}i:1;a:4:{s:5:\"count\";i:1;s:2:\"id\";s:2:\"11\";s:5:\"price\";s:6:\"500.00\";s:4:\"name\";s:12:\"GoPro Camera\";}}', '2018-11-26 12:07:24'),
(20, 'Sheikh Sadia Afrin', 'Taltola', 'Dhaka', 'bnm', 'Dhaka', 'Bangladesh', 1, 'a:3:{i:0;a:4:{s:5:\"count\";i:1;s:2:\"id\";s:2:\"12\";s:5:\"price\";s:6:\"300.00\";s:4:\"name\";s:7:\"Kayak 2\";}i:1;a:4:{s:5:\"count\";i:1;s:2:\"id\";s:2:\"10\";s:5:\"price\";s:6:\"150.00\";s:4:\"name\";s:8:\"last one\";}i:2;a:4:{s:5:\"count\";i:1;s:2:\"id\";s:1:\"9\";s:5:\"price\";s:5:\"33.00\";s:4:\"name\";s:2:\"33\";}}', '2018-11-26 12:08:49'),
(21, 'Fahim', 'Badda', 'Dhaka', 'Dhaka', '1212', 'Banagladesh', 1, 'a:2:{i:0;a:4:{s:5:\"count\";i:1;s:2:\"id\";s:2:\"12\";s:5:\"price\";s:6:\"300.00\";s:4:\"name\";s:7:\"Kayak 2\";}i:1;a:4:{s:5:\"count\";i:1;s:2:\"id\";s:2:\"11\";s:5:\"price\";s:6:\"500.00\";s:4:\"name\";s:12:\"GoPro Camera\";}}', '2018-11-26 12:19:21');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(5) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` varchar(500) NOT NULL,
  `category` varchar(30) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `createdate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `category`, `price`, `createdate`) VALUES
(1, 'Kayak', 'A boat for one person', 'Watersports', '275.00', '0000-00-00 00:00:00'),
(2, 'Lifejacket', 'Protective and fashionable', 'Watersports', '48.95', '0000-00-00 00:00:00'),
(3, 'Soccer Ball', 'FIFA-approved size and weight', 'Soccer', '19.50', '2016-12-17 15:24:40'),
(4, 'Corner Flags', 'Give your playing field a professional touch', 'Soccer', '34.95', '2016-12-17 15:24:40'),
(5, 'Thinking Cap', 'Improve your brain efficiency by 75%', 'Chess', '16.00', '2016-12-17 15:26:17'),
(6, 'Unsteady Chair', 'Secretly give your opponent a disadvantage', 'Chess', '29.95', '2016-12-17 15:26:17'),
(7, 'asd', 'asd', 'Chess', '5.00', '2016-12-21 18:56:20'),
(8, 'another', 'ee', 'Watersports', '0.00', '2016-12-21 18:58:11'),
(9, '33', '33', 'Soccer', '33.00', '2016-12-21 18:58:24'),
(10, 'last one', 'sadf', 'Soccer', '150.00', '2016-12-21 18:59:22'),
(11, 'GoPro Camera', 'Hero 5', 'Watersports', '500.00', '2018-11-23 12:47:34'),
(12, 'Kayak 2', 'A boat for one person 2', 'Watersports', '300.00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `todo`
--

CREATE TABLE `todo` (
  `id` int(11) NOT NULL,
  `action` varchar(80) NOT NULL,
  `done` tinyint(1) NOT NULL,
  `createdate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `todo`
--

INSERT INTO `todo` (`id`, `action`, `done`, `createdate`) VALUES
(56, 'Learn ng', 1, '2016-12-15 18:57:25'),
(58, 'go home', 1, '2016-12-15 19:03:27'),
(59, 'study html', 0, '2016-12-15 19:03:45'),
(60, 'asdsad', 1, '2016-12-15 19:13:32'),
(61, 'aaa', 0, '2016-12-15 19:15:44'),
(62, 'ewrtetrt', 0, '2016-12-15 19:16:17'),
(63, '44444', 1, '2016-12-15 19:16:26');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `useremail` varchar(60) NOT NULL,
  `password` varchar(60) NOT NULL,
  `username` varchar(80) NOT NULL,
  `dob` date NOT NULL,
  `gender` enum('m','f','c') NOT NULL,
  `createdate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `useremail`, `password`, `username`, `dob`, `gender`, `createdate`) VALUES
(1, 'admin@idbbisew.com', '$2y$10$zzFxb9smetnmkqOjKf96iO3bgfpyIv34OOpeLly31YbQjmk7X9qmG', 'Administrator', '1990-01-01', 'm', '2016-11-15 18:51:27');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `todo`
--
ALTER TABLE `todo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `useremail` (`useremail`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `todo`
--
ALTER TABLE `todo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
